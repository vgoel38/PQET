                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14908.86..14908.86 rows=1 width=32) (actual time=11366.522..11366.522 rows=1 loops=1)
   Buffers: shared hit=3 read=216681
   ->  Hash Join  (cost=2958.44..14906.62 rows=28943 width=17) (actual time=3128.827..11366.277 rows=669 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=3 read=216681
         ->  Hash Join  (cost=2958.39..14904.18 rows=28943 width=21) (actual time=3056.147..11293.373 rows=669 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared read=216680
               ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=705579 width=8) (actual time=37.453..8332.754 rows=706674 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 14129046
                     Buffers: shared read=161892
               ->  Hash  (cost=2954.00..2954.00 rows=29863 width=25) (actual time=2873.725..2873.725 rows=767 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 301kB
                     Buffers: shared read=54788
                     ->  Hash Join  (cost=1757.02..2954.00 rows=29863 width=25) (actual time=2518.697..2873.198 rows=767 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=54788
                           ->  Hash Join  (cost=0.03..1193.50 rows=43168 width=4) (actual time=560.975..914.684 rows=798 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared read=18790
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=172674 width=8) (actual time=2.431..879.180 rows=295628 loops=1)
                                       Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                       Rows Removed by Filter: 2313501
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.138..0.138 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.125..0.128 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
                           ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1952.601..1952.601 rows=1749032 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=6.513..1278.961 rows=1749032 loops=1)
                                       Filter: (production_year > 1990)
                                       Rows Removed by Filter: 779280
                                       Buffers: shared read=35998
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=72.655..72.655 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=72.504..72.558 rows=113 loops=1)
                     Buffers: shared read=1
 Planning Time: 1662.081 ms
 Execution Time: 11368.231 ms
(46 rows)


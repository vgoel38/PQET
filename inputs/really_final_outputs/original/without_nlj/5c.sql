                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14908.86..14908.86 rows=1 width=32) (actual time=11225.916..11225.916 rows=1 loops=1)
   Buffers: shared hit=10 read=216674
   ->  Hash Join  (cost=2958.44..14906.62 rows=28943 width=17) (actual time=2935.757..11225.681 rows=669 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=10 read=216674
         ->  Hash Join  (cost=2958.39..14904.18 rows=28943 width=21) (actual time=2935.696..11225.386 rows=669 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=6 read=216674
               ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=705579 width=8) (actual time=26.454..8381.321 rows=706674 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 14129046
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=2954.00..2954.00 rows=29863 width=25) (actual time=2756.609..2756.609 rows=767 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 301kB
                     Buffers: shared hit=4 read=54784
                     ->  Hash Join  (cost=1757.02..2954.00 rows=29863 width=25) (actual time=2405.256..2756.083 rows=767 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=4 read=54784
                           ->  Hash Join  (cost=0.03..1193.50 rows=43168 width=4) (actual time=559.485..909.525 rows=798 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=3 read=18787
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=172674 width=8) (actual time=0.021..874.140 rows=295628 loops=1)
                                       Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                       Rows Removed by Filter: 2313501
                                       Buffers: shared hit=2 read=18787
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.010 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
                           ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1840.890..1840.890 rows=1749032 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=8.293..1160.595 rows=1749032 loops=1)
                                       Filter: (production_year > 1990)
                                       Rows Removed by Filter: 779280
                                       Buffers: shared hit=1 read=35997
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=0.045..0.045 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared hit=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=0.006..0.021 rows=113 loops=1)
                     Buffers: shared hit=1
 Planning Time: 1962.379 ms
 Execution Time: 11227.987 ms
(46 rows)


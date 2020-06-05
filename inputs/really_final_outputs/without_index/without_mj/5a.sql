                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13553.61..13553.61 rows=1 width=32) (actual time=2801.459..2801.459 rows=1 loops=1)
   Buffers: shared hit=3 read=54826
   ->  Hash Join  (cost=2824.51..13553.60 rows=89 width=17) (actual time=2801.445..2801.445 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=3 read=54826
         ->  Hash Join  (cost=2824.45..13553.54 rows=89 width=21) (actual time=2752.914..2752.914 rows=0 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared read=54825
               ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=153585 width=8) (actual time=28.384..28.384 rows=1 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                     Rows Removed by Filter: 5686
                     Buffers: shared read=37
               ->  Hash  (cost=2824.39..2824.39 rows=419 width=25) (actual time=2724.500..2724.500 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared read=54788
                     ->  Hash Join  (cost=1648.97..2824.39 rows=419 width=25) (actual time=2724.498..2724.498 rows=0 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared read=54788
                           ->  Hash Join  (cost=1648.94..2824.18 rows=1677 width=29) (actual time=1740.929..2723.729 rows=3929 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared read=54787
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=4187 width=8) (actual time=17.964..989.846 rows=24025 loops=1)
                                       Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                                       Rows Removed by Filter: 2585104
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1717.422..1717.422 rows=1012920 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=8.289..1243.245 rows=1012920 loops=1)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1515392
                                             Buffers: shared read=35998
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.164..0.164 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.148..0.151 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=48.516..48.516 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=48.389..48.440 rows=113 loops=1)
                     Buffers: shared read=1
 Planning Time: 1653.165 ms
 Execution Time: 2802.474 ms
(46 rows)


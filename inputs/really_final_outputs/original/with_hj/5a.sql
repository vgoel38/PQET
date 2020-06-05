                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13553.71..13553.71 rows=1 width=32) (actual time=2771.766..2771.767 rows=1 loops=1)
   Buffers: shared hit=3 read=54826
   ->  Hash Join  (cost=2824.51..13553.70 rows=89 width=17) (actual time=2771.753..2771.753 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=3 read=54826
         ->  Hash Join  (cost=2824.45..13553.64 rows=89 width=21) (actual time=2761.385..2761.385 rows=0 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared read=54825
               ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=154416 width=8) (actual time=26.828..26.828 rows=1 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                     Rows Removed by Filter: 5686
                     Buffers: shared read=37
               ->  Hash  (cost=2824.39..2824.39 rows=419 width=25) (actual time=2734.521..2734.521 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared read=54788
                     ->  Hash Join  (cost=1648.97..2824.39 rows=419 width=25) (actual time=2734.519..2734.519 rows=0 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared read=54788
                           ->  Hash Join  (cost=1648.94..2824.18 rows=1677 width=29) (actual time=1741.286..2733.758 rows=3929 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared read=54787
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=4187 width=8) (actual time=19.317..1000.770 rows=24025 loops=1)
                                       Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                                       Rows Removed by Filter: 2585104
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1716.397..1716.398 rows=1012920 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=8.398..1241.681 rows=1012920 loops=1)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1515392
                                             Buffers: shared read=35998
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.174..0.174 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.154..0.156 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=10.344..10.345 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=10.197..10.249 rows=113 loops=1)
                     Buffers: shared read=1
 Planning Time: 1649.352 ms
 Execution Time: 2773.136 ms
(46 rows)


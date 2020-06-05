                                                                       QUERY PLAN                                                                       
--------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3088.46..3088.46 rows=1 width=32) (actual time=2779.065..2779.065 rows=1 loops=1)
   Buffers: shared hit=3 read=54789
   ->  Hash Join  (cost=1649.04..3088.45 rows=89 width=17) (actual time=2779.056..2779.056 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=3 read=54789
         ->  Nested Loop  (cost=1648.98..3088.39 rows=89 width=21) (actual time=2755.696..2755.696 rows=0 loops=1)
               Buffers: shared read=54788
               ->  Hash Join  (cost=1648.97..2824.39 rows=419 width=25) (actual time=2755.694..2755.694 rows=0 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=54788
                     ->  Hash Join  (cost=1648.94..2824.18 rows=1677 width=29) (actual time=1762.503..2749.681 rows=3929 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=54787
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=4187 width=8) (actual time=39.253..1015.237 rows=24025 loops=1)
                                 Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                                 Rows Removed by Filter: 2585104
                                 Buffers: shared read=18789
                           ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1716.555..1716.556 rows=1012920 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=9.000..1256.360 rows=1012920 loops=1)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1515392
                                       Buffers: shared read=35998
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=5.402..5.403 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=5.387..5.391 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.63 rows=1 width=8) (never executed)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=23.339..23.339 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=23.200..23.252 rows=113 loops=1)
                     Buffers: shared read=1
 Planning Time: 1744.631 ms
 Execution Time: 2780.408 ms
(41 rows)


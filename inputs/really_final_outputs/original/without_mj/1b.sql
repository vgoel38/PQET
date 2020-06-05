                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1761.60..1761.60 rows=1 width=68) (actual time=1142.238..1142.238 rows=1 loops=1)
   Buffers: shared hit=23 read=8505
   ->  Nested Loop  (cost=0.07..1761.35 rows=1069 width=45) (actual time=1142.145..1142.207 rows=3 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=23 read=8505
         ->  Nested Loop  (cost=0.06..1349.70 rows=3775 width=32) (actual time=835.320..993.186 rows=5 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=13 read=8495
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.144..0.148 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.06..1347.45 rows=15098 width=36) (actual time=678.768..992.974 rows=100 loops=1)
                     Buffers: shared hit=13 read=8494
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=631.221..631.289 rows=10 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=3 read=8454
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=11.836..337.932 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.481..7.481 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.466..7.468 rows=1 loops=1)
                                       Filter: ((info)::text = 'bottom 10 rank'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=32.251..36.155 rows=10 loops=10)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=10 read=40
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=29.796..29.796 rows=1 loops=5)
               Index Cond: (id = mi_idx.movie_id)
               Filter: ((production_year >= 2005) AND (production_year <= 2010))
               Rows Removed by Filter: 0
               Buffers: shared hit=10 read=10
 Planning Time: 2066.589 ms
 Execution Time: 1166.027 ms
(39 rows)


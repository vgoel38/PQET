                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1761.54..1761.54 rows=1 width=68) (actual time=1142.221..1142.222 rows=1 loops=1)
   Buffers: shared hit=23 read=8505
   ->  Nested Loop  (cost=0.07..1761.06 rows=2063 width=45) (actual time=1083.095..1142.181 rows=4 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=23 read=8505
         ->  Nested Loop  (cost=0.06..1349.70 rows=3775 width=32) (actual time=826.996..984.819 rows=5 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=13 read=8495
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.128..0.133 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.06..1347.45 rows=15098 width=36) (actual time=670.458..984.621 rows=100 loops=1)
                     Buffers: shared hit=13 read=8494
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=626.574..626.640 rows=10 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=3 read=8454
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=11.838..337.625 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.484..7.485 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.467..7.470 rows=1 loops=1)
                                       Filter: ((info)::text = 'bottom 10 rank'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=31.880..35.785 rows=10 loops=10)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=10 read=40
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=31.464..31.464 rows=1 loops=5)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 0
               Buffers: shared hit=10 read=10
 Planning Time: 2130.039 ms
 Execution Time: 1202.564 ms
(39 rows)


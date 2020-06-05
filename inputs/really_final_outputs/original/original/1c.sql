                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1352.23..1352.23 rows=1 width=68) (actual time=9009.614..9009.615 rows=1 loops=1)
   Buffers: shared hit=599 read=9283
   ->  Nested Loop  (cost=0.07..1352.23 rows=4 width=45) (actual time=2996.461..9009.571 rows=3 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=599 read=9283
         ->  Nested Loop  (cost=0.06..1349.40 rows=26 width=32) (actual time=852.584..8639.427 rows=23 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Buffers: shared hit=527 read=9263
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.033..0.038 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
               ->  Nested Loop  (cost=0.06..1349.35 rows=103 width=36) (actual time=852.543..8639.349 rows=23 loops=1)
                     Buffers: shared hit=526 read=9263
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=641.768..643.438 rows=250 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=6 read=8451
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.009..360.658 rows=1380035 loops=1)
                                 Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.062..0.063 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.048..0.050 rows=1 loops=1)
                                       Filter: ((info)::text = 'top 250 rank'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=31.978..31.978 rows=0 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=520 read=812
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=16.088..16.088 rows=0 loops=23)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1
               Buffers: shared hit=72 read=20
 Planning Time: 2305.637 ms
 Execution Time: 9010.176 ms
(38 rows)


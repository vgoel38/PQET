                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1761.54..1761.54 rows=1 width=68) (actual time=1245.672..1245.673 rows=1 loops=1)
   Buffers: shared hit=29 read=8499
   ->  Nested Loop  (cost=0.07..1761.06 rows=2063 width=45) (actual time=1194.873..1245.629 rows=4 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=29 read=8499
         ->  Nested Loop  (cost=0.06..1349.70 rows=3775 width=32) (actual time=880.433..1098.792 rows=5 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=18 read=8490
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.017 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
               ->  Nested Loop  (cost=0.06..1347.45 rows=15098 width=36) (actual time=657.365..1098.714 rows=100 loops=1)
                     Buffers: shared hit=17 read=8490
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=622.276..622.352 rows=10 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=6 read=8451
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.003..344.867 rows=1380035 loops=1)
                                 Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                       Filter: ((info)::text = 'bottom 10 rank'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=44.324..47.622 rows=10 loops=10)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=11 read=39
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=29.359..29.359 rows=1 loops=5)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 0
               Buffers: shared hit=11 read=9
 Planning Time: 2194.879 ms
 Execution Time: 1246.043 ms
(39 rows)


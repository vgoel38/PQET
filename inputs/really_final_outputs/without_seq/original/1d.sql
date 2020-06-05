                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13444.14..13444.14 rows=1 width=68) (actual time=2543.805..2543.805 rows=1 loops=1)
   Buffers: shared hit=13598 read=12270
   ->  Nested Loop  (cost=6.17..13443.66 rows=2063 width=45) (actual time=1200.517..2543.742 rows=4 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=13598 read=12270
         ->  Nested Loop  (cost=6.16..13032.30 rows=3775 width=32) (actual time=1153.855..2396.886 rows=5 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=13587 read=12261
               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.031..0.033 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'production companies'::text)
                     Buffers: shared hit=1 read=1
               ->  Nested Loop  (cost=6.15..13023.96 rows=15098 width=36) (actual time=812.448..2396.785 rows=100 loops=1)
                     Buffers: shared hit=13586 read=12260
                     ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=772.909..2014.180 rows=10 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=13575 read=12221
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.023..1616.722 rows=1380035 loops=1)
                                 Buffers: shared hit=13571 read=12220
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.048..0.049 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.034..0.035 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=36.116..38.245 rows=10 loops=10)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=11 read=39
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=29.362..29.362 rows=1 loops=5)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 0
               Buffers: shared hit=11 read=9
 Planning Time: 2240.846 ms
 Execution Time: 2568.269 ms
(37 rows)


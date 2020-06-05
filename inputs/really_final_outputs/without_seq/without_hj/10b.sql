                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33138.32..33138.32 rows=1 width=64) (actual time=263964.766..263964.766 rows=1 loops=1)
   Buffers: shared hit=302209 read=41258
   ->  Nested Loop  (cost=0.08..33138.30 rows=100 width=33) (actual time=263964.730..263964.730 rows=0 loops=1)
         Buffers: shared hit=302209 read=41258
         ->  Nested Loop  (cost=0.07..33137.88 rows=100 width=37) (actual time=263964.729..263964.729 rows=0 loops=1)
               Buffers: shared hit=302209 read=41258
               ->  Nested Loop  (cost=0.06..33114.20 rows=205 width=25) (actual time=263964.728..263964.728 rows=0 loops=1)
                     Join Filter: (ci.role_id = rt.id)
                     Rows Removed by Join Filter: 2614
                     Buffers: shared hit=302209 read=41258
                     ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                           Index Cond: ((role)::text = 'actor'::text)
                           Buffers: shared hit=1 read=1
                     ->  Nested Loop  (cost=0.06..33107.71 rows=2464 width=29) (actual time=1031.139..263962.391 rows=2614 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=302208 read=41257
                           ->  Nested Loop  (cost=0.04..32085.48 rows=2341 width=29) (actual time=418.781..115706.887 rows=1259 loops=1)
                                 Buffers: shared hit=265875 read=16176
                                 ->  Nested Loop  (cost=0.03..31118.77 rows=15111 width=8) (actual time=226.865..36241.140 rows=8790 loops=1)
                                       Buffers: shared hit=238016 read=8835
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=199.167..6089.655 rows=1361 loops=1)
                                             Filter: ((country_code)::text = '[ru]'::text)
                                             Rows Removed by Filter: 233636
                                             Buffers: shared hit=231720 read=3834
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..19.49 rows=11 width=12) (actual time=3.967..22.137 rows=6 loops=1361)
                                             Index Cond: (company_id = cn.id)
                                             Buffers: shared hit=6296 read=5001
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=9.035..9.035 rows=0 loops=8790)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=27859 read=7341
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=67.842..117.747 rows=2 loops=1259)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 44
                                 Buffers: shared hit=36333 read=25081
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.12 rows=1 width=20) (never executed)
                     Index Cond: (id = ci.person_role_id)
         ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (never executed)
               Index Cond: (id = mc.company_type_id)
               Heap Fetches: 0
 Planning Time: 2985.615 ms
 Execution Time: 263965.617 ms
(44 rows)


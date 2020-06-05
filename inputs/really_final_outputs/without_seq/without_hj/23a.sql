                                                                                                        QUERY PLAN                                                                                                        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=27517.32..27517.32 rows=1 width=64) (actual time=82280.961..82280.962 rows=1 loops=1)
   Buffers: shared hit=1654205 read=55072
   ->  Nested Loop  (cost=0.11..27517.32 rows=1 width=27) (actual time=69168.926..82280.280 rows=618 loops=1)
         Buffers: shared hit=1654205 read=55072
         ->  Nested Loop  (cost=0.10..27517.30 rows=1 width=31) (actual time=69148.645..82187.447 rows=618 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=1652444 read=54974
               ->  Nested Loop  (cost=0.08..27517.24 rows=1 width=43) (actual time=69109.372..82123.352 rows=6 loops=1)
                     Buffers: shared hit=1652419 read=54967
                     ->  Nested Loop  (cost=0.08..27517.18 rows=1 width=47) (actual time=69109.324..82123.252 rows=6 loops=1)
                           Buffers: shared hit=1652407 read=54967
                           ->  Nested Loop  (cost=0.07..27517.18 rows=1 width=51) (actual time=69089.498..82103.376 rows=6 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=1652401 read=54966
                                 ->  Nested Loop  (cost=0.06..26939.04 rows=2267 width=43) (actual time=13753.011..44027.049 rows=5763 loops=1)
                                       Join Filter: (t.kind_id = kt.id)
                                       Rows Removed by Join Filter: 1543
                                       Buffers: shared hit=1508502 read=35256
                                       ->  Nested Loop  (cost=0.06..26929.35 rows=15866 width=37) (actual time=67.772..44013.222 rows=7306 loops=1)
                                             Buffers: shared hit=1508501 read=35255
                                             ->  Nested Loop  (cost=0.04..25071.73 rows=29037 width=12) (actual time=62.384..19035.542 rows=105289 loops=1)
                                                   Buffers: shared hit=1100029 read=22090
                                                   ->  Nested Loop  (cost=0.03..23638.97 rows=80426 width=16) (actual time=6.963..4893.627 rows=227682 loops=1)
                                                         Buffers: shared hit=192204 read=18297
                                                         ->  Nested Loop  (cost=0.02..3319.95 rows=33772 width=4) (actual time=6.824..450.699 rows=24592 loops=1)
                                                               Join Filter: (cc.status_id = cct.id)
                                                               Rows Removed by Join Filter: 110494
                                                               Buffers: shared hit=86927 read=1098
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=0.027..300.178 rows=135086 loops=1)
                                                                     Buffers: shared hit=86926 read=1097
                                                               ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=135086)
                                                                     Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.044..0.046 rows=1 loops=1)
                                                                           Index Cond: ((kind)::text = 'complete+verified'::text)
                                                                           Buffers: shared hit=1 read=1
                                                         ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.60 rows=2 width=12) (actual time=0.115..0.174 rows=9 loops=24592)
                                                               Index Cond: (movie_id = cc.movie_id)
                                                               Buffers: shared hit=105277 read=17199
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.061..0.061 rows=0 loops=227682)
                                                         Index Cond: (id = mc.company_id)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=907825 read=3793
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.236..0.236 rows=0 loops=105289)
                                                   Index Cond: (id = mc.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=408472 read=13165
                                       ->  Materialize  (cost=0.00..6.13 rows=1 width=14) (actual time=0.000..0.000 rows=1 loops=7306)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=14) (actual time=0.049..0.050 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'movie'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=6.592..6.606 rows=0 loops=5763)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                       Rows Removed by Filter: 245
                                       Buffers: shared hit=143899 read=19710
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=3.308..3.308 rows=1 loops=6)
                                 Index Cond: (id = mc.company_type_id)
                                 Heap Fetches: 0
                                 Buffers: shared hit=6 read=1
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=6)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'release dates'::text)
                           Buffers: shared hit=12
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=10.474..10.606 rows=103 loops=6)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=25 read=7
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.149..0.149 rows=1 loops=618)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=1761 read=98
 Planning Time: 8848.299 ms
 Execution Time: 82339.211 ms
(75 rows)


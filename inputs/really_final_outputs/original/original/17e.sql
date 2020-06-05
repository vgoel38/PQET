                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=167.65..167.65 rows=1 width=32) (actual time=1560815.684..1560815.685 rows=1 loops=1)
   Buffers: shared hit=15013241 read=314352
   ->  Nested Loop  (cost=0.10..167.59 rows=781 width=15) (actual time=332.200..1558664.079 rows=2832555 loops=1)
         Buffers: shared hit=15013241 read=314352
         ->  Nested Loop  (cost=0.08..152.35 rows=781 width=4) (actual time=316.996..1209145.119 rows=2832555 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=3741609 read=245891
               ->  Nested Loop  (cost=0.07..134.44 rows=68 width=12) (actual time=113.257..141977.716 rows=68316 loops=1)
                     Buffers: shared hit=902354 read=60401
                     ->  Nested Loop  (cost=0.05..131.06 rows=190 width=16) (actual time=87.349..112270.730 rows=148552 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=311353 read=56594
                           ->  Nested Loop  (cost=0.04..129.98 rows=34 width=8) (actual time=81.600..102532.343 rows=41840 loops=1)
                                 Buffers: shared hit=141602 read=37527
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=56.486..6406.866 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.133..46.134 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=10.309..6322.132 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=4) (actual time=2.294..2.294 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Buffers: shared hit=141599 read=25868
                           ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.184..0.226 rows=4 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=169751 read=19067
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.198..0.198 rows=0 loops=148552)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=591001 read=3807
               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=1.652..15.585 rows=41 loops=68316)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=2839255 read=185490
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.122..0.122 rows=1 loops=2832555)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=11271632 read=68461
 Planning Time: 5724.601 ms
 Execution Time: 1560816.097 ms
(41 rows)


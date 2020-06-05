                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=177.36..177.36 rows=1 width=64) (actual time=1682491.565..1682491.566 rows=1 loops=1)
   Buffers: shared hit=29135748 read=320928
   ->  Nested Loop  (cost=0.11..177.26 rows=676 width=33) (actual time=364.806..1679217.206 rows=3710592 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=29135748 read=320928
         ->  Nested Loop  (cost=0.10..163.97 rows=676 width=41) (actual time=350.682..1313544.087 rows=3710592 loops=1)
               Buffers: shared hit=14342744 read=259385
               ->  Nested Loop  (cost=0.08..152.35 rows=781 width=21) (actual time=307.921..1206375.329 rows=2832555 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=3741609 read=245891
                     ->  Nested Loop  (cost=0.07..134.44 rows=68 width=29) (actual time=104.206..143280.402 rows=68316 loops=1)
                           Buffers: shared hit=902354 read=60401
                           ->  Nested Loop  (cost=0.05..131.06 rows=190 width=33) (actual time=78.300..113251.060 rows=148552 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=311353 read=56594
                                 ->  Nested Loop  (cost=0.04..129.98 rows=34 width=25) (actual time=72.539..103559.207 rows=41840 loops=1)
                                       Buffers: shared hit=141602 read=37527
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=47.414..6823.511 rows=41840 loops=1)
                                             Buffers: shared hit=3 read=11659
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=35.894..35.897 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=11.489..6744.528 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=3 read=11655
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.309..2.309 rows=1 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Buffers: shared hit=141599 read=25868
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.184..0.225 rows=4 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=169751 read=19067
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.200..0.200 rows=0 loops=148552)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=591001 read=3807
                     ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=1.656..15.524 rows=41 loops=68316)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=2839255 read=185490
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.032..0.036 rows=1 loops=2832555)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=10601135 read=13494
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=0.097..0.097 rows=1 loops=3710592)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=14793004 read=61543
 Planning Time: 7266.809 ms
 Execution Time: 1682492.026 ms
(47 rows)


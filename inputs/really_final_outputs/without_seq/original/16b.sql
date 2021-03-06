                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=174.46..174.46 rows=1 width=64) (actual time=1317339.085..1317339.085 rows=1 loops=1)
   Buffers: shared hit=25815034 read=274020
   ->  Nested Loop  (cost=0.11..174.36 rows=686 width=33) (actual time=366.745..1314072.964 rows=3710592 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=25815034 read=274020
         ->  Nested Loop  (cost=0.10..164.09 rows=686 width=41) (actual time=327.941..1214976.282 rows=3710592 loops=1)
               Buffers: shared hit=14342744 read=259385
               ->  Nested Loop  (cost=0.08..152.35 rows=789 width=21) (actual time=293.522..1120418.794 rows=2832555 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=3741609 read=245891
                     ->  Nested Loop  (cost=0.07..134.44 rows=68 width=29) (actual time=89.789..135289.200 rows=68316 loops=1)
                           Buffers: shared hit=902354 read=60401
                           ->  Nested Loop  (cost=0.05..131.06 rows=190 width=33) (actual time=63.882..105781.962 rows=148552 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=311353 read=56594
                                 ->  Nested Loop  (cost=0.04..129.99 rows=34 width=25) (actual time=58.114..97040.044 rows=41840 loops=1)
                                       Buffers: shared hit=141602 read=37527
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=40.329..6735.624 rows=41840 loops=1)
                                             Buffers: shared hit=3 read=11659
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.652..22.653 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.633..6671.771 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=3 read=11655
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.155..2.155 rows=1 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Buffers: shared hit=141599 read=25868
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.163..0.202 rows=4 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=169751 read=19067
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.197..0.197 rows=0 loops=148552)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=591001 read=3807
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=1.276..14.384 rows=41 loops=68316)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=2839255 read=185490
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.028..0.031 rows=1 loops=2832555)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=10601135 read=13494
         ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=3710592)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=11472290 read=14635
 Planning Time: 7554.161 ms
 Execution Time: 1317358.261 ms
(48 rows)


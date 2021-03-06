                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=142.26..142.26 rows=1 width=64) (actual time=369597.714..369597.714 rows=1 loops=1)
   Buffers: shared hit=1786957 read=86421
   ->  Nested Loop  (cost=0.11..142.23 rows=188 width=33) (actual time=283.412..369274.032 rows=249455 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=1786957 read=86421
         ->  Nested Loop  (cost=0.10..139.42 rows=188 width=41) (actual time=248.962..315178.512 rows=249455 loops=1)
               Buffers: shared hit=1016104 read=78813
               ->  Nested Loop  (cost=0.08..136.20 rows=216 width=21) (actual time=220.050..254393.337 rows=169273 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=359360 read=68979
                     ->  Nested Loop  (cost=0.07..131.20 rows=19 width=29) (actual time=191.296..62854.336 rows=6766 loops=1)
                           Buffers: shared hit=196095 read=40136
                           ->  Nested Loop  (cost=0.05..130.27 rows=52 width=33) (actual time=82.342..54012.819 rows=8661 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=162228 read=39348
                                 ->  Nested Loop  (cost=0.04..129.99 rows=9 width=25) (actual time=58.132..47225.178 rows=5385 loops=1)
                                       Buffers: shared hit=141704 read=37530
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=40.335..2830.043 rows=41840 loops=1)
                                             Buffers: shared hit=3 read=11659
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=13.162..13.164 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=27.141..2791.166 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=3 read=11655
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.059..1.059 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: ((episode_nr >= 5) AND (episode_nr < 100))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141701 read=25871
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.988..1.254 rows=2 loops=5385)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=20524 read=1818
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=1.018..1.018 rows=1 loops=8661)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=33867 read=788
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.842..28.273 rows=25 loops=6766)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=163265 read=28843
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.317..0.356 rows=1 loops=169273)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=656744 read=9834
         ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=0.215..0.215 rows=1 loops=249455)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=770853 read=7608
 Planning Time: 7580.145 ms
 Execution Time: 369615.920 ms
(50 rows)


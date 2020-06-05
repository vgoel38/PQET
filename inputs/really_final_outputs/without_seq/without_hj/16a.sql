                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=131.24..131.24 rows=1 width=64) (actual time=24860.791..24860.792 rows=1 loops=1)
   Buffers: shared hit=144498 read=38262
   ->  Nested Loop  (cost=0.11..131.23 rows=19 width=33) (actual time=1034.210..24859.581 rows=385 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=144498 read=38262
         ->  Nested Loop  (cost=0.10..130.95 rows=19 width=41) (actual time=996.546..23980.065 rows=385 loops=1)
               Buffers: shared hit=143420 read=38138
               ->  Nested Loop  (cost=0.08..130.64 rows=21 width=21) (actual time=964.402..20891.720 rows=323 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=142468 read=37853
                     ->  Nested Loop  (cost=0.07..130.11 rows=2 width=29) (actual time=935.064..18996.728 rows=25 loops=1)
                           Buffers: shared hit=142310 read=37635
                           ->  Nested Loop  (cost=0.05..130.02 rows=5 width=33) (actual time=836.039..18295.875 rows=54 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=142136 read=37593
                                 ->  Nested Loop  (cost=0.04..129.99 rows=1 width=25) (actual time=725.360..17576.472 rows=146 loops=1)
                                       Buffers: shared hit=141716 read=37530
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=49.484..2367.989 rows=41840 loops=1)
                                             Buffers: shared hit=3 read=11659
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.647..30.649 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.799..2318.310 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=3 read=11655
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.362..0.362 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141713 read=25871
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=4.326..4.924 rows=0 loops=146)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=420 read=63
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=12.972..12.972 rows=0 loops=54)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=174 read=42
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=17.116..75.755 rows=13 loops=25)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=158 read=218
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=8.905..9.555 rows=1 loops=323)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=952 read=285
         ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=2.280..2.280 rows=1 loops=385)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=1078 read=124
 Planning Time: 7513.648 ms
 Execution Time: 24861.326 ms
(50 rows)


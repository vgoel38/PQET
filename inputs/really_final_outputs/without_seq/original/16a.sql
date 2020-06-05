                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=131.24..131.24 rows=1 width=64) (actual time=25426.089..25426.089 rows=1 loops=1)
   Buffers: shared hit=144498 read=38262
   ->  Nested Loop  (cost=0.11..131.23 rows=19 width=33) (actual time=1033.380..25424.893 rows=385 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=144498 read=38262
         ->  Nested Loop  (cost=0.10..130.95 rows=19 width=41) (actual time=995.715..24545.433 rows=385 loops=1)
               Buffers: shared hit=143420 read=38138
               ->  Nested Loop  (cost=0.08..130.64 rows=21 width=21) (actual time=963.572..21474.265 rows=323 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=142468 read=37853
                     ->  Nested Loop  (cost=0.07..130.11 rows=2 width=29) (actual time=934.232..19570.297 rows=25 loops=1)
                           Buffers: shared hit=142310 read=37635
                           ->  Nested Loop  (cost=0.05..130.02 rows=5 width=33) (actual time=826.881..18869.505 rows=54 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=142136 read=37593
                                 ->  Nested Loop  (cost=0.04..129.99 rows=1 width=25) (actual time=720.611..18161.245 rows=146 loops=1)
                                       Buffers: shared hit=141716 read=37530
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=56.993..2537.423 rows=41840 loops=1)
                                             Buffers: shared hit=3 read=11659
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.667..22.669 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=34.282..2495.417 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=3 read=11655
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.372..0.372 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141713 read=25871
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=4.250..4.848 rows=0 loops=146)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=420 read=63
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=12.971..12.971 rows=0 loops=54)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=174 read=42
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=17.121..76.109 rows=13 loops=25)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=158 read=218
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=8.852..9.501 rows=1 loops=323)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=952 read=285
         ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=2.279..2.279 rows=1 loops=385)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=1078 read=124
 Planning Time: 7339.984 ms
 Execution Time: 25451.143 ms
(50 rows)


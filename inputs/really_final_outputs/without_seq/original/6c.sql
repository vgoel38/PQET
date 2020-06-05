                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=130.27..130.27 rows=1 width=96) (actual time=1181.284..1181.284 rows=1 loops=1)
   Buffers: shared hit=109 read=133
   ->  Nested Loop  (cost=0.07..130.27 rows=1 width=48) (actual time=800.435..1181.246 rows=2 loops=1)
         Buffers: shared hit=109 read=133
         ->  Nested Loop  (cost=0.06..130.25 rows=1 width=37) (actual time=185.421..871.019 rows=33 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=30 read=80
               ->  Nested Loop  (cost=0.04..129.99 rows=1 width=41) (actual time=146.685..637.230 rows=2 loops=1)
                     Buffers: shared hit=25 read=50
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=20) (actual time=56.753..132.126 rows=14 loops=1)
                           Buffers: shared hit=1 read=18
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=20.021..20.022 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.698..112.019 rows=14 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=1 read=14
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=36.071..36.071 rows=0 loops=14)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2014)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=24 read=32
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=35.419..116.815 rows=16 loops=2)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=5 read=30
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=9.394..9.394 rows=0 loops=33)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=79 read=53
 Planning Time: 2749.711 ms
 Execution Time: 1213.560 ms
(32 rows)


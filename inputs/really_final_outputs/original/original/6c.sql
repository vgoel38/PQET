                                                                                    QUERY PLAN                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=130.27..130.27 rows=1 width=96) (actual time=1252.487..1252.487 rows=1 loops=1)
   Buffers: shared hit=109 read=133
   ->  Nested Loop  (cost=0.07..130.27 rows=1 width=48) (actual time=871.642..1252.449 rows=2 loops=1)
         Buffers: shared hit=109 read=133
         ->  Nested Loop  (cost=0.06..130.25 rows=1 width=37) (actual time=239.975..942.219 rows=33 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=30 read=80
               ->  Nested Loop  (cost=0.04..129.99 rows=1 width=41) (actual time=184.566..675.077 rows=2 loops=1)
                     Buffers: shared hit=25 read=50
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=20) (actual time=94.609..170.063 rows=14 loops=1)
                           Buffers: shared hit=1 read=18
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=57.910..57.912 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.665..112.076 rows=14 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=1 read=14
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=36.065..36.065 rows=0 loops=14)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2014)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=24 read=32
               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=52.094..133.498 rows=16 loops=2)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=5 read=30
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=9.394..9.394 rows=0 loops=33)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=79 read=53
 Planning Time: 2535.186 ms
 Execution Time: 1253.096 ms
(32 rows)


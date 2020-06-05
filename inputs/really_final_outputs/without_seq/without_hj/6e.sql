                                                                                  QUERY PLAN                                                                                   
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=147.18..147.18 rows=1 width=96) (actual time=17238.708..17238.709 rows=1 loops=1)
   Buffers: shared hit=3185 read=3003
   ->  Nested Loop  (cost=0.07..147.18 rows=1 width=48) (actual time=3991.893..17238.605 rows=6 loops=1)
         Buffers: shared hit=3185 read=3003
         ->  Nested Loop  (cost=0.06..134.99 rows=622 width=37) (actual time=142.285..7360.595 rows=1224 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=225 read=1062
               ->  Nested Loop  (cost=0.04..129.99 rows=19 width=41) (actual time=104.966..656.664 rows=11 loops=1)
                     Buffers: shared hit=25 read=50
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=20) (actual time=65.034..128.099 rows=14 loops=1)
                           Buffers: shared hit=1 read=18
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=28.327..28.328 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.673..99.693 rows=14 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=1 read=14
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=37.746..37.746 rows=1 loops=14)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=24 read=32
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=25.604..608.999 rows=111 loops=11)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=200 read=1012
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=8.063..8.063 rows=0 loops=1224)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2960 read=1941
 Planning Time: 2613.304 ms
 Execution Time: 17257.412 ms
(32 rows)

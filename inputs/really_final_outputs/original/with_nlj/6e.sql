 Aggregate  (cost=147.18..147.18 rows=1 width=96) (actual time=17288.716..17288.716 rows=1 loops=1)
   Buffers: shared hit=3177 read=3011
   ->  Nested Loop  (cost=0.07..147.18 rows=1 width=48) (actual time=4116.892..17288.608 rows=6 loops=1)
         Buffers: shared hit=3177 read=3011
         ->  Nested Loop  (cost=0.06..134.99 rows=622 width=37) (actual time=183.965..7445.276 rows=1224 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=219 read=1068
               ->  Nested Loop  (cost=0.04..129.99 rows=19 width=41) (actual time=129.967..681.789 rows=11 loops=1)
                     Buffers: shared hit=22 read=53
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=20) (actual time=81.706..144.876 rows=14 loops=1)
                           Buffers: shared read=19
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=37.493..37.495 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=44.187..107.307 rows=14 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared read=15
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=38.341..38.341 rows=1 loops=14)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=22 read=34
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=27.879..614.397 rows=111 loops=11)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=197 read=1015
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=8.035..8.035 rows=0 loops=1224)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2958 read=1943
 Planning Time: 1525.563 ms
 Execution Time: 17297.904 ms

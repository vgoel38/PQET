 Aggregate  (cost=1037.05..1037.05 rows=1 width=96) (actual time=58283.045..58283.045 rows=1 loops=1)
   Buffers: shared hit=134972 read=33059
   ->  Nested Loop  (cost=0.07..1037.05 rows=1 width=48) (actual time=12169.003..58282.932 rows=12 loops=1)
         Buffers: shared hit=134972 read=33059
         ->  Nested Loop  (cost=0.06..1037.01 rows=2 width=37) (actual time=6020.981..55999.322 rows=383 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=133805 read=32692
               ->  Nested Loop  (cost=0.04..1036.75 rows=1 width=41) (actual time=5960.696..54010.552 rows=36 loops=1)
                     Buffers: shared hit=133550 read=32462
                     ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=20) (actual time=61.941..14169.439 rows=35548 loops=1)
                           Buffers: shared hit=8734 read=14911
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=22.173..248.025 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=34.453..1736.137 rows=4444 loops=8)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=8719 read=14891
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.119..1.119 rows=0 loops=35548)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2014)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=124816 read=17551
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=21.768..55.212 rows=11 loops=36)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=255 read=230
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=5.958..5.958 rows=0 loops=383)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=1167 read=367
 Planning Time: 1495.374 ms
 Execution Time: 58310.343 ms

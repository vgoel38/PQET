                                                                                      QUERY PLAN                                                                                      
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1172.45..1172.45 rows=1 width=96) (actual time=1472668.172..1472668.173 rows=1 loops=1)
   Buffers: shared hit=3856805 read=266080
   ->  Nested Loop  (cost=0.07..1172.45 rows=1 width=48) (actual time=207253.776..1472667.475 rows=88 loops=1)
         Buffers: shared hit=3856805 read=266080
         ->  Nested Loop  (cost=0.06..1075.71 rows=4938 width=37) (actual time=117.209..1148924.877 rows=785477 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=777230 read=198126
               ->  Nested Loop  (cost=0.04..1036.73 rows=148 width=41) (actual time=69.758..107872.586 rows=14165 loops=1)
                     Buffers: shared hit=133520 read=32456
                     ->  Nested Loop  (cost=0.03..1025.21 rows=270 width=20) (actual time=43.863..23133.083 rows=35548 loops=1)
                           Buffers: shared hit=8737 read=14908
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=34.298..257.455 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
                           ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=19.771..2853.526 rows=4444 loops=8)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=8722 read=14888
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.380..2.380 rows=0 loops=35548)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=124783 read=17548
               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=9.607..73.413 rows=55 loops=14165)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=643710 read=165670
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.410..0.410 rows=0 loops=785477)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=3079575 read=67954
 Planning Time: 2408.665 ms
 Execution Time: 1472668.535 ms
(32 rows)


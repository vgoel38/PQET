                                                                                    QUERY PLAN                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1173.16..1173.16 rows=1 width=96) (actual time=1402382.862..1402382.863 rows=1 loops=1)
   Buffers: shared hit=3856805 read=266080
   ->  Nested Loop  (cost=0.07..1173.16 rows=1 width=48) (actual time=202398.745..1402382.182 rows=88 loops=1)
         Buffers: shared hit=3856805 read=266080
         ->  Nested Loop  (cost=0.06..1075.72 rows=4974 width=37) (actual time=95.202..1080157.390 rows=785477 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=777230 read=198126
               ->  Nested Loop  (cost=0.04..1036.75 rows=148 width=41) (actual time=64.438..105265.090 rows=14165 loops=1)
                     Buffers: shared hit=133520 read=32456
                     ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=20) (actual time=46.501..22497.557 rows=35548 loops=1)
                           Buffers: shared hit=8737 read=14908
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=19.435..245.115 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=29.742..2775.567 rows=4444 loops=8)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=8722 read=14888
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.325..2.325 rows=0 loops=35548)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=124783 read=17548
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=6.704..68.741 rows=55 loops=14165)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=643710 read=165670
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.408..0.408 rows=0 loops=785477)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=3079575 read=67954
 Planning Time: 2797.345 ms
 Execution Time: 1402383.218 ms
(32 rows)


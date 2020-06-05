                                                                                      QUERY PLAN                                                                                      
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1173.21..1173.21 rows=1 width=96) (actual time=1471312.772..1471312.772 rows=1 loops=1)
   Buffers: shared hit=3853944 read=266080
   ->  Nested Loop  (cost=0.07..1172.06 rows=4938 width=48) (actual time=145.349..1469646.764 rows=785477 loops=1)
         Buffers: shared hit=3853944 read=266080
         ->  Nested Loop  (cost=0.06..1075.71 rows=4938 width=37) (actual time=128.358..1147356.195 rows=785477 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=777230 read=198126
               ->  Nested Loop  (cost=0.04..1036.73 rows=148 width=41) (actual time=80.947..106887.387 rows=14165 loops=1)
                     Buffers: shared hit=133520 read=32456
                     ->  Nested Loop  (cost=0.03..1025.21 rows=270 width=20) (actual time=55.023..23037.016 rows=35548 loops=1)
                           Buffers: shared hit=8737 read=14908
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=45.448..272.260 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
                           ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=19.764..2839.562 rows=4444 loops=8)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=8722 read=14888
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.355..2.355 rows=0 loops=35548)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=124783 read=17548
               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=9.580..73.370 rows=55 loops=14165)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=643710 read=165670
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.407..0.407 rows=1 loops=785477)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=3076714 read=67954
 Planning Time: 2564.185 ms
 Execution Time: 1471313.130 ms
(30 rows)


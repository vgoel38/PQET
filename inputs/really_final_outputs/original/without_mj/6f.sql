                                                                                    QUERY PLAN                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1173.94..1173.94 rows=1 width=96) (actual time=1427156.485..1427156.485 rows=1 loops=1)
   Buffers: shared hit=3853927 read=266097
   ->  Nested Loop  (cost=0.07..1172.78 rows=4974 width=48) (actual time=170.481..1425489.899 rows=785477 loops=1)
         Buffers: shared hit=3853927 read=266097
         ->  Nested Loop  (cost=0.06..1075.72 rows=4974 width=37) (actual time=153.500..1103024.543 rows=785477 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=777217 read=198139
               ->  Nested Loop  (cost=0.04..1036.75 rows=148 width=41) (actual time=114.401..109499.706 rows=14165 loops=1)
                     Buffers: shared hit=133515 read=32461
                     ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=20) (actual time=68.680..23200.523 rows=35548 loops=1)
                           Buffers: shared hit=8734 read=14911
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=28.917..297.406 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=31.327..2856.987 rows=4444 loops=8)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=8719 read=14891
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.424..2.424 rows=0 loops=35548)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=124781 read=17550
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=6.762..70.058 rows=55 loops=14165)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=643702 read=165678
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.408..0.408 rows=1 loops=785477)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=3076710 read=67958
 Planning Time: 1480.669 ms
 Execution Time: 1427156.937 ms
(30 rows)


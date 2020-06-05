 Aggregate  (cost=1173.16..1173.16 rows=1 width=96) (actual time=1408292.520..1408292.521 rows=1 loops=1)
   Buffers: shared hit=3856788 read=266097
   ->  Nested Loop  (cost=0.07..1173.16 rows=1 width=48) (actual time=202442.008..1408291.805 rows=88 loops=1)
         Buffers: shared hit=3856788 read=266097
         ->  Nested Loop  (cost=0.06..1075.72 rows=4974 width=37) (actual time=180.098..1085845.933 rows=785477 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=777217 read=198139
               ->  Nested Loop  (cost=0.04..1036.75 rows=148 width=41) (actual time=107.667..105765.089 rows=14165 loops=1)
                     Buffers: shared hit=133515 read=32461
                     ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=20) (actual time=61.967..22278.876 rows=35548 loops=1)
                           Buffers: shared hit=8734 read=14911
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=22.203..242.135 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=30.277..2748.968 rows=4444 loops=8)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=8719 read=14891
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.345..2.345 rows=0 loops=35548)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=124781 read=17550
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=6.713..69.108 rows=55 loops=14165)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=643702 read=165678
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.408..0.408 rows=0 loops=785477)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=3079571 read=67958
 Planning Time: 1614.893 ms
 Execution Time: 1408324.238 ms

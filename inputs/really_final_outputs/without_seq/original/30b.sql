                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=901.63..901.63 rows=1 width=128) (actual time=52070.552..52070.553 rows=1 loops=1)
   Buffers: shared hit=589409 read=35361
   ->  Nested Loop  (cost=0.13..901.63 rows=1 width=80) (actual time=6807.104..52070.401 rows=28 loops=1)
         Buffers: shared hit=589409 read=35361
         ->  Nested Loop  (cost=0.12..901.63 rows=1 width=84) (actual time=6807.077..52070.216 rows=28 loops=1)
               Buffers: shared hit=589353 read=35361
               ->  Nested Loop  (cost=0.12..901.62 rows=1 width=88) (actual time=6807.040..52069.989 rows=28 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=589297 read=35361
                     ->  Nested Loop  (cost=0.11..901.47 rows=1 width=62) (actual time=6638.800..51747.158 rows=20 loops=1)
                           Buffers: shared hit=588547 read=35279
                           ->  Nested Loop  (cost=0.09..901.28 rows=1 width=51) (actual time=6623.141..51677.869 rows=20 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=588479 read=35267
                                 ->  Nested Loop  (cost=0.07..901.02 rows=1 width=43) (actual time=6276.496..50503.079 rows=8 loops=1)
                                       Join Filter: (mi_idx.movie_id = t.id)
                                       Buffers: shared hit=587878 read=35072
                                       ->  Nested Loop  (cost=0.06..900.97 rows=1 width=22) (actual time=269.423..27231.611 rows=16283 loops=1)
                                             Buffers: shared hit=530132 read=27613
                                             ->  Nested Loop  (cost=0.06..900.72 rows=54 width=26) (actual time=269.374..26980.750 rows=49655 loops=1)
                                                   Buffers: shared hit=430822 read=27613
                                                   ->  Nested Loop  (cost=0.04..900.32 rows=18 width=12) (actual time=226.687..13953.051 rows=16336 loops=1)
                                                         Buffers: shared hit=369808 read=22153
                                                         ->  Nested Loop  (cost=0.04..900.01 rows=71 width=16) (actual time=181.149..13799.217 rows=36010 loops=1)
                                                               Buffers: shared hit=297788 read=22153
                                                               ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=125.981..12394.895 rows=76714 loops=1)
                                                                     Buffers: shared hit=32400 read=21098
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=102.746..248.059 rows=7 loops=1)
                                                                           Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                           Buffers: shared hit=14 read=17
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.670..1729.591 rows=10959 loops=7)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=32386 read=21081
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.014..0.017 rows=0 loops=76714)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=265388 read=1055
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=36010)
                                                               Index Cond: (id = cc.status_id)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=72020
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.784..0.794 rows=3 loops=16336)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=61014 read=5460
                                             ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=49655)
                                                   Index Cond: (id = mi_idx.info_type_id)
                                                   Filter: ((info)::text = 'votes'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=99310
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.428..1.428 rows=0 loops=16283)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=57746 read=7459
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=64.358..146.840 rows=2 loops=8)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 95
                                       Buffers: shared hit=601 read=195
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=3.460..3.460 rows=1 loops=20)
                                 Index Cond: (id = ci.person_id)
                                 Filter: ((gender)::text = 'm'::text)
                                 Buffers: shared hit=68 read=12
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=16.135..16.137 rows=1 loops=20)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                           Rows Removed by Filter: 451
                           Buffers: shared hit=750 read=82
               ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=28)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'genres'::text)
                     Buffers: shared hit=56
         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=28)
               Index Cond: (id = cc.subject_id)
               Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
               Buffers: shared hit=56
 Planning Time: 15525.741 ms
 Execution Time: 52071.286 ms
(78 rows)


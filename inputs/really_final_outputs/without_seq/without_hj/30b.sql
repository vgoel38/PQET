                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=901.73..901.73 rows=1 width=128) (actual time=30852.259..30852.259 rows=1 loops=1)
   Buffers: shared hit=429446 read=29936
   ->  Nested Loop  (cost=0.13..901.73 rows=1 width=80) (actual time=4846.430..30852.096 rows=28 loops=1)
         Buffers: shared hit=429446 read=29936
         ->  Nested Loop  (cost=0.12..901.73 rows=1 width=84) (actual time=4846.385..30851.883 rows=28 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=429390 read=29936
               ->  Nested Loop  (cost=0.11..901.57 rows=1 width=58) (actual time=4668.662..30516.831 rows=20 loops=1)
                     Buffers: shared hit=428640 read=29854
                     ->  Nested Loop  (cost=0.11..901.57 rows=1 width=62) (actual time=4668.601..30516.460 rows=60 loops=1)
                           Join Filter: (t.id = mi_idx.movie_id)
                           Buffers: shared hit=428520 read=29854
                           ->  Nested Loop  (cost=0.09..901.55 rows=1 width=48) (actual time=4628.242..30429.826 rows=20 loops=1)
                                 Buffers: shared hit=428446 read=29848
                                 ->  Nested Loop  (cost=0.09..901.54 rows=1 width=52) (actual time=4628.196..30429.598 rows=20 loops=1)
                                       Buffers: shared hit=428406 read=29848
                                       ->  Nested Loop  (cost=0.07..901.36 rows=1 width=41) (actual time=4612.521..30327.005 rows=20 loops=1)
                                             Join Filter: (t.id = ci.movie_id)
                                             Buffers: shared hit=428338 read=29836
                                             ->  Nested Loop  (cost=0.06..901.09 rows=1 width=33) (actual time=4220.162..29089.320 rows=8 loops=1)
                                                   Buffers: shared hit=427737 read=29641
                                                   ->  Nested Loop  (cost=0.04..900.32 rows=18 width=12) (actual time=140.528..11034.928 rows=16336 loops=1)
                                                         Buffers: shared hit=369808 read=22153
                                                         ->  Nested Loop  (cost=0.04..900.01 rows=71 width=16) (actual time=112.043..10877.417 rows=36010 loops=1)
                                                               Buffers: shared hit=297788 read=22153
                                                               ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=56.875..9531.064 rows=76714 loops=1)
                                                                     Buffers: shared hit=32400 read=21098
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=33.620..219.663 rows=7 loops=1)
                                                                           Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                           Buffers: shared hit=14 read=17
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.664..1324.787 rows=10959 loops=7)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=32386 read=21081
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.012..0.016 rows=0 loops=76714)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=265388 read=1055
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=36010)
                                                               Index Cond: (id = cc.status_id)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=72020
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.104..1.104 rows=0 loops=16336)
                                                         Index Cond: (id = mk.movie_id)
                                                         Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=57929 read=7488
                                             ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=70.084..154.701 rows=2 loops=8)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                                   Rows Removed by Filter: 95
                                                   Buffers: shared hit=601 read=195
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=5.125..5.125 rows=1 loops=20)
                                             Index Cond: (id = ci.person_id)
                                             Filter: ((gender)::text = 'm'::text)
                                             Buffers: shared hit=68 read=12
                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=20)
                                       Index Cond: (id = cc.subject_id)
                                       Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                       Buffers: shared hit=40
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=4.324..4.326 rows=3 loops=20)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=74 read=6
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=60)
                           Index Cond: (id = mi_idx.info_type_id)
                           Filter: ((info)::text = 'votes'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=120
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=16.747..16.749 rows=1 loops=20)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                     Rows Removed by Filter: 451
                     Buffers: shared hit=750 read=82
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=28)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'genres'::text)
               Buffers: shared hit=56
 Planning Time: 15664.705 ms
 Execution Time: 30924.684 ms
(78 rows)


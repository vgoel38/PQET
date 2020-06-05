                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=902.38..902.38 rows=1 width=128) (actual time=782496.546..782496.546 rows=1 loops=1)
   Buffers: shared hit=1385732 read=180250
   ->  Nested Loop  (cost=0.13..902.38 rows=1 width=80) (actual time=5626.068..782492.162 rows=757 loops=1)
         Buffers: shared hit=1385732 read=180250
         ->  Nested Loop  (cost=0.12..902.38 rows=1 width=84) (actual time=5626.015..782476.344 rows=2281 loops=1)
               Join Filter: (t.id = mi_idx.movie_id)
               Buffers: shared hit=1381170 read=180250
               ->  Nested Loop  (cost=0.11..902.36 rows=1 width=94) (actual time=5582.496..777485.970 rows=757 loops=1)
                     Buffers: shared hit=1378427 read=179947
                     ->  Nested Loop  (cost=0.10..902.17 rows=1 width=83) (actual time=5562.362..774145.887 rows=1021 loops=1)
                           Join Filter: (mi.movie_id = t.id)
                           Buffers: shared hit=1374841 read=179449
                           ->  Nested Loop  (cost=0.08..902.13 rows=1 width=62) (actual time=556.883..745776.407 rows=6488 loops=1)
                                 Join Filter: (mi.movie_id = ci.movie_id)
                                 Buffers: shared hit=1351029 read=177304
                                 ->  Nested Loop  (cost=0.07..901.86 rows=1 width=54) (actual time=484.572..230724.006 rows=8247 loops=1)
                                       Buffers: shared hit=774529 read=92138
                                       ->  Nested Loop  (cost=0.06..901.85 rows=2 width=58) (actual time=484.526..230627.536 rows=10295 loops=1)
                                             Buffers: shared hit=753939 read=92138
                                             ->  Nested Loop  (cost=0.05..900.47 rows=9 width=8) (actual time=154.764..17783.168 rows=16336 loops=1)
                                                   Buffers: shared hit=441828 read=22153
                                                   ->  Nested Loop  (cost=0.04..900.32 rows=36 width=12) (actual time=109.262..17609.097 rows=36010 loops=1)
                                                         Buffers: shared hit=369808 read=22153
                                                         ->  Nested Loop  (cost=0.04..900.01 rows=71 width=16) (actual time=109.228..17365.975 rows=36010 loops=1)
                                                               Buffers: shared hit=297788 read=22153
                                                               ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=54.069..15649.816 rows=76714 loops=1)
                                                                     Buffers: shared hit=32400 read=21098
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=30.823..178.172 rows=7 loops=1)
                                                                           Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                           Buffers: shared hit=14 read=17
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.660..2203.282 rows=10959 loops=7)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=32386 read=21081
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.016..0.021 rows=0 loops=76714)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=265388 read=1055
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=36010)
                                                               Index Cond: (id = cc.subject_id)
                                                               Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                               Buffers: shared hit=72020
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=36010)
                                                         Index Cond: (id = cc.status_id)
                                                         Filter: ((kind)::text = 'complete+verified'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=72020
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=12.772..13.027 rows=1 loops=16336)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                   Rows Removed by Filter: 134
                                                   Buffers: shared hit=312111 read=69985
                                       ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=10295)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=20590
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=50.286..62.450 rows=1 loops=8247)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 77
                                       Buffers: shared hit=576500 read=85166
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=4.369..4.369 rows=0 loops=6488)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=23812 read=2145
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=3.267..3.267 rows=1 loops=1021)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=3586 read=498
               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=6.574..6.585 rows=3 loops=757)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=2743 read=303
         ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=2281)
               Index Cond: (id = mi_idx.info_type_id)
               Filter: ((info)::text = 'votes'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=4562
 Planning Time: 16106.134 ms
 Execution Time: 782497.049 ms
(80 rows)


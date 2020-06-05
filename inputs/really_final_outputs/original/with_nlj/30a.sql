 Aggregate  (cost=902.10..902.10 rows=1 width=128) (actual time=783189.962..783189.962 rows=1 loops=1)
   Buffers: shared hit=1216520 read=180274
   ->  Nested Loop  (cost=0.11..902.10 rows=1 width=80) (actual time=5878.700..783185.092 rows=757 loops=1)
         Join Filter: (it2.id = mi_idx.info_type_id)
         Rows Removed by Join Filter: 1524
         Buffers: shared hit=1216520 read=180274
         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=13.433..13.440 rows=1 loops=1)
               Filter: ((info)::text = 'votes'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.11..902.05 rows=1 width=84) (actual time=5865.253..783169.776 rows=2281 loops=1)
               Join Filter: (t.id = mi_idx.movie_id)
               Buffers: shared hit=1216520 read=180273
               ->  Nested Loop  (cost=0.10..902.03 rows=1 width=94) (actual time=5813.407..778178.840 rows=757 loops=1)
                     Buffers: shared hit=1213779 read=179968
                     ->  Nested Loop  (cost=0.08..901.84 rows=1 width=83) (actual time=5743.278..774791.628 rows=1021 loops=1)
                           Join Filter: (mi.movie_id = t.id)
                           Buffers: shared hit=1210195 read=179468
                           ->  Nested Loop  (cost=0.07..901.80 rows=1 width=62) (actual time=671.131..746297.495 rows=6488 loops=1)
                                 Join Filter: (mi.movie_id = ci.movie_id)
                                 Buffers: shared hit=1186385 read=177321
                                 ->  Nested Loop  (cost=0.05..901.53 rows=1 width=54) (actual time=557.118..231286.306 rows=8247 loops=1)
                                       Join Filter: (it1.id = mi.info_type_id)
                                       Rows Removed by Join Filter: 2048
                                       Buffers: shared hit=609888 read=92152
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.056 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.05..901.48 rows=2 width=58) (actual time=557.099..231274.713 rows=10295 loops=1)
                                             Buffers: shared hit=609887 read=92152
                                             ->  Nested Loop  (cost=0.04..900.11 rows=9 width=8) (actual time=226.968..17829.057 rows=16336 loops=1)
                                                   Join Filter: (cct2.id = cc.status_id)
                                                   Rows Removed by Join Filter: 19674
                                                   Buffers: shared hit=297779 read=22164
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.124..0.128 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'completeverified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..900.07 rows=36 width=12) (actual time=175.988..17803.004 rows=36010 loops=1)
                                                         Join Filter: (cct1.id = cc.subject_id)
                                                         Rows Removed by Join Filter: 10679
                                                         Buffers: shared hit=297779 read=22163
                                                         ->  Nested Loop  (cost=0.04..900.01 rows=71 width=16) (actual time=175.954..17727.446 rows=36010 loops=1)
                                                               Buffers: shared hit=297778 read=22163
                                                               ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=73.254..15995.373 rows=76714 loops=1)
                                                                     Buffers: shared hit=32396 read=21102
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=28.271..193.284 rows=7 loops=1)
                                                                           Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                           Buffers: shared hit=14 read=17
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=21.387..2250.326 rows=10959 loops=7)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=32382 read=21085
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.017..0.021 rows=0 loops=76714)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=265382 read=1061
                                                         ->  Materialize  (cost=0.00..0.03 rows=2 width=4) (actual time=0.000..0.000 rows=1 loops=36010)
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.017..0.023 rows=2 loops=1)
                                                                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                     Buffers: shared hit=1
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=12.795..13.064 rows=1 loops=16336)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                   Rows Removed by Filter: 134
                                                   Buffers: shared hit=312108 read=69988
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=50.372..62.444 rows=1 loops=8247)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 77
                                       Buffers: shared hit=576497 read=85169
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=4.389..4.389 rows=0 loops=6488)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=23810 read=2147
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=3.313..3.313 rows=1 loops=1021)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=3584 read=500
               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=6.573..6.586 rows=3 loops=757)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=2741 read=305
 Planning Time: 15061.436 ms
 Execution Time: 783207.480 ms

 Aggregate  (cost=903.27..903.27 rows=1 width=128) (actual time=254417.363..254417.364 rows=1 loops=1)
   Buffers: shared hit=3221390 read=85161
   ->  Nested Loop  (cost=0.12..903.27 rows=1 width=80) (actual time=10698.519..254411.511 rows=2825 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=3221390 read=85161
         ->  Nested Loop  (cost=0.11..903.22 rows=1 width=83) (actual time=10641.513..248617.279 rows=2825 loops=1)
               Buffers: shared hit=3210391 read=84860
               ->  Nested Loop  (cost=0.10..903.04 rows=1 width=72) (actual time=10598.351..243573.018 rows=2825 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 182
                     Buffers: shared hit=3199546 read=84387
                     ->  Nested Loop  (cost=0.10..902.99 rows=1 width=76) (actual time=10598.319..243547.344 rows=3007 loops=1)
                           Join Filter: (mi_idx.movie_id = mi.movie_id)
                           Buffers: shared hit=3196539 read=84387
                           ->  Nested Loop  (cost=0.08..902.83 rows=1 width=26) (actual time=2744.828..219548.022 rows=1471 loops=1)
                                 Join Filter: (mi_idx.movie_id = ci.movie_id)
                                 Buffers: shared hit=3163617 read=80807
                                 ->  Nested Loop  (cost=0.07..902.57 rows=1 width=18) (actual time=2475.583..73462.073 rows=1547 loops=1)
                                       Buffers: shared hit=3002913 read=55539
                                       ->  Nested Loop  (cost=0.05..902.30 rows=15 width=22) (actual time=162.278..52199.641 rows=598256 loops=1)
                                             Join Filter: (mi_idx.movie_id = mc.movie_id)
                                             Buffers: shared hit=609817 read=51697
                                             ->  Nested Loop  (cost=0.04..902.11 rows=6 width=14) (actual time=122.994..31354.528 rows=63701 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 127988
                                                   Buffers: shared hit=318290 read=31134
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=13.347..13.350 rows=1 loops=1)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..901.96 rows=710 width=18) (actual time=109.634..31269.553 rows=191689 loops=1)
                                                         Buffers: shared hit=318290 read=31133
                                                         ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=73.398..17046.736 rows=76714 loops=1)
                                                               Buffers: shared hit=32396 read=21102
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=28.397..226.013 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=21.392..2397.564 rows=10959 loops=7)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=32382 read=21085
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.179..0.183 rows=2 loops=76714)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=285894 read=10031
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.241..0.321 rows=9 loops=63701)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=291527 read=20563
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.035..0.035 rows=0 loops=598256)
                                             Index Cond: (id = mc.company_id)
                                             Filter: (name ~~ 'Lionsgate%'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=2393096 read=3842
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=72.533..94.429 rows=1 loops=1547)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 119
                                       Buffers: shared hit=160704 read=25268
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=15.953..16.311 rows=2 loops=1471)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 172
                                 Buffers: shared hit=32922 read=3580
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.004..0.005 rows=1 loops=3007)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 9
                           Buffers: shared hit=3007
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=1.783..1.783 rows=1 loops=2825)
                     Index Cond: (id = ci.person_id)
                     Buffers: shared hit=10845 read=473
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.048..2.048 rows=1 loops=2825)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=10999 read=301
 Planning Time: 11603.773 ms
 Execution Time: 254444.854 ms

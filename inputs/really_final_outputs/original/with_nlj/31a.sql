 Aggregate  (cost=903.27..903.27 rows=1 width=128) (actual time=251815.965..251815.965 rows=1 loops=1)
   Buffers: shared hit=3208869 read=85001
   ->  Nested Loop  (cost=0.12..903.26 rows=1 width=80) (actual time=11864.880..251812.473 rows=1273 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=3208869 read=85001
         ->  Nested Loop  (cost=0.11..903.22 rows=1 width=83) (actual time=11812.218..247638.431 rows=1273 loops=1)
               Buffers: shared hit=3203989 read=84789
               ->  Nested Loop  (cost=0.10..903.03 rows=1 width=72) (actual time=11733.270..243300.061 rows=1556 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 60
                     Buffers: shared hit=3198155 read=84387
                     ->  Nested Loop  (cost=0.10..902.99 rows=1 width=76) (actual time=11733.239..243285.192 rows=1616 loops=1)
                           Join Filter: (mi_idx.movie_id = mi.movie_id)
                           Buffers: shared hit=3196539 read=84387
                           ->  Nested Loop  (cost=0.08..902.83 rows=1 width=26) (actual time=2753.175..219286.166 rows=1471 loops=1)
                                 Join Filter: (mi_idx.movie_id = ci.movie_id)
                                 Buffers: shared hit=3163617 read=80807
                                 ->  Nested Loop  (cost=0.07..902.57 rows=1 width=18) (actual time=2483.916..72893.606 rows=1547 loops=1)
                                       Buffers: shared hit=3002913 read=55539
                                       ->  Nested Loop  (cost=0.05..902.30 rows=15 width=22) (actual time=162.287..51916.019 rows=598256 loops=1)
                                             Join Filter: (mi_idx.movie_id = mc.movie_id)
                                             Buffers: shared hit=609817 read=51697
                                             ->  Nested Loop  (cost=0.04..902.11 rows=6 width=14) (actual time=122.990..31310.923 rows=63701 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 127988
                                                   Buffers: shared hit=318290 read=31134
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=13.357..13.361 rows=1 loops=1)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..901.96 rows=710 width=18) (actual time=109.620..31226.307 rows=191689 loops=1)
                                                         Buffers: shared hit=318290 read=31133
                                                         ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=73.397..16961.854 rows=76714 loops=1)
                                                               Buffers: shared hit=32396 read=21102
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=28.410..215.309 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=21.393..2386.994 rows=10959 loops=7)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=32382 read=21085
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.180..0.184 rows=2 loops=76714)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=285894 read=10031
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.240..0.317 rows=9 loops=63701)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=291527 read=20563
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.034..0.034 rows=0 loops=598256)
                                             Index Cond: (id = mc.company_id)
                                             Filter: (name ~~ 'Lionsgate%'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=2393096 read=3842
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=72.561..94.627 rows=1 loops=1547)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 119
                                       Buffers: shared hit=160704 read=25268
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=16.209..16.311 rows=1 loops=1471)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                 Rows Removed by Filter: 173
                                 Buffers: shared hit=32922 read=3580
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=1616)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared hit=1616
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.786..2.786 rows=1 loops=1556)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=5834 read=402
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.276..3.276 rows=1 loops=1273)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=4880 read=212
 Planning Time: 11391.668 ms
 Execution Time: 251838.347 ms

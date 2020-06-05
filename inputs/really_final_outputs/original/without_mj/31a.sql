                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=903.27..903.27 rows=1 width=128) (actual time=252073.466..252073.467 rows=1 loops=1)
   Buffers: shared hit=3208869 read=85001
   ->  Nested Loop  (cost=0.12..903.26 rows=1 width=80) (actual time=12132.311..252070.006 rows=1273 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=3208869 read=85001
         ->  Nested Loop  (cost=0.11..903.22 rows=1 width=83) (actual time=12079.546..247937.563 rows=1273 loops=1)
               Buffers: shared hit=3203989 read=84789
               ->  Nested Loop  (cost=0.10..903.03 rows=1 width=72) (actual time=12000.661..243615.817 rows=1556 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 60
                     Buffers: shared hit=3198155 read=84387
                     ->  Nested Loop  (cost=0.10..902.99 rows=1 width=76) (actual time=12000.629..243601.127 rows=1616 loops=1)
                           Join Filter: (mi_idx.movie_id = mi.movie_id)
                           Buffers: shared hit=3196539 read=84387
                           ->  Nested Loop  (cost=0.08..902.83 rows=1 width=26) (actual time=2778.906..219742.842 rows=1471 loops=1)
                                 Join Filter: (mi_idx.movie_id = ci.movie_id)
                                 Buffers: shared hit=3163617 read=80807
                                 ->  Nested Loop  (cost=0.07..902.57 rows=1 width=18) (actual time=2567.982..73015.345 rows=1547 loops=1)
                                       Buffers: shared hit=3002913 read=55539
                                       ->  Nested Loop  (cost=0.05..902.30 rows=15 width=22) (actual time=171.344..52090.327 rows=598256 loops=1)
                                             Join Filter: (mi_idx.movie_id = mc.movie_id)
                                             Buffers: shared hit=609817 read=51697
                                             ->  Nested Loop  (cost=0.04..902.11 rows=6 width=14) (actual time=132.070..31354.402 rows=63701 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it.id)
                                                   Rows Removed by Join Filter: 127988
                                                   Buffers: shared hit=318290 read=31134
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=22.410..22.414 rows=1 loops=1)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..901.96 rows=710 width=18) (actual time=109.627..31262.940 rows=191689 loops=1)
                                                         Buffers: shared hit=318290 read=31133
                                                         ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=73.396..16847.049 rows=76714 loops=1)
                                                               Buffers: shared hit=32396 read=21102
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=28.404..219.966 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=21.393..2370.182 rows=10959 loops=7)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=32382 read=21085
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.183..0.186 rows=2 loops=76714)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=285894 read=10031
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.241..0.319 rows=9 loops=63701)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=291527 read=20563
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.034..0.034 rows=0 loops=598256)
                                             Index Cond: (id = mc.company_id)
                                             Filter: (name ~~ 'Lionsgate%'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=2393096 read=3842
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=72.937..94.844 rows=1 loops=1547)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 119
                                       Buffers: shared hit=160704 read=25268
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=16.108..16.216 rows=1 loops=1471)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                 Rows Removed by Filter: 173
                                 Buffers: shared hit=32922 read=3580
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=1616)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared hit=1616
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.775..2.775 rows=1 loops=1556)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=5834 read=402
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.243..3.243 rows=1 loops=1273)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=4880 read=212
 Planning Time: 13452.626 ms
 Execution Time: 252074.292 ms
(75 rows)


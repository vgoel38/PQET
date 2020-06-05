                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=906.41..906.41 rows=1 width=128) (actual time=254416.105..254416.105 rows=1 loops=1)
   Buffers: shared hit=3607804 read=85131
   ->  Nested Loop  (cost=0.13..906.41 rows=1 width=80) (actual time=10579.667..254410.196 rows=2825 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=3607804 read=85131
         ->  Nested Loop  (cost=0.12..906.36 rows=1 width=83) (actual time=10530.999..248623.767 rows=2825 loops=1)
               Buffers: shared hit=3596804 read=84831
               ->  Nested Loop  (cost=0.11..906.18 rows=1 width=72) (actual time=10496.179..243625.278 rows=2825 loops=1)
                     Buffers: shared hit=3585957 read=84360
                     ->  Nested Loop  (cost=0.10..906.17 rows=1 width=76) (actual time=10496.134..243607.347 rows=3007 loops=1)
                           Join Filter: (mi_idx.movie_id = mi.movie_id)
                           Buffers: shared hit=3579943 read=84360
                           ->  Nested Loop  (cost=0.09..906.02 rows=1 width=26) (actual time=2734.266..219709.809 rows=1471 loops=1)
                                 Join Filter: (mi_idx.movie_id = ci.movie_id)
                                 Buffers: shared hit=3547020 read=80781
                                 ->  Nested Loop  (cost=0.07..905.75 rows=1 width=18) (actual time=2540.006..72696.385 rows=1547 loops=1)
                                       Buffers: shared hit=3386313 read=55516
                                       ->  Nested Loop  (cost=0.06..905.48 rows=15 width=22) (actual time=68.376..51552.392 rows=598256 loops=1)
                                             Join Filter: (mi_idx.movie_id = mc.movie_id)
                                             Buffers: shared hit=993210 read=51681
                                             ->  Nested Loop  (cost=0.04..905.29 rows=6 width=14) (actual time=46.794..30996.185 rows=63701 loops=1)
                                                   Buffers: shared hit=701677 read=31124
                                                   ->  Nested Loop  (cost=0.04..901.96 rows=710 width=18) (actual time=46.749..30292.013 rows=191689 loops=1)
                                                         Buffers: shared hit=318299 read=31124
                                                         ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=46.108..16432.124 rows=76714 loops=1)
                                                               Buffers: shared hit=32400 read=21098
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=22.854..209.684 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.665..2312.307 rows=10959 loops=7)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=32386 read=21081
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.174..0.178 rows=2 loops=76714)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=285899 read=10026
                                                   ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=191689)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=383378
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.235..0.316 rows=9 loops=63701)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=291533 read=20557
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.035..0.035 rows=0 loops=598256)
                                             Index Cond: (id = mc.company_id)
                                             Filter: (name ~~ 'Lionsgate%'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=2393103 read=3835
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=73.328..95.029 rows=1 loops=1547)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 119
                                       Buffers: shared hit=160707 read=25265
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=15.883..16.242 rows=2 loops=1471)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 172
                                 Buffers: shared hit=32923 read=3579
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=3007)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=6014
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=1.767..1.767 rows=1 loops=2825)
                     Index Cond: (id = ci.person_id)
                     Buffers: shared hit=10847 read=471
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.046..2.046 rows=1 loops=2825)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=11000 read=300
 Planning Time: 15177.709 ms
 Execution Time: 254444.642 ms
(71 rows)


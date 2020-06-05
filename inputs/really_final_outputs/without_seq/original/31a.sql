                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=906.40..906.40 rows=1 width=128) (actual time=257139.685..257139.685 rows=1 loops=1)
   Buffers: shared hit=3593892 read=84971
   ->  Nested Loop  (cost=0.13..906.40 rows=1 width=80) (actual time=12080.332..257136.262 rows=1273 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=3593892 read=84971
         ->  Nested Loop  (cost=0.12..906.36 rows=1 width=83) (actual time=12027.669..252954.444 rows=1273 loops=1)
               Buffers: shared hit=3589011 read=84760
               ->  Nested Loop  (cost=0.11..906.17 rows=1 width=72) (actual time=11998.718..248617.053 rows=1556 loops=1)
                     Buffers: shared hit=3583175 read=84360
                     ->  Nested Loop  (cost=0.10..906.17 rows=1 width=76) (actual time=11998.678..248606.625 rows=1616 loops=1)
                           Join Filter: (mi_idx.movie_id = mi.movie_id)
                           Buffers: shared hit=3579943 read=84360
                           ->  Nested Loop  (cost=0.09..906.02 rows=1 width=26) (actual time=2626.971..224273.008 rows=1471 loops=1)
                                 Join Filter: (mi_idx.movie_id = ci.movie_id)
                                 Buffers: shared hit=3547020 read=80781
                                 ->  Nested Loop  (cost=0.07..905.75 rows=1 width=18) (actual time=2432.715..73719.737 rows=1547 loops=1)
                                       Buffers: shared hit=3386313 read=55516
                                       ->  Nested Loop  (cost=0.06..905.48 rows=15 width=22) (actual time=64.555..52188.360 rows=598256 loops=1)
                                             Join Filter: (mi_idx.movie_id = mc.movie_id)
                                             Buffers: shared hit=993210 read=51681
                                             ->  Nested Loop  (cost=0.04..905.29 rows=6 width=14) (actual time=64.356..31404.357 rows=63701 loops=1)
                                                   Buffers: shared hit=701677 read=31124
                                                   ->  Nested Loop  (cost=0.04..901.96 rows=710 width=18) (actual time=64.321..30706.384 rows=191689 loops=1)
                                                         Buffers: shared hit=318299 read=31124
                                                         ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=63.815..16836.378 rows=76714 loops=1)
                                                               Buffers: shared hit=32400 read=21098
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=40.555..235.525 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.667..2366.348 rows=10959 loops=7)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=32386 read=21081
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.174..0.179 rows=2 loops=76714)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=285899 read=10026
                                                   ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=191689)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=383378
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.237..0.320 rows=9 loops=63701)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=291533 read=20557
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.035..0.035 rows=0 loops=598256)
                                             Index Cond: (id = mc.company_id)
                                             Filter: (name ~~ 'Lionsgate%'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=2393103 read=3835
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=75.171..97.317 rows=1 loops=1547)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 119
                                       Buffers: shared hit=160707 read=25265
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=16.437..16.539 rows=1 loops=1471)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                 Rows Removed by Filter: 173
                                 Buffers: shared hit=32923 read=3579
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=1616)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=3232
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.786..2.786 rows=1 loops=1556)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=5836 read=400
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.282..3.282 rows=1 loops=1273)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=4881 read=211
 Planning Time: 15345.936 ms
 Execution Time: 257140.662 ms
(73 rows)


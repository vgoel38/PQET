                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=906.51..906.51 rows=1 width=128) (actual time=643299.536..643299.537 rows=1 loops=1)
   Buffers: shared hit=2235890 read=147601
   ->  Nested Loop  (cost=0.13..906.51 rows=1 width=80) (actual time=315413.198..643299.296 rows=84 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=2235890 read=147601
         ->  Nested Loop  (cost=0.12..906.47 rows=1 width=83) (actual time=93685.376..642175.887 rows=227 loops=1)
               Buffers: shared hit=2235044 read=147539
               ->  Nested Loop  (cost=0.11..906.28 rows=1 width=72) (actual time=93660.843..641087.762 rows=254 loops=1)
                     Buffers: shared hit=2234145 read=147422
                     ->  Nested Loop  (cost=0.10..906.27 rows=1 width=76) (actual time=93660.793..641085.379 rows=281 loops=1)
                           Join Filter: (mi_idx.movie_id = mi.movie_id)
                           Buffers: shared hit=2233583 read=147422
                           ->  Nested Loop  (cost=0.09..906.12 rows=1 width=26) (actual time=41724.307..634685.288 rows=276 loops=1)
                                 Buffers: shared hit=2226405 read=146294
                                 ->  Nested Loop  (cost=0.08..904.54 rows=1 width=30) (actual time=620.669..629820.969 rows=11043 loops=1)
                                       Join Filter: (mi_idx.movie_id = ci.movie_id)
                                       Buffers: shared hit=2182591 read=145936
                                       ->  Nested Loop  (cost=0.06..904.27 rows=1 width=22) (actual time=75.407..60286.667 rows=12701 loops=1)
                                             Buffers: shared hit=505995 read=45228
                                             ->  Nested Loop  (cost=0.05..904.22 rows=12 width=26) (actual time=75.371..60043.713 rows=39324 loops=1)
                                                   Buffers: shared hit=427347 read=45228
                                                   ->  Nested Loop  (cost=0.04..904.13 rows=4 width=12) (actual time=75.132..33355.651 rows=12705 loops=1)
                                                         Buffers: shared hit=377995 read=42262
                                                         ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=60.526..15179.877 rows=76714 loops=1)
                                                               Buffers: shared hit=32400 read=21098
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=37.288..218.208 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.664..2130.835 rows=10959 loops=7)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=32386 read=21081
                                                         ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=8) (actual time=0.226..0.236 rows=0 loops=76714)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (note ~~ '%(Blu-ray)%'::text)
                                                               Rows Removed by Filter: 8
                                                               Buffers: shared hit=345595 read=21164
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=2.080..2.097 rows=3 loops=12705)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=49352 read=2966
                                             ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=39324)
                                                   Index Cond: (id = mi_idx.info_type_id)
                                                   Filter: ((info)::text = 'votes'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=78648
                                       ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=37.307..44.839 rows=1 loops=12701)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                             Rows Removed by Filter: 139
                                             Buffers: shared hit=1676596 read=100708
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..1.49 rows=1 width=4) (actual time=0.438..0.438 rows=0 loops=11043)
                                       Index Cond: (id = mc.company_id)
                                       Filter: (name ~~ 'Lionsgate%'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=43814 read=358
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=22.954..23.185 rows=1 loops=276)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                 Rows Removed by Filter: 284
                                 Buffers: shared hit=7178 read=1128
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=281)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=562
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=4.281..4.281 rows=1 loops=254)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=899 read=117
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=4.946..4.946 rows=0 loops=227)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=846 read=62
 Planning Time: 15324.665 ms
 Execution Time: 643300.088 ms
(76 rows)


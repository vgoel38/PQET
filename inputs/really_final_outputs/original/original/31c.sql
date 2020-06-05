                                                                                                        QUERY PLAN                                                                                                        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=903.26..903.26 rows=1 width=128) (actual time=265883.989..265883.989 rows=1 loops=1)
   Buffers: shared hit=3221420 read=85131
   ->  Nested Loop  (cost=0.12..903.26 rows=1 width=80) (actual time=11641.994..265878.110 rows=2825 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=3221420 read=85131
         ->  Nested Loop  (cost=0.11..903.21 rows=1 width=83) (actual time=11593.322..260058.449 rows=2825 loops=1)
               Buffers: shared hit=3210420 read=84831
               ->  Nested Loop  (cost=0.10..903.02 rows=1 width=72) (actual time=11558.484..255017.642 rows=2825 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 182
                     Buffers: shared hit=3199573 read=84360
                     ->  Nested Loop  (cost=0.10..902.98 rows=1 width=76) (actual time=11558.453..254991.992 rows=3007 loops=1)
                           Join Filter: (mi_idx.movie_id = mi.movie_id)
                           Buffers: shared hit=3196566 read=84360
                           ->  Nested Loop  (cost=0.08..902.82 rows=1 width=26) (actual time=2813.310..228396.796 rows=1471 loops=1)
                                 Join Filter: (mi_idx.movie_id = ci.movie_id)
                                 Buffers: shared hit=3163643 read=80781
                                 ->  Nested Loop  (cost=0.07..902.56 rows=1 width=18) (actual time=2602.388..78126.163 rows=1547 loops=1)
                                       Buffers: shared hit=3002936 read=55516
                                       ->  Nested Loop  (cost=0.05..902.29 rows=15 width=22) (actual time=34.265..56397.549 rows=598256 loops=1)
                                             Join Filter: (mi_idx.movie_id = mc.movie_id)
                                             Buffers: shared hit=609833 read=51681
                                             ->  Nested Loop  (cost=0.04..902.10 rows=6 width=14) (actual time=34.114..32815.583 rows=63701 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 127988
                                                   Buffers: shared hit=318300 read=31124
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.064..0.068 rows=1 loops=1)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Nested Loop  (cost=0.04..901.95 rows=710 width=18) (actual time=34.044..32744.593 rows=191689 loops=1)
                                                         Buffers: shared hit=318299 read=31124
                                                         ->  Nested Loop  (cost=0.03..896.68 rows=236 width=4) (actual time=33.448..18390.650 rows=76714 loops=1)
                                                               Buffers: shared hit=32400 read=21098
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=23.264..193.836 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                               ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=8.985..2594.101 rows=10959 loops=7)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=32386 read=21081
                                                         ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.181..0.185 rows=2 loops=76714)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=285899 read=10026
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.277..0.364 rows=9 loops=63701)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=291533 read=20557
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.036..0.036 rows=0 loops=598256)
                                             Index Cond: (id = mc.company_id)
                                             Filter: (name ~~ 'Lionsgate%'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=2393103 read=3835
                                 ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=74.962..97.134 rows=1 loops=1547)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 119
                                       Buffers: shared hit=160707 read=25265
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=17.706..18.076 rows=2 loops=1471)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 172
                                 Buffers: shared hit=32923 read=3579
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.004..0.005 rows=1 loops=3007)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 9
                           Buffers: shared hit=3007
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=1.782..1.782 rows=1 loops=2825)
                     Index Cond: (id = ci.person_id)
                     Buffers: shared hit=10847 read=471
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.057..2.057 rows=1 loops=2825)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=11000 read=300
 Planning Time: 15151.671 ms
 Execution Time: 265884.569 ms
(73 rows)


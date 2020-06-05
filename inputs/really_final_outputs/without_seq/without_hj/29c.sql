                                                                                                                        QUERY PLAN                                                                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=130.47..130.47 rows=1 width=96) (actual time=29988.558..29988.558 rows=1 loops=1)
   Buffers: shared hit=1506002 read=4434
   ->  Nested Loop  (cost=0.18..130.47 rows=1 width=48) (actual time=12618.341..29979.692 rows=16308 loops=1)
         Join Filter: (ci.person_id = n.id)
         Buffers: shared hit=1506002 read=4434
         ->  Nested Loop  (cost=0.17..130.38 rows=1 width=45) (actual time=1746.549..28957.896 rows=71850 loops=1)
               Buffers: shared hit=1218714 read=4322
               ->  Nested Loop  (cost=0.17..130.38 rows=1 width=49) (actual time=1746.507..28776.594 rows=76995 loops=1)
                     Buffers: shared hit=1064724 read=4322
                     ->  Nested Loop  (cost=0.15..130.20 rows=1 width=37) (actual time=1722.852..27617.678 rows=79235 loops=1)
                           Buffers: shared hit=756867 read=4199
                           ->  Nested Loop  (cost=0.15..130.17 rows=5 width=41) (actual time=1722.759..26932.810 rows=315179 loops=1)
                                 Join Filter: (ci.person_id = pi.person_id)
                                 Buffers: shared hit=126509 read=4199
                                 ->  Nested Loop  (cost=0.14..129.96 rows=1 width=33) (actual time=1688.855..24646.669 rows=4882 loops=1)
                                       Buffers: shared hit=98620 read=3907
                                       ->  Nested Loop  (cost=0.12..129.94 rows=1 width=29) (actual time=1646.169..23482.412 rows=2284 loops=1)
                                             Buffers: shared hit=91827 read=3803
                                             ->  Nested Loop  (cost=0.12..129.93 rows=1 width=33) (actual time=1443.316..23447.113 rows=10335 loops=1)
                                                   Join Filter: (t.id = ci.movie_id)
                                                   Buffers: shared hit=71157 read=3803
                                                   ->  Nested Loop  (cost=0.10..129.67 rows=1 width=41) (actual time=1355.753..11224.101 rows=386 loops=1)
                                                         Buffers: shared hit=8252 read=1626
                                                         ->  Nested Loop  (cost=0.09..129.65 rows=1 width=45) (actual time=1216.078..8728.995 rows=1644 loops=1)
                                                               Join Filter: (t.id = mc.movie_id)
                                                               Buffers: shared hit=1917 read=1361
                                                               ->  Nested Loop  (cost=0.07..129.62 rows=1 width=37) (actual time=1178.126..8026.879 rows=68 loops=1)
                                                                     Buffers: shared hit=1629 read=1295
                                                                     ->  Nested Loop  (cost=0.07..129.61 rows=1 width=41) (actual time=1178.084..8026.064 rows=68 loops=1)
                                                                           Join Filter: (t.id = mi.movie_id)
                                                                           Buffers: shared hit=1493 read=1295
                                                                           ->  Nested Loop  (cost=0.06..129.46 rows=1 width=33) (actual time=1115.222..4876.267 rows=19 loops=1)
                                                                                 Buffers: shared hit=1390 read=790
                                                                                 ->  Nested Loop  (cost=0.05..129.44 rows=4 width=37) (actual time=1040.157..4874.899 rows=61 loops=1)
                                                                                       Buffers: shared hit=1268 read=790
                                                                                       ->  Nested Loop  (cost=0.04..129.01 rows=10 width=16) (actual time=168.523..2840.962 rows=90 loops=1)
                                                                                             Buffers: shared hit=1063 read=635
                                                                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=64.235..1816.871 rows=414 loops=1)
                                                                                                   Buffers: shared hit=1 read=365
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.704..22.706 rows=1 loops=1)
                                                                                                         Index Cond: (keyword = 'computer-animation'::text)
                                                                                                         Buffers: shared read=4
                                                                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=41.521..1793.212 rows=414 loops=1)
                                                                                                         Index Cond: (keyword_id = k.id)
                                                                                                         Buffers: shared hit=1 read=361
                                                                                             ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=2.065..2.468 rows=0 loops=414)
                                                                                                   Index Cond: (movie_id = mk.movie_id)
                                                                                                   Buffers: shared hit=1062 read=270
                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=22.592..22.592 rows=1 loops=90)
                                                                                             Index Cond: (id = mk.movie_id)
                                                                                             Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                             Rows Removed by Filter: 0
                                                                                             Buffers: shared hit=205 read=155
                                                                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.016..0.016 rows=0 loops=61)
                                                                                       Index Cond: (id = cc.status_id)
                                                                                       Filter: ((kind)::text = 'complete+verified'::text)
                                                                                       Rows Removed by Filter: 1
                                                                                       Buffers: shared hit=122
                                                                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=52.525..165.769 rows=4 loops=19)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                                 Rows Removed by Filter: 321
                                                                                 Buffers: shared hit=103 read=505
                                                                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=68)
                                                                           Index Cond: (id = mi.info_type_id)
                                                                           Filter: ((info)::text = 'release dates'::text)
                                                                           Buffers: shared hit=136
                                                               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=8.237..10.301 rows=24 loops=68)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=288 read=66
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=1.516..1.516 rows=0 loops=1644)
                                                               Index Cond: (id = mc.company_id)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=6335 read=265
                                                   ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=4.909..31.650 rows=27 loops=386)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 145
                                                         Buffers: shared hit=62905 read=2177
                                             ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=0 loops=10335)
                                                   Index Cond: (id = ci.role_id)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=20670
                                       ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=0.502..0.508 rows=2 loops=2284)
                                             Index Cond: (person_id = ci.person_id)
                                             Heap Fetches: 0
                                             Buffers: shared hit=6793 read=104
                                 ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=0.418..0.441 rows=65 loops=4882)
                                       Index Cond: (person_id = an.person_id)
                                       Buffers: shared hit=27889 read=292
                           ->  Index Scan using info_type_pkey on info_type it3  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=0 loops=315179)
                                 Index Cond: (id = pi.info_type_id)
                                 Filter: ((info)::text = 'trivia'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=630358
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.014..0.014 rows=1 loops=79235)
                           Index Cond: (id = ci.person_role_id)
                           Buffers: shared hit=307857 read=123
               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=76995)
                     Index Cond: (id = cc.subject_id)
                     Filter: ((kind)::text = 'cast'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=153990
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.09 rows=1 width=19) (actual time=0.014..0.014 rows=0 loops=71850)
               Index Cond: (id = pi.person_id)
               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=287288 read=112
 Planning Time: 21223.284 ms
 Execution Time: 30021.107 ms
(112 rows)


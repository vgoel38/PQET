                                                                                                                    QUERY PLAN                                                                                                                     
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13.68..13.68 rows=1 width=96) (actual time=2696.885..2696.886 rows=1 loops=1)
   Buffers: shared hit=28441 read=527
   ->  Nested Loop  (cost=0.18..13.68 rows=1 width=48) (actual time=1471.485..2696.060 rows=1620 loops=1)
         Buffers: shared hit=28441 read=527
         ->  Nested Loop  (cost=0.18..13.68 rows=1 width=52) (actual time=1469.557..2686.811 rows=4890 loops=1)
               Join Filter: (n.id = pi.person_id)
               Buffers: shared hit=18661 read=527
               ->  Nested Loop  (cost=0.17..13.46 rows=1 width=60) (actual time=1438.569..2650.225 rows=30 loops=1)
                     Buffers: shared hit=18283 read=515
                     ->  Nested Loop  (cost=0.16..13.46 rows=1 width=64) (actual time=1438.499..2650.078 rows=30 loops=1)
                           Buffers: shared hit=18223 read=515
                           ->  Nested Loop  (cost=0.15..13.10 rows=1 width=52) (actual time=1399.618..2611.078 rows=30 loops=1)
                                 Buffers: shared hit=18106 read=512
                                 ->  Nested Loop  (cost=0.15..13.09 rows=1 width=56) (actual time=1399.596..2610.984 rows=30 loops=1)
                                       Buffers: shared hit=18046 read=512
                                       ->  Nested Loop  (cost=0.14..13.09 rows=1 width=60) (actual time=1399.567..2610.883 rows=30 loops=1)
                                             Buffers: shared hit=17986 read=512
                                             ->  Nested Loop  (cost=0.14..13.08 rows=1 width=64) (actual time=1399.521..2610.767 rows=30 loops=1)
                                                   Join Filter: (t.id = cc.movie_id)
                                                   Buffers: shared hit=17926 read=512
                                                   ->  Nested Loop  (cost=0.12..13.07 rows=1 width=76) (actual time=1358.886..2570.000 rows=30 loops=1)
                                                         Join Filter: (ci.person_id = n.id)
                                                         Buffers: shared hit=17808 read=510
                                                         ->  Nested Loop  (cost=0.11..12.81 rows=1 width=57) (actual time=360.947..2255.891 rows=660 loops=1)
                                                               Buffers: shared hit=15210 read=468
                                                               ->  Nested Loop  (cost=0.10..12.80 rows=1 width=61) (actual time=351.979..1915.603 rows=2904 loops=1)
                                                                     Join Filter: (t.id = mc.movie_id)
                                                                     Buffers: shared hit=3628 read=434
                                                                     ->  Nested Loop  (cost=0.08..12.76 rows=1 width=53) (actual time=312.637..1862.358 rows=132 loops=1)
                                                                           Join Filter: (t.id = mi.movie_id)
                                                                           Buffers: shared hit=2972 read=430
                                                                           ->  Nested Loop  (cost=0.07..12.61 rows=1 width=45) (actual time=247.326..1641.254 rows=66 loops=1)
                                                                                 Buffers: shared hit=501 read=393
                                                                                 ->  Nested Loop  (cost=0.06..12.59 rows=1 width=41) (actual time=178.643..1393.392 rows=38 loops=1)
                                                                                       Join Filter: (t.id = ci.movie_id)
                                                                                       Buffers: shared hit=417 read=361
                                                                                       ->  Nested Loop  (cost=0.04..12.32 rows=1 width=25) (actual time=140.619..299.504 rows=1 loops=1)
                                                                                             Buffers: shared hit=415 read=146
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=87.739..113.074 rows=136 loops=1)
                                                                                                   Buffers: shared hit=7 read=10
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=38.202..68.684 rows=3 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=14.713..14.747 rows=45 loops=3)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=7 read=4
                                                                                             ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.369..1.369 rows=0 loops=136)
                                                                                                   Index Cond: (id = mk.keyword_id)
                                                                                                   Filter: (keyword = 'computer-animation'::text)
                                                                                                   Rows Removed by Filter: 1
                                                                                                   Buffers: shared hit=408 read=136
                                                                                       ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=38.013..1093.761 rows=38 loops=1)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                             Rows Removed by Filter: 191
                                                                                             Buffers: shared hit=2 read=215
                                                                                 ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=6.509..6.515 rows=2 loops=38)
                                                                                       Index Cond: (person_id = ci.person_id)
                                                                                       Heap Fetches: 0
                                                                                       Buffers: shared hit=84 read=32
                                                                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=1.051..3.345 rows=2 loops=66)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                                 Rows Removed by Filter: 455
                                                                                 Buffers: shared hit=2471 read=37
                                                                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.309..0.378 rows=22 loops=132)
                                                                           Index Cond: (movie_id = mk.movie_id)
                                                                           Buffers: shared hit=656 read=4
                                                               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.116..0.116 rows=0 loops=2904)
                                                                     Index Cond: (id = mc.company_id)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=11582 read=34
                                                         ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.475..0.475 rows=0 loops=660)
                                                               Index Cond: (id = an.person_id)
                                                               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=2598 read=42
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=1.357..1.357 rows=1 loops=30)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=118 read=2
                                             ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=30)
                                                   Index Cond: (id = cc.status_id)
                                                   Filter: ((kind)::text = 'complete+verified'::text)
                                                   Buffers: shared hit=60
                                       ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=30)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Buffers: shared hit=60
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=30)
                                       Index Cond: (id = ci.role_id)
                                       Filter: ((role)::text = 'actress'::text)
                                       Buffers: shared hit=60
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=1.299..1.299 rows=1 loops=30)
                                 Index Cond: (id = ci.person_role_id)
                                 Filter: (name = 'Queen'::text)
                                 Buffers: shared hit=117 read=3
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=30)
                           Index Cond: (id = cc.subject_id)
                           Filter: ((kind)::text = 'cast'::text)
                           Buffers: shared hit=60
               ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=1.035..1.167 rows=163 loops=30)
                     Index Cond: (person_id = an.person_id)
                     Buffers: shared hit=378 read=12
         ->  Index Scan using info_type_pkey on info_type it3  (cost=0.00..0.00 rows=1 width=4) (actual time=0.001..0.001 rows=0 loops=4890)
               Index Cond: (id = pi.info_type_id)
               Filter: ((info)::text = 'trivia'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=9780
 Planning Time: 20301.868 ms
 Execution Time: 2717.584 ms
(112 rows)


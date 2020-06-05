 Aggregate  (cost=13.74..13.74 rows=1 width=96) (actual time=3742.327..3742.327 rows=1 loops=1)
   Buffers: shared hit=1000633 read=553
   ->  Nested Loop  (cost=0.16..13.74 rows=1 width=48) (actual time=2820.021..3742.243 rows=15 loops=1)
         Join Filter: (n.id = an.person_id)
         Buffers: shared hit=1000633 read=553
         ->  Nested Loop  (cost=0.15..13.71 rows=1 width=60) (actual time=2773.029..3690.348 rows=5 loops=1)
               Buffers: shared hit=1000613 read=548
               ->  Nested Loop  (cost=0.14..13.70 rows=1 width=64) (actual time=885.946..3547.298 rows=540 loops=1)
                     Join Filter: (ci.person_id = n.id)
                     Buffers: shared hit=998583 read=418
                     ->  Nested Loop  (cost=0.12..13.61 rows=1 width=45) (actual time=824.346..3483.557 rows=540 loops=1)
                           Join Filter: (it3.id = pi.info_type_id)
                           Rows Removed by Join Filter: 87480
                           Buffers: shared hit=996427 read=414
                           ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=13.153..13.185 rows=1 loops=1)
                                 Filter: ((info)::text = 'height'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.12..13.56 rows=5 width=49) (actual time=808.470..3461.397 rows=88020 loops=1)
                                 Buffers: shared hit=996427 read=413
                                 ->  Nested Loop  (cost=0.11..13.33 rows=1 width=41) (actual time=733.177..3343.177 rows=540 loops=1)
                                       Join Filter: (mi.info_type_id = it.id)
                                       Buffers: shared hit=989420 read=400
                                       ->  Nested Loop  (cost=0.11..13.28 rows=1 width=45) (actual time=733.140..3340.699 rows=540 loops=1)
                                             Buffers: shared hit=988880 read=400
                                             ->  Nested Loop  (cost=0.10..13.26 rows=1 width=49) (actual time=676.500..3005.615 rows=2376 loops=1)
                                                   Join Filter: (t.id = mi.movie_id)
                                                   Buffers: shared hit=979413 read=363
                                                   ->  Nested Loop  (cost=0.08..13.11 rows=1 width=65) (actual time=577.445..2380.208 rows=2376 loops=1)
                                                         Join Filter: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=889163 read=325
                                                         ->  Nested Loop  (cost=0.08..13.08 rows=1 width=69) (actual time=577.423..2376.049 rows=2376 loops=1)
                                                               Join Filter: (rt.id = ci.role_id)
                                                               Buffers: shared hit=886787 read=325
                                                               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=4.220..4.228 rows=1 loops=1)
                                                                     Filter: ((role)::text = 'actress'::text)
                                                                     Rows Removed by Filter: 11
                                                                     Buffers: shared read=1
                                                               ->  Nested Loop  (cost=0.08..13.04 rows=1 width=73) (actual time=573.194..2370.931 rows=2376 loops=1)
                                                                     Buffers: shared hit=886787 read=324
                                                                     ->  Nested Loop  (cost=0.07..12.68 rows=1 width=61) (actual time=221.648..1684.388 rows=90288 loops=1)
                                                                           Join Filter: (t.id = ci.movie_id)
                                                                           Buffers: shared hit=525722 read=237
                                                                           ->  Nested Loop  (cost=0.05..12.42 rows=1 width=45) (actual time=175.892..218.933 rows=2376 loops=1)
                                                                                 Join Filter: (cct2.id = cc.status_id)
                                                                                 Buffers: shared hit=10347 read=20
                                                                                 ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.125..0.126 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'completeverified'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared read=1
                                                                                 ->  Nested Loop  (cost=0.05..12.39 rows=1 width=49) (actual time=175.762..217.980 rows=2376 loops=1)
                                                                                       Join Filter: (t.id = cc.movie_id)
                                                                                       Buffers: shared hit=10347 read=19
                                                                                       ->  Nested Loop  (cost=0.04..12.36 rows=2 width=37) (actual time=136.515..169.678 rows=2432 loops=1)
                                                                                             Join Filter: (t.id = mc.movie_id)
                                                                                             Buffers: shared hit=679 read=15
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=88.945..110.879 rows=136 loops=1)
                                                                                                   Buffers: shared hit=4 read=10
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=44.944..66.733 rows=2 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                                         Rows Removed by Filter: 1
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=22.006..22.035 rows=68 loops=2)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=4 read=4
                                                                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.354..0.425 rows=18 loops=136)
                                                                                                   Index Cond: (movie_id = mk.movie_id)
                                                                                                   Buffers: shared hit=675 read=5
                                                                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.019..0.019 rows=1 loops=2432)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=9668 read=4
                                                                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=0.024..0.603 rows=38 loops=2376)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                 Rows Removed by Filter: 191
                                                                                 Buffers: shared hit=515375 read=217
                                                                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=0.007..0.007 rows=0 loops=90288)
                                                                           Index Cond: (id = ci.person_role_id)
                                                                           Filter: (name = 'Queen'::text)
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=361065 read=87
                                                         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=2376)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Buffers: shared hit=2376
                                                   ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.061..0.262 rows=1 loops=2376)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info ~~ 'USA:%200%'::text)
                                                         Rows Removed by Filter: 456
                                                         Buffers: shared hit=90250 read=38
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.140..0.140 rows=0 loops=2376)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=9467 read=37
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=540)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Rows Removed by Filter: 15
                                             Buffers: shared hit=540
                                 ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.23 rows=5 width=8) (actual time=0.142..0.187 rows=163 loops=540)
                                       Index Cond: (person_id = ci.person_id)
                                       Buffers: shared hit=7007 read=13
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.09 rows=1 width=19) (actual time=0.117..0.117 rows=1 loops=540)
                           Index Cond: (id = pi.person_id)
                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                           Buffers: shared hit=2156 read=4
               ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.264..0.264 rows=0 loops=540)
                     Index Cond: (id = mk.keyword_id)
                     Filter: (keyword = 'computer-animation'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=2030 read=130
         ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.03 rows=2 width=4) (actual time=9.402..10.373 rows=3 loops=5)
               Index Cond: (person_id = pi.person_id)
               Buffers: shared hit=20 read=5
 Planning Time: 18851.709 ms
 Execution Time: 3769.508 ms

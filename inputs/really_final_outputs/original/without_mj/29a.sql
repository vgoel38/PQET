                                                                                                                    QUERY PLAN                                                                                                                     
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13.76..13.76 rows=1 width=96) (actual time=4538.051..4538.052 rows=1 loops=1)
   Buffers: shared hit=1962433 read=579
   ->  Nested Loop  (cost=0.16..13.76 rows=1 width=48) (actual time=2956.578..4537.271 rows=1620 loops=1)
         Join Filter: (ci.person_id = n.id)
         Buffers: shared hit=1962433 read=579
         ->  Nested Loop  (cost=0.15..13.67 rows=1 width=45) (actual time=2893.612..4468.928 rows=1620 loops=1)
               Join Filter: (it.id = mi.info_type_id)
               Buffers: shared hit=1955957 read=575
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=17.282..17.315 rows=1 loops=1)
                     Filter: ((info)::text = 'release dates'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.15..13.63 rows=1 width=49) (actual time=2876.323..4451.192 rows=1620 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=1955957 read=574
                     ->  Nested Loop  (cost=0.14..13.47 rows=1 width=65) (actual time=2797.670..4112.682 rows=810 loops=1)
                           Buffers: shared hit=1925215 read=536
                           ->  Nested Loop  (cost=0.12..13.46 rows=1 width=69) (actual time=977.023..3764.652 rows=87480 loops=1)
                                 Join Filter: (it3.id = pi.info_type_id)
                                 Rows Removed by Join Filter: 176580
                                 Buffers: shared hit=1575425 read=406
                                 ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.056 rows=1 loops=1)
                                       Filter: ((info)::text = 'trivia'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                                 ->  Nested Loop  (cost=0.12..13.41 rows=5 width=73) (actual time=975.083..3726.016 rows=264060 loops=1)
                                       Join Filter: (ci.person_id = pi.person_id)
                                       Buffers: shared hit=1575424 read=406
                                       ->  Nested Loop  (cost=0.11..13.19 rows=1 width=65) (actual time=899.769..3507.243 rows=1620 loops=1)
                                             Buffers: shared hit=1554377 read=393
                                             ->  Nested Loop  (cost=0.10..13.17 rows=1 width=69) (actual time=862.505..3171.147 rows=7128 loops=1)
                                                   Join Filter: (ci.role_id = rt.id)
                                                   Buffers: shared hit=1525902 read=356
                                                   ->  Nested Loop  (cost=0.10..13.14 rows=1 width=73) (actual time=844.028..3140.376 rows=7128 loops=1)
                                                         Buffers: shared hit=1518775 read=355
                                                         ->  Nested Loop  (cost=0.08..12.78 rows=1 width=61) (actual time=286.640..2406.719 rows=156816 loops=1)
                                                               Buffers: shared hit=891569 read=297
                                                               ->  Nested Loop  (cost=0.07..12.71 rows=1 width=57) (actual time=242.493..1672.387 rows=90288 loops=1)
                                                                     Join Filter: (t.id = ci.movie_id)
                                                                     Buffers: shared hit=528099 read=239
                                                                     ->  Nested Loop  (cost=0.05..12.45 rows=1 width=41) (actual time=196.768..238.778 rows=2376 loops=1)
                                                                           Join Filter: (cc.subject_id = cct.id)
                                                                           Buffers: shared hit=12724 read=22
                                                                           ->  Nested Loop  (cost=0.05..12.42 rows=1 width=45) (actual time=196.750..235.029 rows=2376 loops=1)
                                                                                 Join Filter: (cct.id = cc.status_id)
                                                                                 Buffers: shared hit=10348 read=22
                                                                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.110..0.112 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete+verified'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared read=1
                                                                                 ->  Nested Loop  (cost=0.05..12.39 rows=1 width=49) (actual time=196.635..234.107 rows=2376 loops=1)
                                                                                       Join Filter: (t.id = cc.movie_id)
                                                                                       Buffers: shared hit=10348 read=21
                                                                                       ->  Nested Loop  (cost=0.04..12.36 rows=2 width=37) (actual time=157.374..186.512 rows=2432 loops=1)
                                                                                             Join Filter: (t.id = mc.movie_id)
                                                                                             Buffers: shared hit=680 read=17
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=109.824..130.385 rows=136 loops=1)
                                                                                                   Buffers: shared hit=5 read=12
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=35.266..71.127 rows=3 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=19.709..19.726 rows=45 loops=3)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=5 read=6
                                                                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.354..0.406 rows=18 loops=136)
                                                                                                   Index Cond: (movie_id = mk.movie_id)
                                                                                                   Buffers: shared hit=675 read=5
                                                                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.018..0.019 rows=1 loops=2432)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=9668 read=4
                                                                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=2376)
                                                                                 Filter: ((kind)::text = 'cast'::text)
                                                                                 Buffers: shared hit=2376
                                                                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=0.023..0.590 rows=38 loops=2376)
                                                                           Index Cond: (movie_id = mk.movie_id)
                                                                           Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                           Rows Removed by Filter: 191
                                                                           Buffers: shared hit=515375 read=217
                                                               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=0.006..0.007 rows=2 loops=90288)
                                                                     Index Cond: (person_id = ci.person_id)
                                                                     Buffers: shared hit=363470 read=58
                                                         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=0.004..0.004 rows=0 loops=156816)
                                                               Index Cond: (id = ci.person_role_id)
                                                               Filter: (name = 'Queen'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=627206 read=58
                                                   ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=7128)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=7127 read=1
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.047..0.047 rows=0 loops=7128)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=28475 read=37
                                       ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=0.049..0.089 rows=163 loops=1620)
                                             Index Cond: (person_id = an.person_id)
                                             Buffers: shared hit=21047 read=13
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=87480)
                                 Index Cond: (id = mk.keyword_id)
                                 Filter: (keyword = 'computer-animation'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=349790 read=130
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.116..0.417 rows=2 loops=810)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                           Rows Removed by Filter: 455
                           Buffers: shared hit=30742 read=38
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.09 rows=1 width=19) (actual time=0.041..0.041 rows=1 loops=1620)
               Index Cond: (id = pi.person_id)
               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
               Buffers: shared hit=6476 read=4
 Planning Time: 18807.580 ms
 Execution Time: 4538.653 ms
(115 rows)


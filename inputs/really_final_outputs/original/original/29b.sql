                                                                                                                    QUERY PLAN                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13.76..13.76 rows=1 width=96) (actual time=2482.015..2482.015 rows=1 loops=1)
   Buffers: shared hit=113984 read=477
   ->  Nested Loop  (cost=0.16..13.76 rows=1 width=48) (actual time=1075.556..2481.954 rows=15 loops=1)
         Join Filter: (ci.person_id = n.id)
         Buffers: shared hit=113984 read=477
         ->  Nested Loop  (cost=0.15..13.67 rows=1 width=45) (actual time=1064.013..2470.244 rows=15 loops=1)
               Join Filter: (it3.id = pi.info_type_id)
               Rows Removed by Join Filter: 2430
               Buffers: shared hit=113927 read=474
               ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.028..0.059 rows=1 loops=1)
                     Filter: ((info)::text = 'height'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared hit=1
               ->  Nested Loop  (cost=0.15..13.62 rows=5 width=49) (actual time=1061.216..2469.556 rows=2445 loops=1)
                     Join Filter: (ci.person_id = pi.person_id)
                     Buffers: shared hit=113926 read=474
                     ->  Nested Loop  (cost=0.14..13.41 rows=1 width=41) (actual time=1009.756..2412.211 rows=15 loops=1)
                           Join Filter: (cc.subject_id = cct1.id)
                           Buffers: shared hit=113743 read=462
                           ->  Nested Loop  (cost=0.14..13.38 rows=1 width=45) (actual time=1009.734..2412.116 rows=15 loops=1)
                                 Buffers: shared hit=113728 read=462
                                 ->  Nested Loop  (cost=0.12..13.31 rows=1 width=41) (actual time=955.144..2343.625 rows=5 loops=1)
                                       Buffers: shared hit=113707 read=458
                                       ->  Nested Loop  (cost=0.11..12.95 rows=1 width=29) (actual time=933.348..2166.375 rows=55 loops=1)
                                             Join Filter: (rt.id = ci.role_id)
                                             Rows Removed by Join Filter: 135
                                             Buffers: shared hit=113518 read=427
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.017 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared hit=1
                                             ->  Nested Loop  (cost=0.11..12.92 rows=1 width=33) (actual time=853.571..2166.251 rows=190 loops=1)
                                                   Join Filter: (t.id = ci.movie_id)
                                                   Buffers: shared hit=113517 read=427
                                                   ->  Nested Loop  (cost=0.09..12.65 rows=1 width=41) (actual time=826.490..1240.100 rows=5 loops=1)
                                                         Buffers: shared hit=112647 read=212
                                                         ->  Nested Loop  (cost=0.08..12.64 rows=1 width=45) (actual time=244.268..1081.599 rows=540 loops=1)
                                                               Join Filter: (cc.status_id = cct2.id)
                                                               Buffers: shared hit=110613 read=86
                                                               ->  Nested Loop  (cost=0.08..12.61 rows=1 width=49) (actual time=244.240..1080.203 rows=540 loops=1)
                                                                     Buffers: shared hit=110073 read=86
                                                                     ->  Nested Loop  (cost=0.07..12.59 rows=1 width=53) (actual time=237.588..809.096 rows=2376 loops=1)
                                                                           Join Filter: (it.id = mi.info_type_id)
                                                                           Buffers: shared hit=100603 read=52
                                                                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.051 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'release dates'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                                           ->  Nested Loop  (cost=0.07..12.54 rows=1 width=57) (actual time=237.570..808.147 rows=2376 loops=1)
                                                                                 Join Filter: (t.id = mi.movie_id)
                                                                                 Buffers: shared hit=100602 read=52
                                                                                 ->  Nested Loop  (cost=0.05..12.39 rows=1 width=49) (actual time=166.171..208.439 rows=2376 loops=1)
                                                                                       Join Filter: (t.id = cc.movie_id)
                                                                                       Buffers: shared hit=10351 read=15
                                                                                       ->  Nested Loop  (cost=0.04..12.36 rows=2 width=37) (actual time=143.584..176.093 rows=2432 loops=1)
                                                                                             Join Filter: (t.id = mc.movie_id)
                                                                                             Buffers: shared hit=681 read=13
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=87.690..112.951 rows=136 loops=1)
                                                                                                   Buffers: shared hit=5 read=9
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=43.694..68.806 rows=2 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                                         Rows Removed by Filter: 1
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=22.004..22.032 rows=68 loops=2)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=5 read=3
                                                                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.416..0.455 rows=18 loops=136)
                                                                                                   Index Cond: (movie_id = mk.movie_id)
                                                                                                   Buffers: shared hit=676 read=4
                                                                                       ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.012..0.012 rows=1 loops=2432)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=9670 read=2
                                                                                 ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.051..0.252 rows=1 loops=2376)
                                                                                       Index Cond: (movie_id = mk.movie_id)
                                                                                       Filter: (info ~~ 'USA:%200%'::text)
                                                                                       Rows Removed by Filter: 456
                                                                                       Buffers: shared hit=90251 read=37
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.114..0.114 rows=0 loops=2376)
                                                                           Index Cond: (id = mc.company_id)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=9470 read=34
                                                               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=540)
                                                                     Filter: ((kind)::text = 'complete+verified'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=540
                                                         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.293..0.293 rows=0 loops=540)
                                                               Index Cond: (id = mk.keyword_id)
                                                               Filter: (keyword = 'computer-animation'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=2034 read=126
                                                   ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=5.424..185.186 rows=38 loops=5)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 191
                                                         Buffers: shared hit=870 read=215
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=3.220..3.220 rows=0 loops=55)
                                             Index Cond: (id = ci.person_role_id)
                                             Filter: (name = 'Queen'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=189 read=31
                                 ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=10.923..13.692 rows=3 loops=5)
                                       Index Cond: (person_id = ci.person_id)
                                       Buffers: shared hit=21 read=4
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=15)
                                 Filter: ((kind)::text = 'cast'::text)
                                 Buffers: shared hit=15
                     ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=3.437..3.718 rows=163 loops=15)
                           Index Cond: (person_id = an.person_id)
                           Buffers: shared hit=183 read=12
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.09 rows=1 width=19) (actual time=0.776..0.776 rows=1 loops=15)
               Index Cond: (id = pi.person_id)
               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
               Buffers: shared hit=57 read=3
 Planning Time: 19712.116 ms
 Execution Time: 2500.805 ms
(117 rows)


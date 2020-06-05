 Aggregate  (cost=13.74..13.74 rows=1 width=96) (actual time=4238.548..4238.548 rows=1 loops=1)
   Buffers: shared hit=1881838 read=543
   ->  Nested Loop  (cost=0.16..13.74 rows=1 width=48) (actual time=2619.265..4237.775 rows=1620 loops=1)
         Buffers: shared hit=1881838 read=543
         ->  Nested Loop  (cost=0.15..13.73 rows=1 width=52) (actual time=710.972..3629.299 rows=174960 loops=1)
               Join Filter: (ci.person_id = n.id)
               Buffers: shared hit=1182128 read=413
               ->  Nested Loop  (cost=0.14..13.64 rows=1 width=49) (actual time=653.502..3036.211 rows=174960 loops=1)
                     Join Filter: (ci.person_id = an.person_id)
                     Buffers: shared hit=482292 read=409
                     ->  Nested Loop  (cost=0.12..13.61 rows=1 width=45) (actual time=615.220..2705.264 rows=58320 loops=1)
                           Join Filter: (it3.id = pi.info_type_id)
                           Rows Removed by Join Filter: 117720
                           Buffers: shared hit=190697 read=404
                           ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=13.174..13.207 rows=1 loops=1)
                                 Filter: ((info)::text = 'trivia'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.12..13.56 rows=5 width=49) (actual time=600.148..2665.224 rows=176040 loops=1)
                                 Buffers: shared hit=190697 read=403
                                 ->  Nested Loop  (cost=0.11..13.33 rows=1 width=41) (actual time=468.188..2448.217 rows=1080 loops=1)
                                       Join Filter: (cc.status_id = cct2.id)
                                       Buffers: shared hit=176670 read=390
                                       ->  Nested Loop  (cost=0.11..13.30 rows=1 width=45) (actual time=468.165..2446.017 rows=1080 loops=1)
                                             Join Filter: (it.id = mi.info_type_id)
                                             Buffers: shared hit=175590 read=390
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.049 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                             ->  Nested Loop  (cost=0.11..13.25 rows=1 width=49) (actual time=468.150..2445.687 rows=1080 loops=1)
                                                   Join Filter: (t.id = mi.movie_id)
                                                   Buffers: shared hit=175589 read=390
                                                   ->  Nested Loop  (cost=0.10..13.10 rows=1 width=65) (actual time=388.436..2149.474 rows=540 loops=1)
                                                         Join Filter: (cct1.id = cc.subject_id)
                                                         Buffers: shared hit=155107 read=352
                                                         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.092..0.096 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                                                         ->  Nested Loop  (cost=0.10..13.07 rows=1 width=69) (actual time=388.339..2149.193 rows=540 loops=1)
                                                               Join Filter: (t.id = cc.movie_id)
                                                               Buffers: shared hit=155107 read=351
                                                               ->  Nested Loop  (cost=0.08..13.05 rows=1 width=57) (actual time=352.304..2111.240 rows=540 loops=1)
                                                                     Buffers: shared hit=152951 read=347
                                                                     ->  Nested Loop  (cost=0.07..12.69 rows=1 width=45) (actual time=330.521..1826.886 rows=6192 loops=1)
                                                                           Join Filter: (rt.id = ci.role_id)
                                                                           Rows Removed by Join Filter: 15112
                                                                           Buffers: shared hit=128230 read=300
                                                                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=4.113..4.122 rows=1 loops=1)
                                                                                 Filter: ((role)::text = 'actress'::text)
                                                                                 Rows Removed by Filter: 11
                                                                                 Buffers: shared read=1
                                                                           ->  Nested Loop  (cost=0.07..12.66 rows=1 width=49) (actual time=246.635..1819.408 rows=21304 loops=1)
                                                                                 Join Filter: (t.id = ci.movie_id)
                                                                                 Buffers: shared hit=128230 read=299
                                                                                 ->  Nested Loop  (cost=0.05..12.39 rows=1 width=33) (actual time=203.987..575.271 rows=568 loops=1)
                                                                                       Buffers: shared hit=10368 read=57
                                                                                       ->  Nested Loop  (cost=0.04..12.36 rows=2 width=37) (actual time=161.624..199.838 rows=2432 loops=1)
                                                                                             Join Filter: (t.id = mc.movie_id)
                                                                                             Buffers: shared hit=680 read=17
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=114.055..140.540 rows=136 loops=1)
                                                                                                   Buffers: shared hit=5 read=12
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=39.515..81.307 rows=3 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=19.697..19.716 rows=45 loops=3)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=5 read=6
                                                                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.354..0.429 rows=18 loops=136)
                                                                                                   Index Cond: (movie_id = mk.movie_id)
                                                                                                   Buffers: shared hit=675 read=5
                                                                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.154..0.154 rows=0 loops=2432)
                                                                                             Index Cond: (id = mc.company_id)
                                                                                             Filter: ((country_code)::text = '[us]'::text)
                                                                                             Rows Removed by Filter: 1
                                                                                             Buffers: shared hit=9688 read=40
                                                                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=0.080..2.179 rows=38 loops=568)
                                                                                       Index Cond: (movie_id = mk.movie_id)
                                                                                       Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                       Rows Removed by Filter: 182
                                                                                       Buffers: shared hit=117862 read=242
                                                                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=0.045..0.045 rows=0 loops=6192)
                                                                           Index Cond: (id = ci.person_role_id)
                                                                           Filter: (name = 'Queen'::text)
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=24721 read=47
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.069..0.069 rows=1 loops=540)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=2156 read=4
                                                   ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.167..0.548 rows=2 loops=540)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                         Rows Removed by Filter: 455
                                                         Buffers: shared hit=20482 read=38
                                       ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=1080)
                                             Filter: ((kind)::text = 'completeverified'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1080
                                 ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.23 rows=5 width=8) (actual time=0.125..0.166 rows=163 loops=1080)
                                       Index Cond: (person_id = ci.person_id)
                                       Buffers: shared hit=14027 read=13
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.03 rows=2 width=4) (actual time=0.003..0.004 rows=3 loops=58320)
                           Index Cond: (person_id = pi.person_id)
                           Buffers: shared hit=291595 read=5
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.09 rows=1 width=19) (actual time=0.003..0.003 rows=1 loops=174960)
                     Index Cond: (id = pi.person_id)
                     Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                     Buffers: shared hit=699836 read=4
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=174960)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = 'computer-animation'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=699710 read=130
 Planning Time: 18789.069 ms
 Execution Time: 4261.842 ms

                                                                                                                    QUERY PLAN                                                                                                                     
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13.68..13.68 rows=1 width=96) (actual time=2448.805..2448.805 rows=1 loops=1)
   Buffers: shared hit=130917 read=531
   ->  Nested Loop  (cost=0.18..13.68 rows=1 width=48) (actual time=1900.482..2447.782 rows=1620 loops=1)
         Join Filter: (ci.person_id = n.id)
         Buffers: shared hit=130917 read=531
         ->  Nested Loop  (cost=0.17..13.59 rows=1 width=45) (actual time=1885.886..2426.217 rows=1620 loops=1)
               Buffers: shared hit=124440 read=528
               ->  Nested Loop  (cost=0.17..13.58 rows=1 width=49) (actual time=1885.835..2422.090 rows=1620 loops=1)
                     Buffers: shared hit=121200 read=528
                     ->  Nested Loop  (cost=0.15..13.57 rows=1 width=53) (actual time=1876.866..2070.798 rows=7128 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=92722 read=494
                           ->  Nested Loop  (cost=0.14..13.53 rows=1 width=69) (actual time=1838.098..2016.038 rows=324 loops=1)
                                 Buffers: shared hit=91106 read=490
                                 ->  Nested Loop  (cost=0.14..13.51 rows=5 width=73) (actual time=1836.171..2013.738 rows=978 loops=1)
                                       Join Filter: (ci.person_id = pi.person_id)
                                       Buffers: shared hit=89150 read=490
                                       ->  Nested Loop  (cost=0.12..13.29 rows=1 width=65) (actual time=1795.565..1958.583 rows=6 loops=1)
                                             Buffers: shared hit=89084 read=478
                                             ->  Nested Loop  (cost=0.11..13.28 rows=1 width=69) (actual time=555.591..1832.079 rows=648 loops=1)
                                                   Buffers: shared hit=86618 read=352
                                                   ->  Nested Loop  (cost=0.10..13.26 rows=1 width=65) (actual time=513.547..1788.869 rows=216 loops=1)
                                                         Buffers: shared hit=85972 read=349
                                                         ->  Nested Loop  (cost=0.09..13.25 rows=1 width=69) (actual time=513.505..1788.237 rows=216 loops=1)
                                                               Buffers: shared hit=85540 read=349
                                                               ->  Nested Loop  (cost=0.08..12.89 rows=1 width=57) (actual time=203.615..1396.670 rows=8208 loops=1)
                                                                     Join Filter: (t.id = ci.movie_id)
                                                                     Buffers: shared hit=52793 read=264
                                                                     ->  Nested Loop  (cost=0.06..12.63 rows=1 width=41) (actual time=166.262..367.564 rows=216 loops=1)
                                                                           Buffers: shared hit=6136 read=49
                                                                           ->  Nested Loop  (cost=0.06..12.62 rows=1 width=45) (actual time=166.245..367.047 rows=216 loops=1)
                                                                                 Buffers: shared hit=5704 read=49
                                                                                 ->  Nested Loop  (cost=0.05..12.62 rows=1 width=49) (actual time=166.201..366.418 rows=216 loops=1)
                                                                                       Join Filter: (t.id = cc.movie_id)
                                                                                       Buffers: shared hit=5272 read=49
                                                                                       ->  Nested Loop  (cost=0.04..12.60 rows=1 width=37) (actual time=145.929..344.920 rows=244 loops=1)
                                                                                             Join Filter: (t.id = mi.movie_id)
                                                                                             Buffers: shared hit=4326 read=47
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=79.394..102.575 rows=136 loops=1)
                                                                                                   Buffers: shared hit=7 read=10
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=38.165..66.568 rows=3 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=11.950..11.971 rows=45 loops=3)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=7 read=4
                                                                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.511..1.780 rows=2 loops=136)
                                                                                                   Index Cond: (movie_id = mk.movie_id)
                                                                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                                                   Rows Removed by Filter: 363
                                                                                                   Buffers: shared hit=4319 read=37
                                                                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.087..0.087 rows=1 loops=244)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=946 read=2
                                                                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=216)
                                                                                       Index Cond: (id = cc.subject_id)
                                                                                       Filter: ((kind)::text = 'cast'::text)
                                                                                       Buffers: shared hit=432
                                                                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=216)
                                                                                 Index Cond: (id = cc.status_id)
                                                                                 Filter: ((kind)::text = 'complete+verified'::text)
                                                                                 Buffers: shared hit=432
                                                                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=0.179..4.748 rows=38 loops=216)
                                                                           Index Cond: (movie_id = mk.movie_id)
                                                                           Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                           Rows Removed by Filter: 191
                                                                           Buffers: shared hit=46657 read=215
                                                               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=0.047..0.047 rows=0 loops=8208)
                                                                     Index Cond: (id = ci.person_role_id)
                                                                     Filter: (name = 'Queen'::text)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=32747 read=85
                                                         ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=216)
                                                               Index Cond: (id = ci.role_id)
                                                               Filter: ((role)::text = 'actress'::text)
                                                               Buffers: shared hit=432
                                                   ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=0.198..0.198 rows=3 loops=216)
                                                         Index Cond: (person_id = ci.person_id)
                                                         Heap Fetches: 0
                                                         Buffers: shared hit=646 read=3
                                             ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.195..0.195 rows=0 loops=648)
                                                   Index Cond: (id = mk.keyword_id)
                                                   Filter: (keyword = 'computer-animation'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=2466 read=126
                                       ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=6.768..9.111 rows=163 loops=6)
                                             Index Cond: (person_id = an.person_id)
                                             Buffers: shared hit=66 read=12
                                 ->  Index Scan using info_type_pkey on info_type it3  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=0 loops=978)
                                       Index Cond: (id = pi.info_type_id)
                                       Filter: ((info)::text = 'trivia'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=1956
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.124..0.159 rows=22 loops=324)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=1616 read=4
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.049..0.049 rows=0 loops=7128)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=28478 read=34
               ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=1620)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'release dates'::text)
                     Buffers: shared hit=3240
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.09 rows=1 width=19) (actual time=0.012..0.012 rows=1 loops=1620)
               Index Cond: (id = pi.person_id)
               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
               Buffers: shared hit=6477 read=3
 Planning Time: 20914.056 ms
 Execution Time: 2515.705 ms
(112 rows)


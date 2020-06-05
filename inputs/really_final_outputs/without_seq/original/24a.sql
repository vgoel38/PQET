                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=393.16..393.16 rows=1 width=96) (actual time=184900.341..184900.341 rows=1 loops=1)
   Buffers: shared hit=171050 read=35110
   ->  Nested Loop  (cost=0.15..393.16 rows=1 width=48) (actual time=12271.242..184899.863 rows=275 loops=1)
         Buffers: shared hit=171050 read=35110
         ->  Nested Loop  (cost=0.13..392.98 rows=1 width=36) (actual time=12251.817..184826.272 rows=277 loops=1)
               Buffers: shared hit=169961 read=35099
               ->  Nested Loop  (cost=0.12..392.96 rows=1 width=40) (actual time=12152.687..184051.029 rows=895 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Buffers: shared hit=166444 read=35034
                     ->  Nested Loop  (cost=0.11..392.93 rows=1 width=52) (actual time=12114.204..183820.806 rows=66 loops=1)
                           Join Filter: (ci.person_id = n.id)
                           Buffers: shared hit=166143 read=35015
                           ->  Nested Loop  (cost=0.09..392.68 rows=1 width=45) (actual time=5182.123..181139.317 rows=2351 loops=1)
                                 Buffers: shared hit=157058 read=34696
                                 ->  Nested Loop  (cost=0.09..392.67 rows=1 width=49) (actual time=5105.393..181071.791 rows=12761 loops=1)
                                       Buffers: shared hit=131536 read=34696
                                       ->  Nested Loop  (cost=0.08..392.65 rows=1 width=45) (actual time=5058.310..175612.514 rows=4439 loops=1)
                                             Join Filter: (t.id = ci.movie_id)
                                             Buffers: shared hit=118883 read=33973
                                             ->  Nested Loop  (cost=0.06..392.39 rows=1 width=29) (actual time=148.315..73207.827 rows=738 loops=1)
                                                   Buffers: shared hit=39771 read=16080
                                                   ->  Nested Loop  (cost=0.05..392.38 rows=2 width=33) (actual time=148.278..73196.191 rows=738 loops=1)
                                                         Join Filter: (t.id = mi.movie_id)
                                                         Buffers: shared hit=38295 read=16080
                                                         ->  Nested Loop  (cost=0.04..389.92 rows=16 width=25) (actual time=96.264..41688.817 rows=495 loops=1)
                                                               Buffers: shared hit=34647 read=11704
                                                               ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=56.292..11147.554 rows=9696 loops=1)
                                                                     Buffers: shared hit=2985 read=4512
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=14.206..46.589 rows=3 loops=1)
                                                                           Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                           Buffers: shared hit=7 read=8
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=27.787..3695.996 rows=3232 loops=3)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=2978 read=4504
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.146..3.146 rows=0 loops=9696)
                                                                     Index Cond: (id = mk.movie_id)
                                                                     Filter: (production_year > 2010)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=31662 read=7192
                                                         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=34.355..63.644 rows=1 loops=495)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                               Rows Removed by Filter: 70
                                                               Buffers: shared hit=3648 read=4376
                                                   ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=738)
                                                         Index Cond: (id = mi.info_type_id)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Buffers: shared hit=1476
                                             ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=95.780..138.748 rows=6 loops=738)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 128
                                                   Buffers: shared hit=79112 read=17893
                                       ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=1.224..1.226 rows=3 loops=4439)
                                             Index Cond: (person_id = ci.person_id)
                                             Heap Fetches: 0
                                             Buffers: shared hit=12653 read=723
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=12761)
                                       Index Cond: (id = ci.role_id)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=25522
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=1.139..1.139 rows=0 loops=2351)
                                 Index Cond: (id = an.person_id)
                                 Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=9085 read=319
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=2.810..3.475 rows=14 loops=66)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=301 read=19
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.865..0.865 rows=0 loops=895)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=3517 read=65
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.263..0.263 rows=1 loops=277)
               Index Cond: (id = ci.person_role_id)
               Buffers: shared hit=1089 read=11
 Planning Time: 11392.215 ms
 Execution Time: 184923.018 ms
(80 rows)


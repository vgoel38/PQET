                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=37677.91..37677.91 rows=1 width=128) (actual time=269253.179..269253.179 rows=1 loops=1)
   Buffers: shared hit=1132159 read=98939
   ->  Nested Loop  (cost=0.10..37677.91 rows=1 width=64) (actual time=72473.889..269252.971 rows=40 loops=1)
         Buffers: shared hit=1132159 read=98939
         ->  Nested Loop  (cost=0.09..37677.70 rows=1 width=52) (actual time=72453.166..269103.693 rows=40 loops=1)
               Join Filter: (ci.person_id = n.id)
               Buffers: shared hit=1132024 read=98914
               ->  Nested Loop  (cost=0.07..37609.62 rows=268 width=45) (actual time=355.120..264150.309 rows=20424 loops=1)
                     Buffers: shared hit=1051904 read=97241
                     ->  Nested Loop  (cost=0.06..37586.97 rows=309 width=25) (actual time=315.560..259540.447 rows=7565 loops=1)
                           Buffers: shared hit=1024467 read=95597
                           ->  Nested Loop  (cost=0.05..37285.57 rows=1521 width=16) (actual time=266.646..166088.891 rows=26447 loops=1)
                                 Buffers: shared hit=925232 read=88974
                                 ->  Nested Loop  (cost=0.04..36715.59 rows=4214 width=20) (actual time=262.259..157626.947 rows=29100 loops=1)
                                       Buffers: shared hit=809756 read=87986
                                       ->  Nested Loop  (cost=0.02..29252.30 rows=59356 width=12) (actual time=54.997..8123.134 rows=222686 loops=1)
                                             Buffers: shared hit=2 read=69446
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.035..0.038 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared hit=1 read=1
                                             ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29241.70 rows=64752 width=16) (actual time=54.936..8008.583 rows=222686 loops=1)
                                                   Index Cond: (role_id = rt.id)
                                                   Filter: (note = '(voice)'::text)
                                                   Rows Removed by Filter: 7229287
                                                   Buffers: shared hit=1 read=69445
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.13 rows=1 width=8) (actual time=0.637..0.670 rows=0 loops=222686)
                                             Index Cond: (movie_id = ci.movie_id)
                                             Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                             Rows Removed by Filter: 2
                                             Buffers: shared hit=809754 read=18540
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.14 rows=1 width=4) (actual time=0.288..0.288 rows=1 loops=29100)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=115476 read=988
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.20 rows=1 width=21) (actual time=3.532..3.532 rows=0 loops=26447)
                                 Index Cond: (id = ci.movie_id)
                                 Filter: ((production_year >= 2007) AND (production_year <= 2010))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=99235 read=6623
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.07 rows=2 width=20) (actual time=0.519..0.605 rows=3 loops=7565)
                           Index Cond: (person_id = ci.person_id)
                           Buffers: shared hit=27437 read=1644
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.241..0.241 rows=0 loops=20424)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=80120 read=1673
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.22 rows=1 width=20) (actual time=3.728..3.728 rows=1 loops=40)
               Index Cond: (id = ci.person_role_id)
               Buffers: shared hit=135 read=25
 Planning Time: 4649.865 ms
 Execution Time: 269274.489 ms
(53 rows)


                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34.01..34.01 rows=1 width=96) (actual time=5468.919..5468.919 rows=1 loops=1)
   Buffers: shared hit=5451 read=721
   ->  Nested Loop  (cost=0.15..34.01 rows=1 width=48) (actual time=2562.020..5468.777 rows=45 loops=1)
         Buffers: shared hit=5451 read=721
         ->  Nested Loop  (cost=0.14..34.01 rows=1 width=52) (actual time=2561.977..5468.485 rows=45 loops=1)
               Join Filter: (ci.person_id = n.id)
               Buffers: shared hit=5361 read=721
               ->  Nested Loop  (cost=0.13..33.75 rows=1 width=45) (actual time=2543.971..5334.787 rows=109 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=4942 read=704
                     ->  Nested Loop  (cost=0.11..33.60 rows=1 width=57) (actual time=2481.005..5148.773 rows=57 loops=1)
                           Buffers: shared hit=3921 read=676
                           ->  Nested Loop  (cost=0.10..33.57 rows=2 width=61) (actual time=2359.890..4879.628 rows=842 loops=1)
                                 Join Filter: (t.id = mk.movie_id)
                                 Buffers: shared hit=639 read=590
                                 ->  Nested Loop  (cost=0.09..33.51 rows=1 width=53) (actual time=2322.198..4815.575 rows=31 loops=1)
                                       Buffers: shared hit=506 read=586
                                       ->  Nested Loop  (cost=0.07..33.49 rows=1 width=49) (actual time=2181.274..4665.719 rows=15 loops=1)
                                             Buffers: shared hit=473 read=573
                                             ->  Nested Loop  (cost=0.07..33.48 rows=1 width=53) (actual time=1630.263..4664.492 rows=54 loops=1)
                                                   Buffers: shared hit=365 read=573
                                                   ->  Nested Loop  (cost=0.06..33.30 rows=1 width=41) (actual time=1610.257..3939.629 rows=57 loops=1)
                                                         Join Filter: (t.id = ci.movie_id)
                                                         Buffers: shared hit=259 read=463
                                                         ->  Nested Loop  (cost=0.04..32.86 rows=1 width=25) (actual time=762.973..2711.675 rows=4 loops=1)
                                                               Buffers: shared hit=226 read=251
                                                               ->  Nested Loop  (cost=0.03..32.15 rows=11 width=4) (actual time=76.778..490.680 rows=99 loops=1)
                                                                     Buffers: shared hit=1 read=78
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=41.134..41.138 rows=1 loops=1)
                                                                           Index Cond: (name = 'DreamWorks Animation'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..26.02 rows=11 width=8) (actual time=35.635..449.285 rows=99 loops=1)
                                                                           Index Cond: (company_id = cn.id)
                                                                           Buffers: shared hit=1 read=74
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=22.427..22.427 rows=0 loops=99)
                                                                     Index Cond: (id = mc.movie_id)
                                                                     Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=225 read=173
                                                         ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=16) (actual time=44.417..306.934 rows=14 loops=4)
                                                               Index Cond: (movie_id = mc.movie_id)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 45
                                                               Buffers: shared hit=33 read=212
                                                   ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=12.709..12.709 rows=1 loops=57)
                                                         Index Cond: (id = ci.person_role_id)
                                                         Buffers: shared hit=106 read=110
                                             ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.016..0.016 rows=0 loops=54)
                                                   Index Cond: (id = ci.role_id)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=108
                                       ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=9.983..9.985 rows=2 loops=15)
                                             Index Cond: (person_id = ci.person_id)
                                             Heap Fetches: 0
                                             Buffers: shared hit=33 read=13
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=1.228..2.037 rows=27 loops=31)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Buffers: shared hit=133 read=4
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.318..0.318 rows=0 loops=842)
                                 Index Cond: (id = mk.keyword_id)
                                 Filter: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=3282 read=86
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=1.131..3.260 rows=2 loops=57)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                           Rows Removed by Filter: 117
                           Buffers: shared hit=1021 read=28
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=1.225..1.225 rows=0 loops=109)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=419 read=17
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=45)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Buffers: shared hit=90
 Planning Time: 11196.410 ms
 Execution Time: 5487.318 ms
(81 rows)


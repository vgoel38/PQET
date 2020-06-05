                                                                                                        QUERY PLAN                                                                                                        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34.18..34.18 rows=1 width=96) (actual time=5335.652..5335.652 rows=1 loops=1)
   Buffers: shared hit=11592 read=694
   ->  Nested Loop  (cost=0.14..34.18 rows=1 width=48) (actual time=2774.970..5335.559 rows=45 loops=1)
         Join Filter: (ci.role_id = rt.id)
         Buffers: shared hit=11592 read=694
         ->  Nested Loop  (cost=0.14..34.15 rows=1 width=52) (actual time=2774.957..5335.406 rows=45 loops=1)
               Buffers: shared hit=11547 read=694
               ->  Nested Loop  (cost=0.12..34.14 rows=1 width=56) (actual time=2502.315..5111.636 rows=810 loops=1)
                     Join Filter: (it.id = mi.info_type_id)
                     Buffers: shared hit=8393 read=608
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.026..0.070 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.12..34.09 rows=1 width=60) (actual time=2502.281..5111.190 rows=810 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=8392 read=608
                           ->  Nested Loop  (cost=0.11..33.93 rows=1 width=72) (actual time=2420.787..4866.519 rows=370 loops=1)
                                 Join Filter: (n.id = an.person_id)
                                 Buffers: shared hit=765 read=580
                                 ->  Nested Loop  (cost=0.10..33.81 rows=2 width=80) (actual time=2368.202..4793.797 rows=74 loops=1)
                                       Join Filter: (t.id = mk.movie_id)
                                       Buffers: shared hit=399 read=576
                                       ->  Nested Loop  (cost=0.08..33.75 rows=1 width=72) (actual time=2318.274..4719.674 rows=3 loops=1)
                                             Buffers: shared hit=390 read=572
                                             ->  Nested Loop  (cost=0.07..33.56 rows=1 width=60) (actual time=2303.642..4705.005 rows=3 loops=1)
                                                   Buffers: shared hit=381 read=569
                                                   ->  Nested Loop  (cost=0.06..33.30 rows=1 width=41) (actual time=1668.573..4060.321 rows=57 loops=1)
                                                         Join Filter: (t.id = ci.movie_id)
                                                         Buffers: shared hit=259 read=463
                                                         ->  Nested Loop  (cost=0.04..32.86 rows=1 width=25) (actual time=779.668..2729.224 rows=4 loops=1)
                                                               Buffers: shared hit=226 read=251
                                                               ->  Nested Loop  (cost=0.03..32.15 rows=11 width=4) (actual time=93.409..507.342 rows=99 loops=1)
                                                                     Buffers: shared hit=1 read=78
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=41.104..41.109 rows=1 loops=1)
                                                                           Index Cond: (name = 'DreamWorks Animation'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..26.02 rows=11 width=8) (actual time=52.297..465.966 rows=99 loops=1)
                                                                           Index Cond: (company_id = cn.id)
                                                                           Buffers: shared hit=1 read=74
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=22.436..22.436 rows=0 loops=99)
                                                                     Index Cond: (id = mc.movie_id)
                                                                     Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=225 read=173
                                                         ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.44 rows=1 width=16) (actual time=56.904..332.714 rows=14 loops=4)
                                                               Index Cond: (movie_id = mc.movie_id)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 45
                                                               Buffers: shared hit=33 read=212
                                                   ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=11.303..11.303 rows=0 loops=57)
                                                         Index Cond: (id = ci.person_id)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=122 read=106
                                             ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=4.882..4.882 rows=1 loops=3)
                                                   Index Cond: (id = ci.person_role_id)
                                                   Buffers: shared hit=9 read=3
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=16.646..24.673 rows=25 loops=3)
                                             Index Cond: (movie_id = mc.movie_id)
                                             Buffers: shared hit=9 read=4
                                 ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=0.716..0.978 rows=5 loops=74)
                                       Index Cond: (person_id = ci.person_id)
                                       Buffers: shared hit=366 read=4
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.237..0.659 rows=2 loops=370)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                 Rows Removed by Filter: 146
                                 Buffers: shared hit=7627 read=28
               ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.275..0.275 rows=0 loops=810)
                     Index Cond: (id = mk.keyword_id)
                     Filter: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=3154 read=86
         ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=45)
               Filter: ((role)::text = 'actress'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=45
 Planning Time: 11088.118 ms
 Execution Time: 5420.662 ms
(81 rows)


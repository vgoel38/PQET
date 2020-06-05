 Aggregate  (cost=34.22..34.22 rows=1 width=96) (actual time=5737.959..5737.960 rows=1 loops=1)
   Buffers: shared hit=3953 read=748
   ->  Nested Loop  (cost=0.14..34.22 rows=1 width=48) (actual time=2674.980..5737.793 rows=45 loops=1)
         Buffers: shared hit=3953 read=748
         ->  Nested Loop  (cost=0.12..34.20 rows=2 width=52) (actual time=2553.879..5478.935 rows=810 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=803 read=658
               ->  Nested Loop  (cost=0.11..34.13 rows=1 width=64) (actual time=2521.311..5411.844 rows=25 loops=1)
                     Join Filter: (it.id = mi.info_type_id)
                     Buffers: shared hit=703 read=653
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=13.455..13.494 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.11..34.09 rows=1 width=68) (actual time=2507.849..5398.317 rows=25 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=703 read=652
                           ->  Nested Loop  (cost=0.10..33.83 rows=1 width=60) (actual time=2442.570..5206.840 rows=15 loops=1)
                                 Join Filter: (ci.person_id = n.id)
                                 Buffers: shared hit=502 read=623
                                 ->  Nested Loop  (cost=0.08..33.58 rows=1 width=53) (actual time=2376.338..5045.095 rows=31 loops=1)
                                       Buffers: shared hit=396 read=605
                                       ->  Nested Loop  (cost=0.07..33.52 rows=1 width=49) (actual time=2253.464..4785.261 rows=15 loops=1)
                                             Join Filter: (rt.id = ci.role_id)
                                             Rows Removed by Join Filter: 39
                                             Buffers: shared hit=358 read=581
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=4.234..4.246 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared read=1
                                             ->  Nested Loop  (cost=0.07..33.48 rows=1 width=53) (actual time=1706.572..4780.903 rows=54 loops=1)
                                                   Buffers: shared hit=358 read=580
                                                   ->  Nested Loop  (cost=0.06..33.30 rows=1 width=41) (actual time=1686.557..4064.103 rows=57 loops=1)
                                                         Join Filter: (t.id = ci.movie_id)
                                                         Buffers: shared hit=255 read=467
                                                         ->  Nested Loop  (cost=0.04..32.86 rows=1 width=25) (actual time=781.007..2838.022 rows=4 loops=1)
                                                               Buffers: shared hit=224 read=253
                                                               ->  Nested Loop  (cost=0.03..32.15 rows=11 width=4) (actual time=86.432..551.379 rows=99 loops=1)
                                                                     Buffers: shared read=79
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=42.430..42.435 rows=1 loops=1)
                                                                           Index Cond: (name = 'DreamWorks Animation'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..26.02 rows=11 width=8) (actual time=43.993..508.673 rows=99 loops=1)
                                                                           Index Cond: (company_id = cn.id)
                                                                           Buffers: shared read=75
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=23.090..23.090 rows=0 loops=99)
                                                                     Index Cond: (id = mc.movie_id)
                                                                     Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=224 read=174
                                                         ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=16) (actual time=56.911..306.466 rows=14 loops=4)
                                                               Index Cond: (movie_id = mc.movie_id)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 45
                                                               Buffers: shared hit=31 read=214
                                                   ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=12.565..12.565 rows=1 loops=57)
                                                         Index Cond: (id = ci.person_role_id)
                                                         Buffers: shared hit=103 read=113
                                       ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=14.064..17.311 rows=2 loops=15)
                                             Index Cond: (person_id = ci.person_id)
                                             Buffers: shared hit=38 read=24
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=5.213..5.213 rows=0 loops=31)
                                       Index Cond: (id = an.person_id)
                                       Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=106 read=18
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=4.374..12.761 rows=2 loops=15)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                 Rows Removed by Filter: 88
                                 Buffers: shared hit=201 read=29
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=1.314..2.652 rows=32 loops=25)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=100 read=5
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.318..0.318 rows=0 loops=810)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=3150 read=90
 Planning Time: 10258.241 ms
 Execution Time: 5758.851 ms

 Aggregate  (cost=393.53..393.53 rows=1 width=96) (actual time=204751.550..204751.551 rows=1 loops=1)
   Buffers: shared hit=249764 read=38219
   ->  Nested Loop  (cost=0.14..393.53 rows=1 width=48) (actual time=14795.620..204751.043 rows=275 loops=1)
         Buffers: shared hit=249764 read=38219
         ->  Nested Loop  (cost=0.12..393.52 rows=1 width=52) (actual time=14679.821..203997.711 rows=892 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=246263 read=38150
               ->  Nested Loop  (cost=0.11..393.49 rows=1 width=64) (actual time=14633.501..203773.039 rows=65 loops=1)
                     Join Filter: (ci.role_id = rt.id)
                     Buffers: shared hit=245968 read=38130
                     ->  Nested Loop  (cost=0.11..393.45 rows=1 width=68) (actual time=14608.005..203747.109 rows=65 loops=1)
                           Join Filter: (ci.person_id = n.id)
                           Buffers: shared hit=245904 read=38129
                           ->  Nested Loop  (cost=0.10..393.20 rows=1 width=61) (actual time=5221.482..195721.372 rows=12691 loops=1)
                                 Join Filter: (mi.info_type_id = it.id)
                                 Buffers: shared hit=196342 read=36892
                                 ->  Nested Loop  (cost=0.10..393.15 rows=1 width=65) (actual time=5196.578..195549.459 rows=12691 loops=1)
                                       Buffers: shared hit=183652 read=36891
                                       ->  Nested Loop  (cost=0.08..392.97 rows=1 width=53) (actual time=5172.694..186815.773 rows=12761 loops=1)
                                             Buffers: shared hit=134137 read=35541
                                             ->  Nested Loop  (cost=0.07..392.90 rows=1 width=49) (actual time=5135.570..174280.613 rows=4439 loops=1)
                                                   Join Filter: (t.id = ci.movie_id)
                                                   Buffers: shared hit=117398 read=33982
                                                   ->  Nested Loop  (cost=0.05..392.38 rows=2 width=33) (actual time=175.552..73878.637 rows=738 loops=1)
                                                         Join Filter: (t.id = mi.movie_id)
                                                         Buffers: shared hit=38290 read=16085
                                                         ->  Nested Loop  (cost=0.04..389.92 rows=16 width=25) (actual time=123.515..41857.008 rows=495 loops=1)
                                                               Buffers: shared hit=34644 read=11707
                                                               ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=75.223..11356.867 rows=9696 loops=1)
                                                                     Buffers: shared hit=2984 read=4513
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=30.493..77.707 rows=3 loops=1)
                                                                           Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                           Buffers: shared hit=7 read=8
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=28.664..3755.301 rows=3232 loops=3)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=2977 read=4505
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.142..3.142 rows=0 loops=9696)
                                                                     Index Cond: (id = mk.movie_id)
                                                                     Filter: (production_year > 2010)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=31660 read=7194
                                                         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=34.524..64.683 rows=1 loops=495)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                               Rows Removed by Filter: 70
                                                               Buffers: shared hit=3646 read=4378
                                                   ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=94.395..136.033 rows=6 loops=738)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 128
                                                         Buffers: shared hit=79108 read=17897
                                             ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=2.492..2.819 rows=3 loops=4439)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Buffers: shared hit=16739 read=1559
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.682..0.682 rows=1 loops=12761)
                                             Index Cond: (id = ci.person_role_id)
                                             Buffers: shared hit=49515 read=1350
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=12691)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 15
                                       Buffers: shared hit=12690 read=1
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.631..0.631 rows=0 loops=12691)
                                 Index Cond: (id = an.person_id)
                                 Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=49562 read=1237
                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.395..0.395 rows=1 loops=65)
                           Filter: ((role)::text = 'actress'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=64 read=1
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=2.778..3.442 rows=14 loops=65)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=295 read=20
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.843..0.843 rows=0 loops=892)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=3501 read=69
 Planning Time: 10298.585 ms
 Execution Time: 204782.173 ms

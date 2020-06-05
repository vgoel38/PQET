                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=393.27..393.27 rows=1 width=96) (actual time=205952.991..205952.991 rows=1 loops=1)
   Buffers: shared hit=745435 read=37376
   ->  Nested Loop  (cost=0.14..393.27 rows=1 width=48) (actual time=14584.492..205952.520 rows=275 loops=1)
         Join Filter: (ci.person_id = n.id)
         Buffers: shared hit=745435 read=37376
         ->  Nested Loop  (cost=0.12..393.02 rows=1 width=41) (actual time=5959.200..204149.503 rows=6518 loops=1)
               Buffers: shared hit=719625 read=37114
               ->  Nested Loop  (cost=0.11..392.95 rows=1 width=37) (actual time=5927.470..200751.713 rows=2748 loops=1)
                     Join Filter: (rt.id = ci.role_id)
                     Rows Removed by Join Filter: 10860
                     Buffers: shared hit=708884 read=36774
                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.066..0.070 rows=1 loops=1)
                           Filter: ((role)::text = 'actress'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.11..392.92 rows=1 width=41) (actual time=5872.938..200744.987 rows=13608 loops=1)
                           Buffers: shared hit=708884 read=36773
                           ->  Nested Loop  (cost=0.10..392.74 rows=1 width=29) (actual time=5853.603..190823.866 rows=13758 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=656083 read=35085
                                 ->  Nested Loop  (cost=0.08..392.48 rows=1 width=33) (actual time=278.204..94533.583 rows=3406 loops=1)
                                       Buffers: shared hit=94449 read=17939
                                       ->  Nested Loop  (cost=0.07..392.46 rows=1 width=37) (actual time=234.953..80076.753 rows=13560 loops=1)
                                             Join Filter: (t.id = mc.movie_id)
                                             Buffers: shared hit=41380 read=16737
                                             ->  Nested Loop  (cost=0.05..392.43 rows=1 width=29) (actual time=201.950..73397.543 rows=738 loops=1)
                                                   Join Filter: (mi.info_type_id = it.id)
                                                   Buffers: shared hit=38290 read=16086
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=14.817..14.863 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.05..392.38 rows=2 width=33) (actual time=187.127..73381.751 rows=738 loops=1)
                                                         Join Filter: (t.id = mi.movie_id)
                                                         Buffers: shared hit=38290 read=16085
                                                         ->  Nested Loop  (cost=0.04..389.92 rows=16 width=25) (actual time=110.105..41513.310 rows=495 loops=1)
                                                               Buffers: shared hit=34644 read=11707
                                                               ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=61.825..11309.577 rows=9696 loops=1)
                                                                     Buffers: shared hit=2984 read=4513
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=11.412..58.692 rows=3 loops=1)
                                                                           Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                           Buffers: shared hit=7 read=8
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=30.565..3746.044 rows=3232 loops=3)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=2977 read=4505
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.112..3.112 rows=0 loops=9696)
                                                                     Index Cond: (id = mk.movie_id)
                                                                     Filter: (production_year > 2010)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=31660 read=7194
                                                         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=34.343..64.373 rows=1 loops=495)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                               Rows Removed by Filter: 70
                                                               Buffers: shared hit=3646 read=4378
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=7.208..9.028 rows=18 loops=738)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=3090 read=651
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=1.065..1.065 rows=0 loops=13560)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=53069 read=1202
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=19.712..28.266 rows=4 loops=3406)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 169
                                       Buffers: shared hit=561634 read=17146
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.719..0.719 rows=1 loops=13758)
                                 Index Cond: (id = ci.person_role_id)
                                 Buffers: shared hit=52801 read=1688
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=1.106..1.234 rows=2 loops=2748)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=10741 read=340
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.276..0.276 rows=0 loops=6518)
               Index Cond: (id = an.person_id)
               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=25810 read=262
 Planning Time: 10077.291 ms
 Execution Time: 205953.454 ms
(81 rows)


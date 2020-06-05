                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=38043.24..38043.24 rows=1 width=64) (actual time=346663.720..346663.721 rows=1 loops=1)
   Buffers: shared hit=3048973 read=112425
   ->  Nested Loop  (cost=0.12..38043.24 rows=1 width=32) (actual time=44075.108..346663.325 rows=184 loops=1)
         Buffers: shared hit=3048973 read=112425
         ->  Nested Loop  (cost=0.11..38043.23 rows=1 width=36) (actual time=44075.060..346661.823 rows=184 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=3048605 read=112425
               ->  Nested Loop  (cost=0.10..38042.50 rows=1 width=44) (actual time=44027.624..344257.097 rows=77 loops=1)
                     Join Filter: (ci.person_id = n.id)
                     Buffers: shared hit=3047241 read=112081
                     ->  Nested Loop  (cost=0.09..37905.58 rows=539 width=37) (actual time=432.119..337177.210 rows=40747 loops=1)
                           Join Filter: (mc.movie_id = t.id)
                           Buffers: shared hit=2886628 read=109430
                           ->  Nested Loop  (cost=0.07..37513.06 rows=2370 width=16) (actual time=386.924..210927.064 rows=165654 loops=1)
                                 Buffers: shared hit=2235056 read=97956
                                 ->  Nested Loop  (cost=0.06..37451.84 rows=2726 width=12) (actual time=366.544..210125.546 rows=72285 loops=1)
                                       Buffers: shared hit=2018493 read=97416
                                       ->  Nested Loop  (cost=0.05..37048.31 rows=7550 width=16) (actual time=362.150..201270.519 rows=77832 loops=1)
                                             Buffers: shared hit=1708184 read=96277
                                             ->  Nested Loop  (cost=0.04..33343.32 rows=35008 width=8) (actual time=90.319..49991.024 rows=255651 loops=1)
                                                   Buffers: shared hit=781605 read=77335
                                                   ->  Nested Loop  (cost=0.02..29509.08 rows=72136 width=12) (actual time=55.135..7255.627 rows=276166 loops=1)
                                                         Buffers: shared hit=2 read=69446
                                                         ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.033..0.034 rows=1 loops=1)
                                                               Index Cond: ((role)::text = 'actress'::text)
                                                               Buffers: shared hit=1 read=1
                                                         ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29497.51 rows=78694 width=16) (actual time=55.093..7125.635 rows=276166 loops=1)
                                                               Index Cond: (role_id = rt.id)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 7175807
                                                               Buffers: shared hit=1 read=69445
                                                   ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..0.05 rows=1 width=4) (actual time=0.153..0.153 rows=1 loops=276166)
                                                         Index Cond: (id = ci.person_role_id)
                                                         Heap Fetches: 0
                                                         Buffers: shared hit=781603 read=7889
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=1 width=8) (actual time=0.527..0.591 rows=0 loops=255651)
                                                   Index Cond: (movie_id = ci.movie_id)
                                                   Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=926579 read=18942
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.05 rows=1 width=4) (actual time=0.112..0.112 rows=1 loops=77832)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=310309 read=1139
                                 ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=0.008..0.009 rows=2 loops=72285)
                                       Index Cond: (person_id = ci.person_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=216563 read=540
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.17 rows=1 width=21) (actual time=0.761..0.761 rows=0 loops=165654)
                                 Index Cond: (id = ci.movie_id)
                                 Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=651572 read=11474
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.173..0.173 rows=0 loops=40747)
                           Index Cond: (id = an.person_id)
                           Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=160613 read=2651
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.73 rows=1 width=8) (actual time=13.729..31.225 rows=2 loops=77)
                     Index Cond: (movie_id = ci.movie_id)
                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                     Rows Removed by Filter: 166
                     Buffers: shared hit=1364 read=344
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=184)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Buffers: shared hit=368
 Planning Time: 7402.419 ms
 Execution Time: 346689.936 ms
(70 rows)


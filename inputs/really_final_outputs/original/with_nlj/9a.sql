 Aggregate  (cost=26134.88..26134.88 rows=1 width=96) (actual time=215477.828..215477.828 rows=1 loops=1)
   Buffers: shared hit=1711574 read=232884
   ->  Nested Loop  (cost=0.08..26134.88 rows=1 width=49) (actual time=54075.895..215477.318 rows=121 loops=1)
         Join Filter: (n.id = an.person_id)
         Buffers: shared hit=1711574 read=232884
         ->  Nested Loop  (cost=0.07..26134.81 rows=1 width=41) (actual time=53579.925..214683.644 rows=115 loops=1)
               Buffers: shared hit=1711216 read=232825
               ->  Nested Loop  (cost=0.05..26134.45 rows=2 width=29) (actual time=53565.919..213737.845 rows=125 loops=1)
                     Buffers: shared hit=1710877 read=232704
                     ->  Nested Loop  (cost=0.04..26133.62 rows=5 width=20) (actual time=48911.894..207106.633 rows=329 loops=1)
                           Buffers: shared hit=1709889 read=232372
                           ->  Nested Loop  (cost=0.03..24651.98 rows=5617 width=16) (actual time=5866.125..196142.917 rows=79662 loops=1)
                                 Buffers: shared hit=1401980 read=221167
                                 ->  Nested Loop  (cost=0.01..23820.42 rows=15558 width=20) (actual time=5820.062..186373.473 rows=86056 loops=1)
                                       Buffers: shared hit=1058790 read=220006
                                       ->  Nested Loop  (cost=0.00..16186.09 rows=72136 width=12) (actual time=5638.024..33754.630 rows=276166 loops=1)
                                             Join Filter: (ci.role_id = rt.id)
                                             Rows Removed by Join Filter: 591311
                                             Buffers: shared hit=52377 read=200278
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=50.810..50.813 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared read=1
                                             ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=28.187..33430.325 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared hit=52377 read=200277
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=1 width=8) (actual time=0.497..0.552 rows=0 loops=276166)
                                             Index Cond: (movie_id = ci.movie_id)
                                             Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=1006413 read=19728
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.05 rows=1 width=4) (actual time=0.112..0.112 rows=1 loops=86056)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=343190 read=1161
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=4) (actual time=0.137..0.137 rows=0 loops=79662)
                                 Index Cond: (id = ci.person_id)
                                 Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=307909 read=11205
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.17 rows=1 width=21) (actual time=20.152..20.152 rows=0 loops=329)
                           Index Cond: (id = ci.movie_id)
                           Filter: ((production_year >= 2005) AND (production_year <= 2015))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=988 read=332
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=7.558..7.558 rows=1 loops=125)
                     Index Cond: (id = ci.person_role_id)
                     Buffers: shared hit=339 read=121
         ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=6.648..6.894 rows=1 loops=115)
               Index Cond: (person_id = ci.person_id)
               Buffers: shared hit=358 read=59
 Planning Time: 5097.892 ms
 Execution Time: 215501.680 ms

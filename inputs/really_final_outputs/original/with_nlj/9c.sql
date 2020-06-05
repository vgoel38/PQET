 Aggregate  (cost=35403.31..35403.31 rows=1 width=128) (actual time=143107.533..143107.533 rows=1 loops=1)
   Buffers: shared hit=1392914 read=111253
   ->  Nested Loop  (cost=0.08..35403.25 rows=191 width=64) (actual time=6289.137..143075.382 rows=8144 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=1392914 read=111253
         ->  Nested Loop  (cost=0.07..35391.02 rows=191 width=55) (actual time=6232.082..118763.821 rows=8144 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=1361712 read=109874
               ->  Nested Loop  (cost=0.05..35377.18 rows=220 width=47) (actual time=5434.299..116566.356 rows=4503 loops=1)
                     Buffers: shared hit=1344357 read=109308
                     ->  Nested Loop  (cost=0.04..35366.35 rows=608 width=51) (actual time=5383.747..92441.989 rows=12383 loops=1)
                           Buffers: shared hit=1297067 read=107042
                           ->  Nested Loop  (cost=0.03..35332.88 rows=317 width=43) (actual time=5344.353..40625.083 rows=5686 loops=1)
                                 Buffers: shared hit=1279234 read=103255
                                 ->  Nested Loop  (cost=0.01..35214.03 rows=653 width=31) (actual time=5321.932..16896.628 rows=6552 loops=1)
                                       Buffers: shared hit=1259442 read=100295
                                       ->  Nested Loop  (cost=0.00..16186.09 rows=72136 width=12) (actual time=5212.807..10637.360 rows=276166 loops=1)
                                             Join Filter: (ci.role_id = rt.id)
                                             Rows Removed by Join Filter: 591311
                                             Buffers: shared hit=167561 read=85094
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=9.147..9.150 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared read=1
                                             ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=28.173..10383.909 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared hit=167561 read=85093
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.022..0.022 rows=0 loops=276166)
                                             Index Cond: (id = ci.person_id)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=1091881 read=15201
                                 ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=3.619..3.619 rows=1 loops=6552)
                                       Index Cond: (id = ci.person_role_id)
                                       Buffers: shared hit=19792 read=2960
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=7.787..9.107 rows=2 loops=5686)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Buffers: shared hit=17833 read=3787
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=1.945..1.945 rows=0 loops=12383)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=47290 read=2266
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=0.400..0.484 rows=2 loops=4503)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=17355 read=566
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=2.982..2.982 rows=1 loops=8144)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=31202 read=1379
 Planning Time: 3592.954 ms
 Execution Time: 143145.774 ms

                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=48726.30..48726.30 rows=1 width=128) (actual time=121589.104..121589.105 rows=1 loops=1)
   Buffers: shared hit=1225374 read=95586
   ->  Nested Loop  (cost=0.10..48726.24 rows=191 width=64) (actual time=1153.966..121557.576 rows=8144 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=1225374 read=95586
         ->  Nested Loop  (cost=0.09..48714.01 rows=191 width=55) (actual time=1055.265..100102.769 rows=8144 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=1194170 read=94209
               ->  Nested Loop  (cost=0.07..48700.17 rows=220 width=47) (actual time=215.795..98280.924 rows=4503 loops=1)
                     Buffers: shared hit=1176814 read=93644
                     ->  Nested Loop  (cost=0.06..48689.34 rows=608 width=51) (actual time=173.573..82059.610 rows=12383 loops=1)
                           Buffers: shared hit=1129519 read=91383
                           ->  Nested Loop  (cost=0.05..48655.87 rows=317 width=43) (actual time=141.750..38362.090 rows=5686 loops=1)
                                 Buffers: shared hit=1111682 read=87600
                                 ->  Nested Loop  (cost=0.04..48537.02 rows=653 width=31) (actual time=132.330..17202.970 rows=6552 loops=1)
                                       Buffers: shared hit=1091885 read=84645
                                       ->  Nested Loop  (cost=0.02..29509.08 rows=72136 width=12) (actual time=52.901..9348.452 rows=276166 loops=1)
                                             Buffers: shared hit=2 read=69446
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.036..0.038 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared hit=1 read=1
                                             ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29497.51 rows=78694 width=16) (actual time=52.857..9240.375 rows=276166 loops=1)
                                                   Index Cond: (role_id = rt.id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 7175807
                                                   Buffers: shared hit=1 read=69445
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.028..0.028 rows=0 loops=276166)
                                             Index Cond: (id = ci.person_id)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=1091883 read=15199
                                 ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=3.226..3.226 rows=1 loops=6552)
                                       Index Cond: (id = ci.person_role_id)
                                       Buffers: shared hit=19797 read=2955
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=6.639..7.679 rows=2 loops=5686)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Buffers: shared hit=17837 read=3783
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=1.307..1.307 rows=0 loops=12383)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=47295 read=2261
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=0.338..0.400 rows=2 loops=4503)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=17356 read=565
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=2.631..2.631 rows=1 loops=8144)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=31204 read=1377
 Planning Time: 4613.813 ms
 Execution Time: 121615.909 ms
(50 rows)


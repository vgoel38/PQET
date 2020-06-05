                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=48726.30..48726.30 rows=1 width=128) (actual time=121866.506..121866.507 rows=1 loops=1)
   Buffers: shared hit=1225374 read=95586
   ->  Nested Loop  (cost=0.10..48726.24 rows=191 width=64) (actual time=1206.335..121834.873 rows=8144 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=1225374 read=95586
         ->  Nested Loop  (cost=0.09..48714.01 rows=191 width=55) (actual time=1149.293..100434.618 rows=8144 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=1194170 read=94209
               ->  Nested Loop  (cost=0.07..48700.17 rows=220 width=47) (actual time=243.163..98608.510 rows=4503 loops=1)
                     Buffers: shared hit=1176814 read=93644
                     ->  Nested Loop  (cost=0.06..48689.34 rows=608 width=51) (actual time=200.943..82491.265 rows=12383 loops=1)
                           Buffers: shared hit=1129519 read=91383
                           ->  Nested Loop  (cost=0.05..48655.87 rows=317 width=43) (actual time=169.120..38919.054 rows=5686 loops=1)
                                 Buffers: shared hit=1111682 read=87600
                                 ->  Nested Loop  (cost=0.04..48537.02 rows=653 width=31) (actual time=160.013..17640.176 rows=6552 loops=1)
                                       Buffers: shared hit=1091885 read=84645
                                       ->  Nested Loop  (cost=0.02..29509.08 rows=72136 width=12) (actual time=55.274..9818.171 rows=276166 loops=1)
                                             Buffers: shared hit=2 read=69446
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.034 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared hit=1 read=1
                                             ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29497.51 rows=78694 width=16) (actual time=55.234..9703.976 rows=276166 loops=1)
                                                   Index Cond: (role_id = rt.id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 7175807
                                                   Buffers: shared hit=1 read=69445
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.027..0.027 rows=0 loops=276166)
                                             Index Cond: (id = ci.person_id)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=1091883 read=15199
                                 ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=3.245..3.245 rows=1 loops=6552)
                                       Index Cond: (id = ci.person_role_id)
                                       Buffers: shared hit=19797 read=2955
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=6.611..7.657 rows=2 loops=5686)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Buffers: shared hit=17837 read=3783
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=1.299..1.299 rows=0 loops=12383)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=47295 read=2261
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=0.336..0.401 rows=2 loops=4503)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=17356 read=565
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=2.625..2.625 rows=1 loops=8144)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=31204 read=1377
 Planning Time: 4738.740 ms
 Execution Time: 121890.574 ms
(50 rows)


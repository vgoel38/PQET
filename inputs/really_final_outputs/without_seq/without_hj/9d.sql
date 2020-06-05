                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=53325.27..53325.27 rows=1 width=128) (actual time=483008.927..483008.927 rows=1 loops=1)
   Buffers: shared hit=10453709 read=152950
   ->  Nested Loop  (cost=0.10..53323.75 rows=4872 width=64) (actual time=462.343..482420.749 rows=483082 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=10453709 read=152950
         ->  Nested Loop  (cost=0.09..53011.73 rows=4872 width=55) (actual time=409.803..325551.274 rows=483082 loops=1)
               Buffers: shared hit=8536452 read=136772
               ->  Nested Loop  (cost=0.07..52771.34 rows=13494 width=59) (actual time=276.342..294696.879 rows=909946 loops=1)
                     Buffers: shared hit=4899005 read=133266
                     ->  Nested Loop  (cost=0.06..52029.46 rows=7026 width=51) (actual time=230.182..146397.540 rows=482841 loops=1)
                           Buffers: shared hit=3052767 read=118231
                           ->  Nested Loop  (cost=0.05..51562.15 rows=8081 width=43) (actual time=90.693..140372.040 rows=255493 loops=1)
                                 Buffers: shared hit=2086842 read=111537
                                 ->  Nested Loop  (cost=0.04..48531.42 rows=16652 width=31) (actual time=72.221..15450.394 rows=276005 loops=1)
                                       Buffers: shared hit=1091055 read=84645
                                       ->  Nested Loop  (cost=0.02..29509.08 rows=72136 width=12) (actual time=55.285..6596.603 rows=276166 loops=1)
                                             Buffers: shared hit=2 read=69446
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.034 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared hit=1 read=1
                                             ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29497.51 rows=78694 width=16) (actual time=55.244..6460.425 rows=276166 loops=1)
                                                   Index Cond: (role_id = rt.id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 7175807
                                                   Buffers: shared hit=1 read=69445
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.030..0.030 rows=1 loops=276166)
                                             Index Cond: (id = ci.person_id)
                                             Filter: ((gender)::text = 'f'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=1091053 read=15199
                                 ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.451..0.451 rows=1 loops=276005)
                                       Index Cond: (id = ci.person_role_id)
                                       Buffers: shared hit=995787 read=26892
                           ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=0.019..0.021 rows=2 loops=255493)
                                 Index Cond: (person_id = n.id)
                                 Buffers: shared hit=965925 read=6694
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=0.250..0.305 rows=2 loops=482841)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=1846238 read=15035
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=909946)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=3637447 read=3506
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.323..0.323 rows=1 loops=483082)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=1917257 read=16178
 Planning Time: 4930.312 ms
 Execution Time: 483024.720 ms
(49 rows)


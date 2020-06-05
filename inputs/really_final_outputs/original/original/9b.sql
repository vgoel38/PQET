                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4254.21..4254.21 rows=1 width=128) (actual time=30305.202..30305.202 rows=1 loops=1)
   Buffers: shared hit=7740 read=69085
   ->  Nested Loop  (cost=2680.39..4254.21 rows=1 width=64) (actual time=8933.499..30304.956 rows=40 loops=1)
         Buffers: shared hit=7740 read=69085
         ->  Nested Loop  (cost=2680.37..4254.01 rows=1 width=55) (actual time=3540.070..28850.664 rows=94 loops=1)
               Buffers: shared hit=7438 read=69011
               ->  Nested Loop  (cost=2680.36..4253.79 rows=1 width=43) (actual time=3528.157..28488.138 rows=97 loops=1)
                     Buffers: shared hit=7123 read=68950
                     ->  Nested Loop  (cost=2680.35..4253.25 rows=4 width=47) (actual time=3248.605..27662.532 rows=103 loops=1)
                           Buffers: shared hit=6767 read=68894
                           ->  Hash Join  (cost=2680.33..4246.96 rows=50 width=39) (actual time=3190.520..23584.756 rows=265 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=5883 read=68633
                                 ->  Nested Loop  (cost=2680.30..4246.87 rows=601 width=43) (actual time=3190.408..23583.919 rows=265 loops=1)
                                       Join Filter: (n.id = ci.person_id)
                                       Buffers: shared hit=5879 read=68633
                                       ->  Hash Join  (cost=2680.28..3173.51 rows=879 width=39) (actual time=2712.386..4271.485 rows=1296 loops=1)
                                             Hash Cond: (an.person_id = n.id)
                                             Buffers: shared hit=4 read=67004
                                             ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.010..1154.448 rows=901343 loops=1)
                                                   Buffers: shared hit=2 read=11393
                                             ->  Hash  (cost=2679.69..2679.69 rows=4063 width=19) (actual time=2705.310..2705.311 rows=5409 loops=1)
                                                   Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                                   Buffers: shared hit=2 read=55611
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4063 width=19) (actual time=1196.815..2701.253 rows=5409 loops=1)
                                                         Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4162082
                                                         Buffers: shared hit=2 read=55611
                                       ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..1.22 rows=1 width=16) (actual time=14.703..14.898 rows=0 loops=1296)
                                             Index Cond: (person_id = an.person_id)
                                             Filter: (note = '(voice)'::text)
                                             Rows Removed by Filter: 43
                                             Buffers: shared hit=5875 read=1629
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.054..0.054 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.036..0.041 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.13 rows=1 width=8) (actual time=14.404..15.384 rows=0 loops=265)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                 Rows Removed by Filter: 4
                                 Buffers: shared hit=884 read=261
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.14 rows=1 width=4) (actual time=8.010..8.010 rows=1 loops=103)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=356 read=56
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.22 rows=1 width=20) (actual time=3.731..3.731 rows=1 loops=97)
                     Index Cond: (id = ci.person_role_id)
                     Buffers: shared hit=315 read=61
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.20 rows=1 width=21) (actual time=15.467..15.467 rows=0 loops=94)
               Index Cond: (id = ci.movie_id)
               Filter: ((production_year >= 2007) AND (production_year <= 2010))
               Rows Removed by Filter: 1
               Buffers: shared hit=302 read=74
 Planning Time: 4670.850 ms
 Execution Time: 30306.091 ms
(60 rows)


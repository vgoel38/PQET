                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3907.36..3907.36 rows=1 width=128) (actual time=23045.864..23045.864 rows=1 loops=1)
   Buffers: shared hit=7725 read=69100
   ->  Nested Loop  (cost=2680.20..3907.36 rows=1 width=64) (actual time=7363.459..23045.632 rows=40 loops=1)
         Buffers: shared hit=7725 read=69100
         ->  Nested Loop  (cost=2680.18..3907.16 rows=1 width=55) (actual time=3603.225..21624.754 rows=94 loops=1)
               Buffers: shared hit=7424 read=69025
               ->  Nested Loop  (cost=2680.17..3906.94 rows=1 width=43) (actual time=3583.063..21200.959 rows=97 loops=1)
                     Buffers: shared hit=7111 read=68962
                     ->  Nested Loop  (cost=2680.16..3906.67 rows=2 width=47) (actual time=3345.145..20422.610 rows=103 loops=1)
                           Buffers: shared hit=6758 read=68903
                           ->  Hash Join  (cost=2680.14..3902.39 rows=34 width=39) (actual time=3312.324..17436.213 rows=265 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=5876 read=68640
                                 ->  Nested Loop  (cost=2680.11..3902.32 rows=410 width=43) (actual time=3312.223..17435.366 rows=265 loops=1)
                                       Join Filter: (n.id = ci.person_id)
                                       Buffers: shared hit=5873 read=68639
                                       ->  Hash Join  (cost=2680.09..3173.32 rows=597 width=39) (actual time=2909.387..4500.062 rows=1296 loops=1)
                                             Hash Cond: (an.person_id = n.id)
                                             Buffers: shared read=67008
                                             ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=15.341..1228.528 rows=901343 loops=1)
                                                   Buffers: shared read=11395
                                             ->  Hash  (cost=2679.69..2679.69 rows=2762 width=19) (actual time=2886.551..2886.552 rows=5409 loops=1)
                                                   Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                                   Buffers: shared read=55613
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=2762 width=19) (actual time=1219.713..2882.455 rows=5409 loops=1)
                                                         Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4162082
                                                         Buffers: shared read=55613
                                       ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..1.22 rows=1 width=16) (actual time=9.818..9.977 rows=0 loops=1296)
                                             Index Cond: (person_id = an.person_id)
                                             Filter: (note = '(voice)'::text)
                                             Rows Removed by Filter: 43
                                             Buffers: shared hit=5873 read=1631
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.078..0.078 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.071..0.072 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.13 rows=1 width=8) (actual time=10.304..11.266 rows=0 loops=265)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                 Rows Removed by Filter: 4
                                 Buffers: shared hit=882 read=263
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.14 rows=1 width=4) (actual time=7.551..7.551 rows=1 loops=103)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=353 read=59
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.22 rows=1 width=20) (actual time=4.363..4.363 rows=1 loops=97)
                     Index Cond: (id = ci.person_role_id)
                     Buffers: shared hit=313 read=63
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.20 rows=1 width=21) (actual time=15.112..15.112 rows=0 loops=94)
               Index Cond: (id = ci.movie_id)
               Filter: ((production_year >= 2007) AND (production_year <= 2010))
               Rows Removed by Filter: 1
               Buffers: shared hit=301 read=75
 Planning Time: 3932.900 ms
 Execution Time: 23046.566 ms
(60 rows)


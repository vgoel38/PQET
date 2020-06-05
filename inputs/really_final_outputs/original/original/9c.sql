                                                                                  QUERY PLAN                                                                                   
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13537.75..13537.75 rows=1 width=128) (actual time=137682.189..137682.189 rows=1 loops=1)
   Buffers: shared hit=208209 read=87314
   ->  Nested Loop  (cost=2685.45..13537.69 rows=193 width=64) (actual time=3692.838..137651.496 rows=8144 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=208209 read=87314
         ->  Nested Loop  (cost=2685.44..13525.33 rows=193 width=55) (actual time=3651.449..116415.997 rows=8144 loops=1)
               Buffers: shared hit=177005 read=85937
               ->  Nested Loop  (cost=2685.42..13515.80 rows=535 width=59) (actual time=3093.293..103192.015 rows=18345 loops=1)
                     Buffers: shared hit=105235 read=84294
                     ->  Nested Loop  (cost=2685.41..13486.18 rows=280 width=51) (actual time=3044.122..69754.963 rows=7726 loops=1)
                           Buffers: shared hit=77341 read=82220
                           ->  Hash Join  (cost=2685.40..13380.94 rows=577 width=39) (actual time=3018.827..57557.385 rows=8204 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=48040 read=80605
                                 ->  Nested Loop  (cost=2685.36..13380.28 rows=6919 width=43) (actual time=3018.789..57543.389 rows=8204 loops=1)
                                       Join Filter: (n.id = ci.person_id)
                                       Buffers: shared hit=48036 read=80605
                                       ->  Hash Join  (cost=2685.35..3178.57 rows=8338 width=39) (actual time=2714.515..3644.756 rows=10525 loops=1)
                                             Hash Cond: (an.person_id = n.id)
                                             Buffers: shared hit=4 read=67004
                                             ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.002..399.183 rows=901343 loops=1)
                                                   Buffers: shared hit=2 read=11393
                                             ->  Hash  (cost=2679.69..2679.69 rows=38551 width=19) (actual time=2709.065..2709.065 rows=50011 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                   Buffers: shared hit=2 read=55611
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=38551 width=19) (actual time=1200.292..2679.593 rows=50011 loops=1)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4117480
                                                         Buffers: shared hit=2 read=55611
                                       ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..1.22 rows=1 width=16) (actual time=4.926..5.118 rows=1 loops=10525)
                                             Index Cond: (person_id = an.person_id)
                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 44
                                             Buffers: shared hit=48032 read=13601
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=1.484..1.484 rows=1 loops=8204)
                                 Index Cond: (id = ci.person_role_id)
                                 Buffers: shared hit=29301 read=1615
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=3.819..4.324 rows=2 loops=7726)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=27894 read=2074
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.719..0.719 rows=0 loops=18345)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=71770 read=1643
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=2.605..2.605 rows=1 loops=8144)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=31204 read=1377
 Planning Time: 4433.793 ms
 Execution Time: 137683.052 ms
(57 rows)


                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34639.81..34639.81 rows=1 width=64) (actual time=14879.235..14879.235 rows=1 loops=1)
   Buffers: shared hit=440524 read=72820
   ->  Nested Loop  (cost=0.09..34639.81 rows=1 width=33) (actual time=7523.801..14878.885 rows=62 loops=1)
         Buffers: shared hit=440524 read=72820
         ->  Nested Loop  (cost=0.07..34638.39 rows=1 width=24) (actual time=7473.565..13984.679 rows=62 loops=1)
               Buffers: shared hit=440328 read=72768
               ->  Nested Loop  (cost=0.06..34637.64 rows=1 width=28) (actual time=7433.582..13639.995 rows=64 loops=1)
                     Buffers: shared hit=440115 read=72725
                     ->  Nested Loop  (cost=0.05..34607.35 rows=35 width=20) (actual time=7394.849..12420.268 rows=659 loops=1)
                           Buffers: shared hit=437846 read=72600
                           ->  Nested Loop  (cost=0.03..32891.68 rows=6758 width=28) (actual time=203.231..10026.367 rows=75365 loops=1)
                                 Buffers: shared hit=136015 read=70997
                                 ->  Nested Loop  (cost=0.02..29248.41 rows=7772 width=8) (actual time=79.555..7464.622 rows=34848 loops=1)
                                       Buffers: shared hit=1 read=69447
                                       ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.037..0.040 rows=1 loops=1)
                                             Index Cond: ((role)::text = 'actress'::text)
                                             Buffers: shared hit=1 read=1
                                       ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29241.70 rows=8479 width=12) (actual time=79.479..7452.424 rows=34848 loops=1)
                                             Index Cond: (role_id = rt.id)
                                             Filter: (note = '(voice: English version)'::text)
                                             Rows Removed by Filter: 7417125
                                             Buffers: shared read=69446
                                 ->  Index Scan using person_id_aka_name on aka_name an1  (cost=0.01..0.47 rows=2 width=20) (actual time=0.065..0.072 rows=2 loops=34848)
                                       Index Cond: (person_id = ci.person_id)
                                       Buffers: shared hit=136014 read=1550
                           ->  Index Scan using name_pkey on name n1  (cost=0.01..0.25 rows=1 width=4) (actual time=0.031..0.031 rows=0 loops=75365)
                                 Index Cond: (id = an1.person_id)
                                 Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=301831 read=1603
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.87 rows=1 width=8) (actual time=1.658..1.850 rows=0 loops=659)
                           Index Cond: (movie_id = ci.movie_id)
                           Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=2269 read=125
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.75 rows=1 width=4) (actual time=5.381..5.381 rows=1 loops=64)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[jp]'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=213 read=43
         ->  Index Scan using title_idx_id on title t  (cost=0.01..1.42 rows=1 width=21) (actual time=14.417..14.417 rows=1 loops=62)
               Index Cond: (id = ci.movie_id)
               Buffers: shared hit=196 read=52
 Planning Time: 4572.490 ms
 Execution Time: 14905.686 ms
(45 rows)


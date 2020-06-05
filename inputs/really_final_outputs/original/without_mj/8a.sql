                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3188.65..3188.65 rows=1 width=64) (actual time=933424.427..933424.427 rows=1 loops=1)
   Buffers: shared hit=1613601 read=243700
   ->  Nested Loop  (cost=1804.55..3188.65 rows=1 width=33) (actual time=144512.970..933424.125 rows=62 loops=1)
         Buffers: shared hit=1613601 read=243700
         ->  Nested Loop  (cost=1804.53..3188.15 rows=2 width=41) (actual time=2303.371..926746.128 rows=17379 loops=1)
               Buffers: shared hit=1544890 read=242760
               ->  Hash Join  (cost=1804.52..3186.74 rows=3 width=21) (actual time=2256.130..917034.023 rows=7438 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared hit=1516891 read=241707
                     ->  Nested Loop  (cost=1804.49..3186.70 rows=31 width=25) (actual time=2256.010..917012.062 rows=19600 loops=1)
                           Buffers: shared hit=1516888 read=241706
                           ->  Hash Join  (cost=1804.47..2980.70 rows=458 width=25) (actual time=2142.341..3988.900 rows=48328 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared read=57781
                                 ->  Hash Join  (cost=129.40..1305.59 rows=458 width=4) (actual time=152.605..1882.330 rows=48328 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=15927 width=8) (actual time=14.692..1626.294 rows=48897 loops=1)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                                             Rows Removed by Filter: 2560232
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=137.832..137.833 rows=6752 loops=1)
                                             Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=2.705..134.281 rows=6752 loops=1)
                                                   Filter: ((country_code)::text = '[jp]'::text)
                                                   Rows Removed by Filter: 228245
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1979.572..1979.572 rows=2528312 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=5.019..1094.498 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.45 rows=1 width=12) (actual time=18.375..18.889 rows=0 loops=48328)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 32
                                 Buffers: shared hit=1516888 read=183925
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.069..0.069 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.064..0.066 rows=1 loops=1)
                                 Filter: ((role)::text = 'actress'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
               ->  Index Scan using person_id_aka_name on aka_name an1  (cost=0.01..0.47 rows=2 width=20) (actual time=1.183..1.302 rows=2 loops=7438)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=27999 read=1053
         ->  Index Scan using name_pkey on name n1  (cost=0.01..0.25 rows=1 width=4) (actual time=0.383..0.383 rows=0 loops=17379)
               Index Cond: (id = an1.person_id)
               Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=68711 read=940
 Planning Time: 3918.127 ms
 Execution Time: 933428.606 ms
(55 rows)


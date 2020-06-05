                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22230.73..22230.73 rows=1 width=128) (actual time=350659.514..350659.514 rows=1 loops=1)
   Buffers: shared hit=8366852 read=386146
   ->  Nested Loop  (cost=4318.72..22229.22 rows=4872 width=64) (actual time=8850.670..350114.884 rows=483082 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=8366852 read=386146
         ->  Nested Loop  (cost=4318.71..21917.20 rows=4872 width=55) (actual time=8798.101..198444.360 rows=483082 loops=1)
               Buffers: shared hit=6449598 read=369965
               ->  Nested Loop  (cost=4318.69..21676.81 rows=13494 width=59) (actual time=8689.645..171063.595 rows=909946 loops=1)
                     Buffers: shared hit=2812158 read=366452
                     ->  Nested Loop  (cost=4318.68..20934.93 rows=7026 width=51) (actual time=8635.140..26559.583 rows=482841 loops=1)
                           Buffers: shared hit=965926 read=351411
                           ->  Hash Join  (cost=4318.67..20467.61 rows=8081 width=43) (actual time=8593.577..20975.347 rows=255493 loops=1)
                                 Hash Cond: (ci.person_role_id = chn.id)
                                 Buffers: shared hit=3 read=344715
                                 ->  Hash Join  (cost=2497.36..18644.95 rows=16652 width=31) (actual time=6557.619..18622.290 rows=276005 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared read=308268
                                       ->  Hash Join  (cost=2497.33..18626.90 rows=199818 width=35) (actual time=6537.136..18335.762 rows=276090 loops=1)
                                             Hash Cond: (ci.person_id = n.id)
                                             Buffers: shared read=308267
                                             ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=19.822..15244.597 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared read=252654
                                             ->  Hash  (cost=2356.12..2356.12 rows=961996 width=19) (actual time=2602.188..2602.188 rows=961555 loops=1)
                                                   Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                                   Buffers: shared read=55613
                                                   ->  Seq Scan on name n  (cost=0.00..2356.12 rows=961996 width=19) (actual time=1093.352..2310.006 rows=961555 loops=1)
                                                         Filter: ((gender)::text = 'f'::text)
                                                         Rows Removed by Filter: 3205936
                                                         Buffers: shared read=55613
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=20.459..20.459 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=20.441..20.448 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=2026.401..2026.401 rows=3140339 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                       Buffers: shared read=36447
                                       ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=15.078..1009.199 rows=3140339 loops=1)
                                             Buffers: shared read=36447
                           ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=0.018..0.020 rows=2 loops=255493)
                                 Index Cond: (person_id = n.id)
                                 Buffers: shared hit=965923 read=6696
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=0.243..0.297 rows=2 loops=482841)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=1846232 read=15041
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.029..0.029 rows=1 loops=909946)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=3637440 read=3513
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.312..0.312 rows=1 loops=483082)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=1917254 read=16181
 Planning Time: 3881.977 ms
 Execution Time: 350664.382 ms
(59 rows)


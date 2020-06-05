                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17868.92..17868.92 rows=1 width=64) (actual time=16878.761..16878.761 rows=1 loops=1)
   Buffers: shared hit=3 read=346884
   ->  Hash Join  (cost=4481.03..17868.90 rows=100 width=33) (actual time=16878.756..16878.756 rows=0 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=3 read=346884
         ->  Hash Join  (cost=4481.00..17868.86 rows=100 width=37) (actual time=16878.500..16878.501 rows=0 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared read=346883
               ->  Hash Join  (cost=2659.69..16047.54 rows=205 width=25) (actual time=15099.256..15099.256 rows=0 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared read=310436
                     ->  Hash Join  (cost=0.03..13373.99 rows=119151 width=8) (actual time=1110.756..12326.984 rows=13 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared read=252655
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=1429807 width=12) (actual time=1089.072..12086.195 rows=1435439 loops=1)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 34808905
                                 Buffers: shared read=252654
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.653..21.653 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.632..21.640 rows=1 loops=1)
                                       Filter: ((role)::text = 'actor'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared read=1
                     ->  Hash  (cost=2659.31..2659.31 rows=2341 width=29) (actual time=2772.202..2772.202 rows=1259 loops=1)
                           Buckets: 4096  Batches: 1  Memory Usage: 108kB
                           Buffers: shared read=57781
                           ->  Hash Join  (cost=1113.28..2659.31 rows=2341 width=29) (actual time=1067.693..2770.867 rows=1259 loops=1)
                                 Hash Cond: (t.id = mc.movie_id)
                                 Buffers: shared read=57781
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=22.842..1603.224 rows=391666 loops=1)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 2136646
                                       Buffers: shared read=35998
                                 ->  Hash  (cost=1111.06..1111.06 rows=15111 width=8) (actual time=1037.290..1037.290 rows=8790 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared read=21783
                                       ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=147.482..1033.809 rows=8790 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared read=21783
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=4.591..438.121 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=138.793..138.793 rows=1361 loops=1)
                                                   Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=3.237..137.894 rows=1361 loops=1)
                                                         Filter: ((country_code)::text = '[ru]'::text)
                                                         Rows Removed by Filter: 233636
                                                         Buffers: shared read=2994
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1752.577..1752.577 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared read=36447
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=23.221..767.395 rows=3140339 loops=1)
                           Buffers: shared read=36447
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.188..0.188 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.172..0.175 rows=4 loops=1)
                     Buffers: shared read=1
 Planning Time: 2210.248 ms
 Execution Time: 16904.762 ms
(62 rows)


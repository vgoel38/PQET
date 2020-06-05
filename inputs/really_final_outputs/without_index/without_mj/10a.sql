                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20645.04..20645.04 rows=1 width=64) (actual time=16667.395..16667.396 rows=1 loops=1)
   Buffers: shared hit=3 read=346884
   ->  Hash Join  (cost=4583.49..20645.04 rows=4 width=33) (actual time=4816.374..16667.020 rows=104 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=3 read=346884
         ->  Hash Join  (cost=4583.46..20645.01 rows=4 width=37) (actual time=4816.209..16666.687 rows=104 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared read=346883
               ->  Hash Join  (cost=2762.15..18823.70 rows=8 width=25) (actual time=3072.404..14922.661 rows=112 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared read=310436
                     ->  Hash Join  (cost=2762.12..18823.66 rows=97 width=29) (actual time=3045.591..14895.618 rows=151 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared read=310435
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=21794 width=12) (actual time=29.560..11905.245 rows=32288 loops=1)
                                 Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                 Rows Removed by Filter: 36212056
                                 Buffers: shared read=252654
                           ->  Hash  (cost=2761.23..2761.23 rows=6054 width=29) (actual time=2977.518..2977.518 rows=4539 loops=1)
                                 Buckets: 8192  Batches: 1  Memory Usage: 339kB
                                 Buffers: shared read=57781
                                 ->  Hash Join  (cost=1777.54..2761.23 rows=6054 width=29) (actual time=2084.438..2975.258 rows=4539 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared read=57781
                                       ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=148.853..1034.427 rows=8790 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared read=21783
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=6.329..450.412 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=138.546..138.546 rows=1361 loops=1)
                                                   Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=3.240..137.655 rows=1361 loops=1)
                                                         Filter: ((country_code)::text = '[ru]'::text)
                                                         Rows Removed by Filter: 233636
                                                         Buffers: shared read=2994
                                       ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1932.835..1932.835 rows=1012920 loops=1)
                                             Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                             Buffers: shared read=35998
                                             ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=8.274..1469.250 rows=1012920 loops=1)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1515392
                                                   Buffers: shared read=35998
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=26.793..26.793 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=26.774..26.782 rows=1 loops=1)
                                 Filter: ((role)::text = 'actor'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1733.393..1733.393 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared read=36447
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=20.010..755.187 rows=3140339 loops=1)
                           Buffers: shared read=36447
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.114..0.114 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.092..0.095 rows=4 loops=1)
                     Buffers: shared read=1
 Planning Time: 1959.333 ms
 Execution Time: 16670.537 ms
(62 rows)


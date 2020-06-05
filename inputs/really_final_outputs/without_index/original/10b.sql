                                                                           QUERY PLAN                                                                            
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17877.38..17877.38 rows=1 width=64) (actual time=16803.397..16803.397 rows=1 loops=1)
   Buffers: shared hit=17 read=346870
   ->  Hash Join  (cost=4492.40..17877.37 rows=100 width=33) (actual time=16803.388..16803.388 rows=0 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=17 read=346870
         ->  Hash Join  (cost=4492.37..17877.32 rows=100 width=37) (actual time=16803.342..16803.342 rows=0 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=13 read=346870
               ->  Hash Join  (cost=2671.06..16056.00 rows=206 width=25) (actual time=14916.296..14916.296 rows=0 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=11 read=310425
                     ->  Hash Join  (cost=1557.78..14940.55 rows=18624 width=29) (actual time=13747.764..13747.764 rows=0 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=6 read=288647
                           ->  Hash Join  (cost=1557.75..14920.35 rows=223486 width=33) (actual time=7967.919..13718.420 rows=263043 loops=1)
                                 Hash Cond: (ci.movie_id = t.id)
                                 Buffers: shared hit=5 read=288647
                                 ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=1442662 width=12) (actual time=845.746..11517.258 rows=1435439 loops=1)
                                       Filter: (note ~~ '%(producer)%'::text)
                                       Rows Removed by Filter: 34808905
                                       Buffers: shared hit=4 read=252650
                                 ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1716.557..1716.558 rows=391666 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=9.015..1495.225 rows=391666 loops=1)
                                             Filter: (production_year > 2010)
                                             Rows Removed by Filter: 2136646
                                             Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                       Filter: ((role)::text = 'actor'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1111.06..1111.06 rows=15111 width=8) (actual time=1168.481..1168.481 rows=8790 loops=1)
                           Buckets: 16384  Batches: 1  Memory Usage: 472kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=148.105..1165.052 rows=8790 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.006..560.811 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=144.219..144.219 rows=1361 loops=1)
                                       Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=8.550..143.351 rows=1361 loops=1)
                                             Filter: ((country_code)::text = '[ru]'::text)
                                             Rows Removed by Filter: 233636
                                             Buffers: shared hit=2 read=2992
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1875.585..1875.585 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=2 read=36445
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=21.413..871.480 rows=3140339 loops=1)
                           Buffers: shared hit=2 read=36445
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.014..0.014 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.007 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2540.393 ms
 Execution Time: 16807.284 ms
(62 rows)


                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20644.67..20644.67 rows=1 width=64) (actual time=16658.320..16658.320 rows=1 loops=1)
   Buffers: shared hit=17 read=346870
   ->  Hash Join  (cost=4583.49..20644.67 rows=4 width=33) (actual time=4714.996..16657.943 rows=104 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=17 read=346870
         ->  Hash Join  (cost=4583.46..20644.63 rows=4 width=37) (actual time=4714.964..16657.770 rows=104 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=13 read=346870
               ->  Hash Join  (cost=2762.15..18823.33 rows=8 width=25) (actual time=2965.321..14907.920 rows=112 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=11 read=310425
                     ->  Hash Join  (cost=0.03..16061.00 rows=1816 width=8) (actual time=7.403..11978.222 rows=25874 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=5 read=252650
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=21794 width=12) (actual time=7.328..11963.438 rows=32288 loops=1)
                                 Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                 Rows Removed by Filter: 36212056
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.030..0.030 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.021 rows=1 loops=1)
                                       Filter: ((role)::text = 'actor'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=2761.23..2761.23 rows=6054 width=29) (actual time=2921.008..2921.008 rows=4539 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 339kB
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=1777.54..2761.23 rows=6054 width=29) (actual time=2018.173..2918.680 rows=4539 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=6 read=57775
                                 ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=148.664..1043.771 rows=8790 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.009..440.820 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=145.315..145.315 rows=1361 loops=1)
                                             Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=9.586..144.379 rows=1361 loops=1)
                                                   Filter: ((country_code)::text = '[ru]'::text)
                                                   Rows Removed by Filter: 233636
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1864.600..1864.600 rows=1012920 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=6.335..1393.722 rows=1012920 loops=1)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1515392
                                             Buffers: shared hit=1 read=35997
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1739.717..1739.717 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=2 read=36445
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=19.039..754.463 rows=3140339 loops=1)
                           Buffers: shared hit=2 read=36445
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.007..0.007 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.003..0.004 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2477.386 ms
 Execution Time: 16662.164 ms
(62 rows)


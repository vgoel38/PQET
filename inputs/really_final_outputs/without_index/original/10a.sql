                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20645.04..20645.04 rows=1 width=64) (actual time=16779.588..16779.589 rows=1 loops=1)
   Buffers: shared hit=17 read=346870
   ->  Hash Join  (cost=4583.49..20645.04 rows=4 width=33) (actual time=4838.172..16779.196 rows=104 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=17 read=346870
         ->  Hash Join  (cost=4583.46..20645.01 rows=4 width=37) (actual time=4838.081..16778.949 rows=104 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=13 read=346870
               ->  Hash Join  (cost=2762.15..18823.70 rows=8 width=25) (actual time=2929.132..14869.787 rows=112 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared hit=11 read=310425
                     ->  Hash Join  (cost=2762.12..18823.66 rows=97 width=29) (actual time=2929.094..14869.529 rows=151 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=10 read=310425
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=21794 width=12) (actual time=11.325..11978.622 rows=32288 loops=1)
                                 Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                 Rows Removed by Filter: 36212056
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=2761.23..2761.23 rows=6054 width=29) (actual time=2877.599..2877.599 rows=4539 loops=1)
                                 Buckets: 8192  Batches: 1  Memory Usage: 339kB
                                 Buffers: shared hit=6 read=57775
                                 ->  Hash Join  (cost=1777.54..2761.23 rows=6054 width=29) (actual time=1984.595..2875.397 rows=4539 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=6 read=57775
                                       ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=148.994..1034.498 rows=8790 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.012..438.350 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=144.830..144.831 rows=1361 loops=1)
                                                   Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=9.635..143.974 rows=1361 loops=1)
                                                         Filter: ((country_code)::text = '[ru]'::text)
                                                         Rows Removed by Filter: 233636
                                                         Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1830.864..1830.864 rows=1012920 loops=1)
                                             Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                             Buffers: shared hit=1 read=35997
                                             ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=6.257..1369.749 rows=1012920 loops=1)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1515392
                                                   Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                                 Filter: ((role)::text = 'actor'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared hit=1
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1898.285..1898.285 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=2 read=36445
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=14.992..880.819 rows=3140339 loops=1)
                           Buffers: shared hit=2 read=36445
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.028..0.028 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.011..0.014 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2555.191 ms
 Execution Time: 16785.036 ms
(62 rows)


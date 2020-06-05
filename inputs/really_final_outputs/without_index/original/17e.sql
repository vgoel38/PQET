                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21702.68..21702.68 rows=1 width=32) (actual time=19415.693..19415.693 rows=1 loops=1)
   Buffers: shared hit=19 read=391435
   ->  Hash Join  (cost=7050.49..21702.62 rows=781 width=15) (actual time=6938.739..19004.167 rows=2832555 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=19 read=391435
         ->  Hash Join  (cost=4406.22..19058.29 rows=781 width=4) (actual time=4300.083..15547.276 rows=2832555 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=15 read=335823
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.008..4255.381 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=4406.21..4406.21 rows=68 width=12) (actual time=4300.050..4300.050 rows=68316 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
                     Buffers: shared hit=11 read=83173
                     ->  Hash Join  (cost=3314.04..4406.21 rows=68 width=12) (actual time=3171.064..4281.050 rows=68316 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=11 read=83173
                           ->  Hash Join  (cost=1638.97..2731.13 rows=68 width=8) (actual time=1447.198..2524.442 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=10 read=47176
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=196.411..1082.974 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..297.458 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=196.087..196.087 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.210..163.555 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1242.870..1242.870 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=5 read=25398
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=83.753..1232.434 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=5 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..542.256 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=83.675..83.676 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=22.606..83.664 rows=1 loops=1)
                                                         Filter: (keyword = 'character-name-in-title'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared hit=2 read=947
                           ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=4) (actual time=1714.169..1714.169 rows=2528312 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=6.391..890.173 rows=2528312 loops=1)
                                       Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2628.232..2628.232 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=21.358..1250.009 rows=4167491 loops=1)
                     Buffers: shared hit=1 read=55612
 Planning Time: 5540.195 ms
 Execution Time: 19423.861 ms
(58 rows)


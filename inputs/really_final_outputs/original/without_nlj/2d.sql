                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4286.24..4286.24 rows=1 width=32) (actual time=4513.517..4513.517 rows=1 loops=1)
   Buffers: shared hit=12 read=82230
   ->  Hash Join  (cost=2687.82..4286.23 rows=68 width=17) (actual time=2671.878..4479.268 rows=68316 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=12 read=82230
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.627..1082.592 rows=2528312 loops=1)
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2687.81..2687.81 rows=68 width=8) (actual time=2642.494..2642.494 rows=68316 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
               Buffers: shared hit=8 read=46233
               ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1355.225..2625.470 rows=68316 loops=1)
                     Hash Cond: (mc.movie_id = mk.movie_id)
                     Buffers: shared hit=8 read=46233
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=146.356..1218.889 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.010..454.908 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.345..145.345 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=6.990..112.453 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1199.936..1199.936 rows=41840 loops=1)
                           Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                           Buffers: shared hit=3 read=24455
                           ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=38.040..1189.213 rows=41840 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=3 read=24455
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.008..536.118 rows=4523930 loops=1)
                                       Buffers: shared hit=3 read=24451
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=37.917..37.917 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=37.902..37.905 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
 Planning Time: 2281.568 ms
 Execution Time: 4530.938 ms
(41 rows)


                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20503.63..20503.63 rows=1 width=64) (actual time=19404.590..19404.591 rows=1 loops=1)
   Buffers: shared hit=17 read=390492
   ->  Hash Join  (cost=6769.51..20503.62 rows=65 width=15) (actual time=7093.614..19349.503 rows=258289 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=17 read=390492
         ->  Hash Join  (cost=2406.62..15792.32 rows=2991663 width=19) (actual time=2802.950..14517.927 rows=3118033 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.013..5471.532 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2356.12..2356.12 rows=343991 width=19) (actual time=2616.573..2616.574 rows=343399 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 21878kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=343991 width=19) (actual time=65.912..2493.287 rows=343399 loops=1)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 3824092
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=4362.88..4362.88 rows=68 width=12) (actual time=4290.598..4290.598 rows=68316 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
               Buffers: shared hit=9 read=82230
               ->  Hash Join  (cost=3270.71..4362.88 rows=68 width=12) (actual time=3156.995..4271.206 rows=68316 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=9 read=82230
                     ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1397.368..2479.096 rows=68316 loops=1)
                           Hash Cond: (mc.movie_id = mk.movie_id)
                           Buffers: shared hit=8 read=46233
                           ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=144.123..1038.605 rows=1153798 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.008..305.557 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=143.790..143.790 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.159..112.892 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1244.157..1244.157 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                 Buffers: shared hit=3 read=24455
                                 ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=40.789..1233.347 rows=41840 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=3 read=24455
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..582.924 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=40.666..40.666 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=40.651..40.655 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=4) (actual time=1748.938..1748.938 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=7.820..926.309 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
 Planning Time: 5756.813 ms
 Execution Time: 19424.896 ms
(59 rows)


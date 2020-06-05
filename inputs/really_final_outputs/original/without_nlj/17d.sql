                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20116.57..20116.57 rows=1 width=32) (actual time=18695.594..18695.594 rows=1 loops=1)
   Buffers: shared hit=17 read=390492
   ->  Hash Join  (cost=6726.41..20116.57 rows=2 width=15) (actual time=6678.714..18692.847 rows=11538 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=17 read=390492
         ->  Hash Join  (cost=6581.76..19971.91 rows=2 width=19) (actual time=6521.776..18529.149 rows=11538 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=12 read=387500
               ->  Hash Join  (cost=2356.77..15742.47 rows=38249 width=19) (actual time=2654.888..14674.779 rows=48290 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.006..6231.144 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=4398 width=19) (actual time=2646.449..2646.449 rows=5216 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 339kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=4398 width=19) (actual time=53.323..2642.197 rows=5216 loops=1)
                                 Filter: (name ~~ '%Bert%'::text)
                                 Rows Removed by Filter: 4162275
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=4224.96..4224.96 rows=190 width=16) (actual time=3837.171..3837.171 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared hit=7 read=79238
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=2931.264..3793.094 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=7 read=79238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..387.829 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=2919.911..2919.911 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=4 read=60452
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1206.435..2901.894 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=4 read=60452
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=9.613..990.512 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1196.720..1196.720 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=3 read=24455
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=42.785..1186.365 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=3 read=24455
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..540.007 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=42.637..42.638 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=42.623..42.626 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=154.918..154.919 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=19.311..92.370 rows=234997 loops=1)
                     Buffers: shared hit=2 read=2992
 Planning Time: 5662.169 ms
 Execution Time: 18715.811 ms
(57 rows)


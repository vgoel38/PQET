                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20114.28..20114.28 rows=1 width=64) (actual time=18912.032..18912.032 rows=1 loops=1)
   Buffers: shared hit=3 read=390506
   ->  Hash Join  (cost=6726.12..20114.28 rows=1 width=15) (actual time=10766.465..18911.679 rows=1918 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=3 read=390506
         ->  Hash Join  (cost=6581.47..19969.63 rows=1 width=19) (actual time=10452.418..18596.682 rows=1918 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared read=387512
               ->  Hash Join  (cost=2356.48..15742.18 rows=21090 width=19) (actual time=6498.295..14639.440 rows=12500 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=12.824..6140.898 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=2425 width=19) (actual time=2643.424..2643.424 rows=2664 loops=1)
                           Buckets: 4096  Batches: 1  Memory Usage: 164kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=2425 width=19) (actual time=1105.669..2642.129 rows=2664 loops=1)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 4164827
                                 Buffers: shared read=55613
               ->  Hash  (cost=4224.96..4224.96 rows=190 width=16) (actual time=3954.086..3954.086 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared read=79245
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=3038.693..3907.104 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=79245
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=5.355..377.213 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=3028.677..3028.677 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared read=60456
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1208.856..3010.195 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared read=60456
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=3.486..1106.723 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1205.274..1205.274 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared read=24458
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=51.120..1194.609 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared read=24458
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.336..533.894 rows=4523930 loops=1)
                                                         Buffers: shared read=24454
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.638..46.638 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.622..46.625 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=311.977..311.977 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared read=2994
               ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=19.278..236.126 rows=234997 loops=1)
                     Buffers: shared read=2994
 Planning Time: 5064.893 ms
 Execution Time: 18937.871 ms
(57 rows)


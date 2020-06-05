                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15200.98..15200.98 rows=1 width=32) (actual time=11773.676..11773.676 rows=1 loops=1)
   Buffers: shared hit=3 read=223293
   ->  Hash Join  (cost=3255.51..15200.75 rows=2873 width=17) (actual time=3254.156..11759.084 rows=7250 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=3 read=223293
         ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=705579 width=4) (actual time=42.400..8466.380 rows=706674 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
               Rows Removed by Filter: 14129046
               Buffers: shared read=161892
         ->  Hash  (cost=3255.28..3255.28 rows=1563 width=25) (actual time=3185.683..3185.683 rows=7874 loops=1)
               Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 571kB
               Buffers: shared read=61401
               ->  Hash Join  (cost=1806.46..3255.28 rows=1563 width=25) (actual time=1915.109..3182.610 rows=7874 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared read=61401
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=106.180..1366.718 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=10.527..651.334 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=95.275..95.275 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.515..95.237 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1800.220..1800.220 rows=1749032 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=24.590..1129.123 rows=1749032 loops=1)
                                 Filter: (production_year > 1990)
                                 Rows Removed by Filter: 779280
                                 Buffers: shared read=35998
 Planning Time: 1929.815 ms
 Execution Time: 11782.818 ms
(36 rows)


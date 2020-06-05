                                                                       QUERY PLAN                                                                        
---------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13876.58..13876.58 rows=1 width=32) (actual time=11861.073..11861.074 rows=1 loops=1)
   Buffers: shared hit=3 read=223293
   ->  Hash Join  (cost=3147.37..13876.56 rows=364 width=17) (actual time=3316.407..11860.878 rows=206 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=3 read=223293
         ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=154416 width=4) (actual time=86.506..8690.297 rows=153897 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
               Rows Removed by Filter: 14681823
               Buffers: shared read=161892
         ->  Hash  (cost=3147.24..3147.24 rows=905 width=25) (actual time=3145.001..3145.001 rows=2235 loops=1)
               Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 175kB
               Buffers: shared read=61401
               ->  Hash Join  (cost=1698.41..3147.24 rows=905 width=25) (actual time=1911.845..3144.006 rows=2235 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared read=61401
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=96.287..1403.070 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=3.058..679.231 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=92.752..92.753 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.488..92.699 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1730.418..1730.418 rows=1012920 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=22.724..1258.885 rows=1012920 loops=1)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1515392
                                 Buffers: shared read=35998
 Planning Time: 1843.150 ms
 Execution Time: 11862.244 ms
(36 rows)


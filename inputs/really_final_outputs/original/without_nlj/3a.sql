                                                                       QUERY PLAN                                                                        
---------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13876.58..13876.58 rows=1 width=32) (actual time=11805.892..11805.892 rows=1 loops=1)
   Buffers: shared hit=11 read=223285
   ->  Hash Join  (cost=3147.37..13876.56 rows=364 width=17) (actual time=3458.361..11805.697 rows=206 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=11 read=223285
         ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=154416 width=4) (actual time=131.518..8542.292 rows=153897 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
               Rows Removed by Filter: 14681823
               Buffers: shared hit=2 read=161890
         ->  Hash  (cost=3147.24..3147.24 rows=905 width=25) (actual time=3237.527..3237.527 rows=2235 loops=1)
               Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 175kB
               Buffers: shared hit=6 read=61395
               ->  Hash Join  (cost=1698.41..3147.24 rows=905 width=25) (actual time=1904.363..3236.547 rows=2235 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=6 read=61395
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=88.089..1495.411 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.010..780.817 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=87.717..87.717 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=27.586..87.674 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1730.503..1730.503 rows=1012920 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=22.995..1263.560 rows=1012920 loops=1)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1515392
                                 Buffers: shared hit=1 read=35997
 Planning Time: 2164.201 ms
 Execution Time: 11807.169 ms
(36 rows)


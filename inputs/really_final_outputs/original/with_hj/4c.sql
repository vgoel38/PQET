                                                                            QUERY PLAN                                                                             
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3741.73..3741.73 rows=1 width=64) (actual time=3795.688..3795.688 rows=1 loops=1)
   Buffers: shared hit=3 read=69855
   ->  Hash Join  (cost=2037.77..3741.73 rows=26 width=23) (actual time=1921.926..3780.445 rows=4700 loops=1)
         Hash Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=3 read=69855
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=21.652..1478.589 rows=1749032 loops=1)
               Filter: (production_year > 1990)
               Rows Removed by Filter: 779280
               Buffers: shared read=35998
         ->  Hash  (cost=2037.77..2037.77 rows=37 width=14) (actual time=1893.540..1893.540 rows=8092 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 412kB
               Buffers: shared read=33857
               ->  Hash Join  (cost=588.86..2037.77 rows=37 width=14) (actual time=735.911..1890.478 rows=8092 loops=1)
                     Hash Cond: (mk.movie_id = mi_idx.movie_id)
                     Buffers: shared read=33857
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=96.563..1244.102 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.259..535.685 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=91.934..91.934 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.525..91.890 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Hash  (cost=538.28..538.28 rows=7570 width=10) (actual time=639.296..639.296 rows=448969 loops=1)
                           Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 21634kB
                           Buffers: shared read=8454
                           ->  Hash Join  (cost=0.05..538.28 rows=7570 width=10) (actual time=17.840..527.741 rows=448969 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared read=8454
                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=855391 width=14) (actual time=10.303..350.551 rows=855412 loops=1)
                                       Filter: (info > '2.0'::text)
                                       Rows Removed by Filter: 524623
                                       Buffers: shared read=8453
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.482..7.482 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.463..7.470 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
 Planning Time: 2100.419 ms
 Execution Time: 3802.646 ms
(46 rows)


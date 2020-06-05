                                                                       QUERY PLAN                                                                        
---------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15200.98..15200.98 rows=1 width=32) (actual time=11570.449..11570.449 rows=1 loops=1)
   Buffers: shared hit=11 read=223285
   ->  Hash Join  (cost=3255.51..15200.75 rows=2873 width=17) (actual time=3224.826..11556.970 rows=7250 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=11 read=223285
         ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=705579 width=4) (actual time=23.577..8284.344 rows=706674 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
               Rows Removed by Filter: 14129046
               Buffers: shared hit=2 read=161890
         ->  Hash  (cost=3255.28..3255.28 rows=1563 width=25) (actual time=3168.943..3168.943 rows=7874 loops=1)
               Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 571kB
               Buffers: shared hit=6 read=61395
               ->  Hash Join  (cost=1806.46..3255.28 rows=1563 width=25) (actual time=1835.924..3166.062 rows=7874 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=6 read=61395
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=87.584..1410.805 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.011..716.305 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=87.228..87.228 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=25.893..87.192 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1740.406..1740.406 rows=1749032 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=18.922..1066.258 rows=1749032 loops=1)
                                 Filter: (production_year > 1990)
                                 Rows Removed by Filter: 779280
                                 Buffers: shared hit=1 read=35997
 Planning Time: 2140.377 ms
 Execution Time: 11581.122 ms
(36 rows)


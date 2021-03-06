                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3512.66..3512.66 rows=1 width=64) (actual time=3829.592..3829.593 rows=1 loops=1)
   Buffers: shared hit=12 read=69846
   ->  Hash Join  (cost=1966.79..3512.66 rows=1 width=23) (actual time=3350.261..3829.504 rows=6 loops=1)
         Hash Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=12 read=69846
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=38.349..1752.401 rows=391666 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 2136646
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1966.79..1966.79 rows=1 width=14) (actual time=1979.728..1979.728 rows=21 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=8 read=33849
               ->  Hash Join  (cost=517.88..1966.79 rows=1 width=14) (actual time=990.424..1979.690 rows=21 loops=1)
                     Hash Cond: (mk.movie_id = mi_idx.movie_id)
                     Buffers: shared hit=8 read=33849
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=87.987..1368.567 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.011..650.755 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=87.735..87.736 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=28.319..87.695 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Hash  (cost=468.40..468.40 rows=69 width=10) (actual time=609.070..609.070 rows=305 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 20kB
                           Buffers: shared hit=3 read=8451
                           ->  Hash Join  (cost=0.05..468.40 rows=69 width=10) (actual time=19.930..608.813 rows=305 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=3 read=8451
                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=7778 width=14) (actual time=0.238..606.567 rows=7793 loops=1)
                                       Filter: (info > '9.0'::text)
                                       Rows Removed by Filter: 1372242
                                       Buffers: shared hit=2 read=8451
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.018 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
 Planning Time: 2430.377 ms
 Execution Time: 3847.930 ms
(46 rows)


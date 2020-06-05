                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=681190.75..681190.75 rows=1 width=32) (actual time=103202.977..103202.978 rows=1 loops=1)
   Buffers: shared hit=11715626 read=283592
   ->  Hash Join  (cost=64541.94..681190.75 rows=2 width=17) (actual time=48125.353..103202.940 rows=5 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=11715626 read=283592
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..616648.54 rows=2428 width=4) (actual time=1176.403..90186.517 rows=2287 loops=1)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 14833433
               Buffers: shared hit=9072946 read=202429
         ->  Hash  (cost=64541.87..64541.87 rows=350 width=25) (actual time=13011.802..13011.802 rows=405 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 35kB
               Buffers: shared hit=2642677 read=81163
               ->  Hash Join  (cost=24887.10..64541.87 rows=350 width=25) (actual time=10437.527..13011.377 rows=405 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=2642677 read=81163
                     ->  Hash Join  (cost=1591.27..41245.85 rows=2259 width=4) (actual time=419.960..3237.494 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=152807 read=38255
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=32.799..2051.333 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=1591.24..1591.24 rows=67 width=4) (actual time=386.493..386.494 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=131171 read=1438
                                 ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=44.814..386.424 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=131171 read=1438
                     ->  Hash  (cost=23238.35..23238.35 rows=391667 width=21) (actual time=9765.154..9765.154 rows=391666 loops=1)
                           Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                           Buffers: shared hit=2489870 read=42908
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=70.283..9605.967 rows=391666 loops=1)
                                 Filter: (production_year > 2010)
                                 Rows Removed by Filter: 2136646
                                 Buffers: shared hit=2489870 read=42908
 Planning Time: 1825.236 ms
 Execution Time: 103227.056 ms
(36 rows)


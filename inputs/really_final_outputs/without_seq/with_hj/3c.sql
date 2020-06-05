                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=686079.67..686079.67 rows=1 width=32) (actual time=105639.958..105639.958 rows=1 loops=1)
   Buffers: shared hit=11715626 read=283592
   ->  Hash Join  (cost=64741.35..686079.45 rows=2873 width=17) (actual time=14675.905..105617.756 rows=7250 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=11715626 read=283592
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..621255.91 rows=705579 width=4) (actual time=135.480..91678.012 rows=706674 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
               Rows Removed by Filter: 14129046
               Buffers: shared hit=9072946 read=202429
         ->  Hash  (cost=64741.11..64741.11 rows=1563 width=25) (actual time=13496.661..13496.661 rows=7874 loops=1)
               Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 571kB
               Buffers: shared hit=2642677 read=81163
               ->  Hash Join  (cost=25086.34..64741.11 rows=1563 width=25) (actual time=10588.329..13492.243 rows=7874 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=2642677 read=81163
                     ->  Hash Join  (cost=1591.27..41245.85 rows=2259 width=4) (actual time=414.934..3310.278 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=152807 read=38255
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=35.987..2118.075 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=1591.24..1591.24 rows=67 width=4) (actual time=378.134..378.134 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=131171 read=1438
                                 ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=44.834..378.055 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=131171 read=1438
                     ->  Hash  (cost=23238.35..23238.35 rows=1749033 width=21) (actual time=10167.250..10167.250 rows=1749032 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                           Buffers: shared hit=2489870 read=42908
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=63.398..9500.637 rows=1749032 loops=1)
                                 Filter: (production_year > 1990)
                                 Rows Removed by Filter: 779280
                                 Buffers: shared hit=2489870 read=42908
 Planning Time: 1744.658 ms
 Execution Time: 105650.527 ms
(36 rows)


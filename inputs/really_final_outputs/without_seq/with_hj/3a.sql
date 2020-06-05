                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=684755.27..684755.28 rows=1 width=32) (actual time=105516.023..105516.023 rows=1 loops=1)
   Buffers: shared hit=11715626 read=283592
   ->  Hash Join  (cost=64633.21..684755.25 rows=364 width=17) (actual time=32784.564..105515.301 rows=206 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=11715626 read=283592
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..620104.07 rows=154416 width=4) (actual time=262.299..92087.822 rows=153897 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
               Rows Removed by Filter: 14681823
               Buffers: shared hit=9072946 read=202429
         ->  Hash  (cost=64633.06..64633.06 rows=905 width=25) (actual time=13337.593..13337.593 rows=2235 loops=1)
               Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 175kB
               Buffers: shared hit=2642677 read=81163
               ->  Hash Join  (cost=24978.29..64633.06 rows=905 width=25) (actual time=10777.302..13336.153 rows=2235 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=2642677 read=81163
                     ->  Hash Join  (cost=1591.27..41245.85 rows=2259 width=4) (actual time=405.196..3208.343 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=152807 read=38255
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=36.486..2047.160 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=1591.24..1591.24 rows=67 width=4) (actual time=368.299..368.300 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=131171 read=1438
                                 ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=44.553..368.235 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=131171 read=1438
                     ->  Hash  (cost=23238.35..23238.35 rows=1012920 width=21) (actual time=10117.706..10117.706 rows=1012920 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                           Buffers: shared hit=2489870 read=42908
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=37.292..9721.280 rows=1012920 loops=1)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1515392
                                 Buffers: shared hit=2489870 read=42908
 Planning Time: 1859.062 ms
 Execution Time: 105517.343 ms
(36 rows)


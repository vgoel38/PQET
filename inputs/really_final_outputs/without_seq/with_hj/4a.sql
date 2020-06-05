                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=76790.78..76790.78 rows=1 width=64) (actual time=14474.857..14474.858 rows=1 loops=1)
   Buffers: shared hit=2656245 read=93391
   ->  Hash Join  (cost=37135.93..76790.78 rows=9 width=23) (actual time=11900.307..14453.862 rows=740 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=2656245 read=93391
         ->  Hash Join  (cost=1591.27..41245.85 rows=2259 width=4) (actual time=393.560..3194.631 rows=12951 loops=1)
               Hash Cond: (mk.keyword_id = k.id)
               Buffers: shared hit=152810 read=38255
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.331..2043.289 rows=4523930 loops=1)
                     Buffers: shared hit=21636 read=36817
               ->  Hash  (cost=1591.24..1591.24 rows=67 width=4) (actual time=358.713..358.713 rows=30 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=131171 read=1438
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=44.695..358.653 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131171 read=1438
         ->  Hash  (cost=35544.39..35544.39 rows=1850 width=31) (actual time=11253.872..11253.872 rows=106021 loops=1)
               Buckets: 131072 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 7643kB
               Buffers: shared hit=2503435 read=55136
               ->  Hash Join  (cost=12187.97..35544.39 rows=1850 width=31) (actual time=1676.175..11214.035 rows=106021 loops=1)
                     Hash Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=2503435 read=55136
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=66.601..9311.335 rows=1012920 loops=1)
                           Filter: (production_year > 2005)
                           Rows Removed by Filter: 1515392
                           Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=12187.28..12187.28 rows=4617 width=10) (actual time=1552.310..1552.310 rows=352990 loops=1)
                           Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 17885kB
                           Buffers: shared hit=13565 read=12228
                           ->  Hash Join  (cost=6.14..12187.28 rows=4617 width=10) (actual time=35.349..1417.095 rows=352990 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=13565 read=12228
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=521708 width=14) (actual time=35.030..1228.295 rows=521723 loops=1)
                                       Filter: (info > '5.0'::text)
                                       Rows Removed by Filter: 858312
                                       Buffers: shared hit=13565 read=12226
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.266..0.266 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.253..0.256 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared read=2
 Planning Time: 1986.782 ms
 Execution Time: 14555.933 ms
(45 rows)


                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=76905.19..76905.19 rows=1 width=64) (actual time=14954.635..14954.636 rows=1 loops=1)
   Buffers: shared hit=2656245 read=93391
   ->  Hash Join  (cost=37250.34..76905.18 rows=26 width=23) (actual time=12183.884..14933.042 rows=4700 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=2656245 read=93391
         ->  Hash Join  (cost=1591.27..41245.85 rows=2259 width=4) (actual time=397.336..3139.920 rows=12951 loops=1)
               Hash Cond: (mk.keyword_id = k.id)
               Buffers: shared hit=152810 read=38255
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.340..1992.072 rows=4523930 loops=1)
                     Buffers: shared hit=21636 read=36817
               ->  Hash  (cost=1591.24..1591.24 rows=67 width=4) (actual time=362.513..362.513 rows=30 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=131171 read=1438
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=44.543..362.468 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131171 read=1438
         ->  Hash  (cost=35658.30..35658.30 rows=5237 width=31) (actual time=11786.511..11786.511 rows=294217 loops=1)
               Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 22596kB
               Buffers: shared hit=2503435 read=55136
               ->  Hash Join  (cost=12215.91..35658.30 rows=5237 width=31) (actual time=1562.749..11664.446 rows=294217 loops=1)
                     Hash Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=2503435 read=55136
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=43.790..9489.259 rows=1749032 loops=1)
                           Filter: (production_year > 1990)
                           Rows Removed by Filter: 779280
                           Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=12214.79..12214.79 rows=7570 width=10) (actual time=1499.337..1499.337 rows=448969 loops=1)
                           Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 21634kB
                           Buffers: shared hit=13565 read=12228
                           ->  Hash Join  (cost=6.14..12214.79 rows=7570 width=10) (actual time=37.587..1350.021 rows=448969 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=13565 read=12228
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=855391 width=14) (actual time=37.369..1112.684 rows=855412 loops=1)
                                       Filter: (info > '2.0'::text)
                                       Rows Removed by Filter: 524623
                                       Buffers: shared hit=13565 read=12226
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.165..0.165 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.146..0.149 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared read=2
 Planning Time: 2012.591 ms
 Execution Time: 14961.599 ms
(45 rows)


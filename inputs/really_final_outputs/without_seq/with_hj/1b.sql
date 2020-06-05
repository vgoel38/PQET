                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=58816.15..58816.15 rows=1 width=68) (actual time=12937.489..12937.489 rows=1 loops=1)
   Buffers: shared hit=2503438 read=81058
   ->  Hash Join  (cost=35297.78..58815.90 rows=1069 width=45) (actual time=10323.444..12937.470 rows=3 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=2503438 read=81058
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=716259 width=25) (actual time=26.931..9329.432 rows=716259 loops=1)
               Filter: ((production_year >= 2005) AND (production_year <= 2010))
               Rows Removed by Filter: 1812053
               Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=35297.21..35297.21 rows=3775 width=32) (actual time=3507.432..3507.432 rows=5 loops=1)
               Buckets: 4096  Batches: 1  Memory Usage: 33kB
               Buffers: shared hit=13565 read=38150
               ->  Hash Join  (cost=12158.83..35297.21 rows=3775 width=32) (actual time=3157.666..3507.411 rows=5 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=13565 read=38150
                     ->  Hash Join  (cost=12152.70..35289.47 rows=15098 width=36) (actual time=2132.299..3507.126 rows=100 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=13565 read=38148
                           ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22980.02 rows=1337085 width=32) (actual time=32.553..1731.037 rows=1337088 loops=1)
                                 Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                                 Rows Removed by Filter: 1272041
                                 Buffers: shared read=25920
                           ->  Hash  (cost=12150.89..12150.89 rows=12213 width=4) (actual time=1580.363..1580.363 rows=10 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                 Buffers: shared hit=13565 read=12228
                                 ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=681.068..1580.321 rows=10 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=13565 read=12228
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=35.419..1251.007 rows=1380035 loops=1)
                                             Buffers: shared hit=13565 read=12226
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=7.473..7.474 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=7.457..7.460 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                                   Buffers: shared read=2
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.231..0.231 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.220..0.222 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'production companies'::text)
                                 Buffers: shared read=2
 Planning Time: 2250.689 ms
 Execution Time: 12952.109 ms
(44 rows)


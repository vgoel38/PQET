                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=58696.83..58696.83 rows=1 width=68) (actual time=12470.874..12470.874 rows=1 loops=1)
   Buffers: shared hit=2503438 read=81058
   ->  Hash Join  (cost=35559.50..58696.35 rows=2063 width=45) (actual time=12012.826..12470.845 rows=4 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2503438 read=81058
         ->  Hash Join  (cost=35553.37..58689.34 rows=8249 width=49) (actual time=11005.362..12470.574 rows=78 loops=1)
               Hash Cond: (mc.movie_id = t.id)
               Buffers: shared hit=2503435 read=81056
               ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22980.02 rows=1337085 width=32) (actual time=34.498..1750.018 rows=1337088 loops=1)
                     Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                     Rows Removed by Filter: 1272041
                     Buffers: shared read=25920
               ->  Hash  (cost=35552.38..35552.38 rows=6673 width=29) (actual time=10526.844..10526.844 rows=6 loops=1)
                     Buckets: 8192  Batches: 1  Memory Usage: 65kB
                     Buffers: shared hit=2503435 read=55136
                     ->  Hash Join  (cost=12152.70..35552.38 rows=6673 width=29) (actual time=7524.781..10526.814 rows=6 loops=1)
                           Hash Cond: (t.id = mi_idx.movie_id)
                           Buffers: shared hit=2503435 read=55136
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=42.042..8794.781 rows=1381453 loops=1)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1146859
                                 Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=12150.89..12150.89 rows=12213 width=4) (actual time=1528.441..1528.441 rows=10 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                 Buffers: shared hit=13565 read=12228
                                 ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=747.432..1528.397 rows=10 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=13565 read=12228
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=34.929..1189.012 rows=1380035 loops=1)
                                             Buffers: shared hit=13565 read=12226
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=7.475..7.475 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=7.460..7.464 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                                   Buffers: shared read=2
         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.204..0.204 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.187..0.190 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'production companies'::text)
                     Buffers: shared read=2
 Planning Time: 2049.042 ms
 Execution Time: 12495.616 ms
(44 rows)


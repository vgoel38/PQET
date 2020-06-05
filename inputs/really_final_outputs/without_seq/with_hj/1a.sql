                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=58882.25..58882.25 rows=1 width=68) (actual time=13606.359..13606.359 rows=1 loops=1)
   Buffers: shared hit=2503438 read=81058
   ->  Hash Join  (cost=35545.75..58882.24 rows=42 width=45) (actual time=10265.708..13606.107 rows=142 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=2503438 read=81058
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=24.487..9554.867 rows=2528312 loops=1)
               Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=35545.73..35545.73 rows=42 width=32) (actual time=3651.479..3651.479 rows=142 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 17kB
               Buffers: shared hit=13565 read=38150
               ->  Hash Join  (cost=12158.83..35545.73 rows=42 width=32) (actual time=3088.271..3651.301 rows=142 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=13565 read=38150
                     ->  Hash Join  (cost=12152.70..35539.59 rows=168 width=36) (actual time=2052.849..3650.977 rows=147 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=13565 read=38148
                           ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23385.16 rows=14835 width=32) (actual time=176.278..2083.964 rows=28889 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                                 Rows Removed by Filter: 2580240
                                 Buffers: shared read=25920
                           ->  Hash  (cost=12150.89..12150.89 rows=12213 width=4) (actual time=1558.926..1558.926 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared hit=13565 read=12228
                                 ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=733.655..1558.612 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=13565 read=12228
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=35.888..1222.999 rows=1380035 loops=1)
                                             Buffers: shared hit=13565 read=12226
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=7.476..7.476 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=7.459..7.462 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'top 250 rank'::text)
                                                   Buffers: shared read=2
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.173..0.173 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.156..0.158 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'production companies'::text)
                                 Buffers: shared read=2
 Planning Time: 2060.959 ms
 Execution Time: 13627.456 ms
(42 rows)


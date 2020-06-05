                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=58626.45..58626.45 rows=1 width=68) (actual time=13078.394..13078.394 rows=1 loops=1)
   Buffers: shared hit=2503438 read=81058
   ->  Hash Join  (cost=35342.50..58626.45 rows=4 width=45) (actual time=10956.324..13078.366 rows=3 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=2503438 read=81058
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=25) (actual time=61.514..9391.477 rows=391666 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 2136646
               Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=35342.49..35342.49 rows=26 width=32) (actual time=3630.429..3630.429 rows=23 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 10kB
               Buffers: shared hit=13565 read=38150
               ->  Hash Join  (cost=12158.83..35342.49 rows=26 width=32) (actual time=3210.233..3630.376 rows=23 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=13565 read=38150
                     ->  Hash Join  (cost=12152.70..35336.35 rows=103 width=36) (actual time=3210.110..3630.223 rows=23 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=13565 read=38148
                           ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=9141 width=32) (actual time=655.835..2021.744 rows=17816 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                                 Rows Removed by Filter: 2591313
                                 Buffers: shared read=25920
                           ->  Hash  (cost=12150.89..12150.89 rows=12213 width=4) (actual time=1602.876..1602.876 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared hit=13565 read=12228
                                 ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=767.000..1602.584 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=13565 read=12228
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=35.908..1253.888 rows=1380035 loops=1)
                                             Buffers: shared hit=13565 read=12226
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=7.467..7.467 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=7.451..7.454 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'top 250 rank'::text)
                                                   Buffers: shared read=2
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.113..0.113 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.107..0.108 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'production companies'::text)
                                 Buffers: shared read=2
 Planning Time: 2046.244 ms
 Execution Time: 13089.206 ms
(44 rows)


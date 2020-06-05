                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4164.05..4164.05 rows=1 width=32) (actual time=2393.182..2393.182 rows=1 loops=1)
   Buffers: shared hit=3 read=46242
   ->  Hash Join  (cost=2565.65..4164.05 rows=1 width=17) (actual time=2393.177..2393.177 rows=0 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=46242
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.608..21.608 rows=1 loops=1)
               Buffers: shared read=1
         ->  Hash  (cost=2565.65..2565.65 rows=1 width=8) (actual time=2371.493..2371.493 rows=0 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 8kB
               Buffers: shared read=46241
               ->  Hash Join  (cost=1117.00..2565.65 rows=1 width=8) (actual time=2371.492..2371.492 rows=0 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared read=46241
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=51.117..1316.840 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=24458
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.315..653.630 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.653..46.653 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.630..46.633 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=1110.86..1110.86 rows=11 width=4) (actual time=1049.776..1049.777 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=21783
                           ->  Hash Join  (cost=128.41..1110.86 rows=11 width=4) (actual time=564.570..1049.761 rows=2 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=20.225..494.179 rows=2609129 loops=1)
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=1 width=4) (actual time=138.994..138.994 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1 width=4) (actual time=29.492..138.981 rows=1 loops=1)
                                             Filter: ((country_code)::text = '[sm]'::text)
                                             Rows Removed by Filter: 234996
                                             Buffers: shared read=2994
 Planning Time: 2109.331 ms
 Execution Time: 2399.226 ms
(41 rows)


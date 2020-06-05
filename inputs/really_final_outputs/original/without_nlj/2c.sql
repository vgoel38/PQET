                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4164.05..4164.05 rows=1 width=32) (actual time=2441.761..2441.762 rows=1 loops=1)
   Buffers: shared hit=11 read=46234
   ->  Hash Join  (cost=2565.65..4164.05 rows=1 width=17) (actual time=2441.744..2441.744 rows=0 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=11 read=46234
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=38.217..38.217 rows=1 loops=1)
               Buffers: shared read=1
         ->  Hash  (cost=2565.65..2565.65 rows=1 width=8) (actual time=2403.447..2403.448 rows=0 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 8kB
               Buffers: shared hit=8 read=46233
               ->  Hash Join  (cost=1117.00..2565.65 rows=1 width=8) (actual time=2403.446..2403.446 rows=0 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared hit=8 read=46233
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=33.332..1347.370 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=3 read=24455
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.012..693.499 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=33.168..33.168 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=33.148..33.150 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=1110.86..1110.86 rows=11 width=4) (actual time=1050.958..1050.959 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=128.41..1110.86 rows=11 width=4) (actual time=569.713..1050.947 rows=2 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.010..465.052 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=1 width=4) (actual time=160.379..160.379 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1 width=4) (actual time=50.836..160.357 rows=1 loops=1)
                                             Filter: ((country_code)::text = '[sm]'::text)
                                             Rows Removed by Filter: 234996
                                             Buffers: shared hit=2 read=2992
 Planning Time: 2275.436 ms
 Execution Time: 2456.693 ms
(41 rows)


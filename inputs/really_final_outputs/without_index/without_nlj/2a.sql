                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4181.42..4181.42 rows=1 width=32) (actual time=4214.568..4214.569 rows=1 loops=1)
   Buffers: shared hit=12 read=82230
   ->  Hash Join  (cost=2583.01..4181.42 rows=8 width=17) (actual time=2278.392..4196.420 rows=7834 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=12 read=82230
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=17.709..1269.623 rows=2528312 loops=1)
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2583.01..2583.01 rows=8 width=8) (actual time=2252.747..2252.747 rows=7834 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 371kB
               Buffers: shared hit=8 read=46233
               ->  Hash Join  (cost=1134.36..2583.01 rows=8 width=8) (actual time=1117.066..2250.317 rows=7834 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared hit=8 read=46233
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=42.786..1171.115 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=3 read=24455
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.012..517.735 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=42.614..42.615 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=42.594..42.598 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=1112.30..1112.30 rows=108530 width=4) (actual time=1064.693..1064.693 rows=148132 loops=1)
                           Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 7256kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=129.84..1112.30 rows=108530 width=4) (actual time=159.083..1017.790 rows=148132 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.012..400.321 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=9775 width=4) (actual time=158.801..158.801 rows=9775 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=9775 width=4) (actual time=22.348..153.792 rows=9775 loops=1)
                                             Filter: ((country_code)::text = '[de]'::text)
                                             Rows Removed by Filter: 225222
                                             Buffers: shared hit=2 read=2992
 Planning Time: 2144.273 ms
 Execution Time: 4215.133 ms
(41 rows)


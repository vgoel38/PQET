                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4181.42..4181.42 rows=1 width=32) (actual time=4293.212..4293.212 rows=1 loops=1)
   Buffers: shared hit=12 read=82230
   ->  Hash Join  (cost=2583.01..4181.42 rows=8 width=17) (actual time=2549.204..4275.150 rows=7834 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=12 read=82230
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.649..1094.316 rows=2528312 loops=1)
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2583.01..2583.01 rows=8 width=8) (actual time=2512.927..2512.927 rows=7834 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 371kB
               Buffers: shared hit=8 read=46233
               ->  Hash Join  (cost=1134.36..2583.01 rows=8 width=8) (actual time=1107.653..2510.365 rows=7834 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared hit=8 read=46233
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=33.262..1435.607 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=3 read=24455
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.012..770.526 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=33.097..33.097 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=33.077..33.080 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=1112.30..1112.30 rows=108530 width=4) (actual time=1059.812..1059.812 rows=148132 loops=1)
                           Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 7256kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=129.84..1112.30 rows=108530 width=4) (actual time=159.032..1013.307 rows=148132 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.011..401.714 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=9775 width=4) (actual time=158.826..158.826 rows=9775 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=9775 width=4) (actual time=23.507..153.986 rows=9775 loops=1)
                                             Filter: ((country_code)::text = '[de]'::text)
                                             Rows Removed by Filter: 225222
                                             Buffers: shared hit=2 read=2992
 Planning Time: 2346.971 ms
 Execution Time: 4311.800 ms
(41 rows)


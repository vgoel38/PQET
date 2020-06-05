                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=712155.29..712155.29 rows=1 width=64) (actual time=35454.472..35454.472 rows=1 loops=1)
   Buffers: shared hit=2830805 read=313399
   ->  Hash Join  (cost=95716.03..712155.29 rows=8 width=59) (actual time=28255.303..35454.187 rows=328 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=2830805 read=313399
         ->  Hash Join  (cost=94179.20..710618.45 rows=8 width=63) (actual time=28168.226..35366.835 rows=328 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=2830802 read=312909
               ->  Hash Join  (cost=94173.07..710612.32 rows=8 width=67) (actual time=28168.052..35366.472 rows=328 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=2830802 read=312907
                     ->  Hash Join  (cost=6.14..616445.39 rows=2 width=46) (actual time=12381.560..19764.784 rows=1771 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=87582 read=202431
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=260 width=50) (actual time=12351.398..19733.011 rows=1771 loops=1)
                                 Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                 Rows Removed by Filter: 14833949
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=30.108..30.109 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=30.088..30.092 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'release dates'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=94163.94..94163.94 rows=20379 width=41) (actual time=15600.201..15600.201 rows=192112 loops=1)
                           Buckets: 262144 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 16217kB
                           Buffers: shared hit=2743220 read=110476
                           ->  Hash Join  (cost=54351.12..94163.94 rows=20379 width=41) (actual time=12848.759..15521.312 rows=192112 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2743220 read=110476
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.534..1915.202 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=54350.88..54350.88 rows=1498 width=33) (actual time=12780.705..12780.705 rows=5134 loops=1)
                                       Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 408kB
                                       Buffers: shared hit=2721584 read=73659
                                       ->  Hash Join  (cost=30951.56..54350.88 rows=1498 width=33) (actual time=3392.694..12777.943 rows=5134 loops=1)
                                             Hash Cond: (t.id = at.movie_id)
                                             Buffers: shared hit=2721584 read=73659
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=50.809..9733.382 rows=1381453 loops=1)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1146859
                                                   Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=30951.15..30951.15 rows=2741 width=12) (actual time=2786.216..2786.216 rows=13699 loops=1)
                                                   Buckets: 16384 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 717kB
                                                   Buffers: shared hit=231714 read=30751
                                                   ->  Hash Join  (cost=7743.81..30951.15 rows=2741 width=12) (actual time=982.302..2779.946 rows=13699 loops=1)
                                                         Hash Cond: (mc.movie_id = at.movie_id)
                                                         Buffers: shared hit=231714 read=30751
                                                         ->  Hash Join  (cost=4609.67..27793.66 rows=6278 width=8) (actual time=764.732..2541.496 rows=43837 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=231714 read=29760
                                                               ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=17389 width=12) (actual time=24.046..1771.968 rows=61664 loops=1)
                                                                     Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                                     Rows Removed by Filter: 2547465
                                                                     Buffers: shared read=25920
                                                               ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=739.652..739.652 rows=84843 loops=1)
                                                                     Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                     Buffers: shared hit=231714 read=3840
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.562..714.320 rows=84843 loops=1)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 150154
                                                                           Buffers: shared hit=231714 read=3840
                                                         ->  Hash  (cost=3081.09..3081.09 rows=361472 width=4) (actual time=212.791..212.791 rows=361472 loops=1)
                                                               Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                               Buffers: shared read=991
                                                               ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..3081.09 rows=361472 width=4) (actual time=41.419..124.124 rows=361472 loops=1)
                                                                     Heap Fetches: 0
                                                                     Buffers: shared read=991
               ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=0.155..0.155 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=0.151..0.152 rows=4 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2
         ->  Hash  (cost=1517.14..1517.14 rows=134170 width=4) (actual time=85.048..85.048 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=490
               ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..1517.14 rows=134170 width=4) (actual time=11.904..55.386 rows=134170 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=490
 Planning Time: 8768.952 ms
 Execution Time: 35477.472 ms
(82 rows)


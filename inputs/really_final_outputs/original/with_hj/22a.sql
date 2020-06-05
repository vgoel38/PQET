                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13418.72..13418.72 rows=1 width=96) (actual time=13391.956..13391.957 rows=1 loops=1)
   Buffers: shared hit=12 read=252593
   ->  Hash Join  (cost=4955.45..13418.72 rows=1 width=42) (actual time=12112.201..13390.992 rows=2851 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=12 read=252593
         ->  Hash Join  (cost=4955.42..13418.69 rows=1 width=46) (actual time=12102.459..13385.244 rows=3027 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=9 read=252592
               ->  Hash Join  (cost=4955.39..13418.66 rows=1 width=50) (actual time=12095.376..13377.394 rows=3027 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=9 read=252591
                     ->  Hash Join  (cost=4808.45..13271.72 rows=1 width=35) (actual time=11934.865..13215.427 rows=3451 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=9 read=249597
                           ->  Hash Join  (cost=0.05..8462.63 rows=5910 width=4) (actual time=7229.556..8490.434 rows=588764 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=667885 width=8) (actual time=9.901..8320.606 rows=669336 loops=1)
                                       Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14166384
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=24.013..24.013 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.963..24.001 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=4808.41..4808.41 rows=1 width=51) (actual time=4655.599..4655.599 rows=3634 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 322kB
                                 Buffers: shared hit=9 read=87704
                                 ->  Hash Join  (cost=3231.04..4808.41 rows=1 width=51) (actual time=2990.977..4652.713 rows=3634 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=9 read=87704
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=662066 width=25) (actual time=22.798..1614.336 rows=662065 loops=1)
                                             Filter: (production_year > 2008)
                                             Rows Removed by Filter: 1866247
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=3231.04..3231.04 rows=1 width=26) (actual time=2819.511..2819.511 rows=52686 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3394kB
                                             Buffers: shared hit=9 read=51706
                                             ->  Hash Join  (cost=1782.38..3231.04 rows=1 width=26) (actual time=1683.324..2802.342 rows=52686 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=9 read=51706
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=76.294..1185.212 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=8 read=24464
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.313..504.912 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=71.814..71.814 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=46.878..71.791 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1757.65..1757.65 rows=1375 width=22) (actual time=1594.645..1594.645 rows=135012 loops=1)
                                                         Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 8905kB
                                                         Buffers: shared hit=1 read=27242
                                                         ->  Hash Join  (cost=565.97..1757.65 rows=1375 width=22) (actual time=670.633..1552.278 rows=135012 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=1 read=27242
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=20.062..806.232 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=564.45..564.45 rows=10379 width=10) (actual time=650.413..650.413 rows=324117 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Hash Join  (cost=0.05..564.45 rows=10379 width=10) (actual time=27.197..565.911 rows=324117 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=1 read=8453
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1172842 width=14) (actual time=27.082..382.373 rows=1172832 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207203
                                                                                 Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.072..0.072 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.057..0.063 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=159.488..159.488 rows=126230 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=20.300..113.123 rows=126230 loops=1)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 108767
                                 Buffers: shared read=2994
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=7.042..7.042 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=7.024..7.028 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=4.993..4.993 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=4.966..4.973 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 5
                     Buffers: shared read=1
 Planning Time: 8452.418 ms
 Execution Time: 13393.209 ms
(103 rows)


                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13403.73..13403.73 rows=1 width=96) (actual time=13329.919..13329.919 rows=1 loops=1)
   Buffers: shared hit=12 read=252593
   ->  Hash Join  (cost=4940.47..13403.73 rows=1 width=42) (actual time=12190.783..13329.865 rows=31 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=12 read=252593
         ->  Hash Join  (cost=4940.43..13403.70 rows=1 width=46) (actual time=12173.066..13312.129 rows=32 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=9 read=252592
               ->  Hash Join  (cost=4940.40..13403.67 rows=1 width=50) (actual time=12165.959..13305.004 rows=32 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=9 read=252591
                     ->  Hash Join  (cost=4793.47..13256.73 rows=1 width=35) (actual time=12005.877..13144.888 rows=42 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=9 read=249597
                           ->  Hash Join  (cost=0.05..8462.63 rows=5910 width=4) (actual time=7163.471..8434.812 rows=588764 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=667885 width=8) (actual time=10.454..8264.653 rows=669336 loops=1)
                                       Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14166384
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.918..23.919 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.869..23.906 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=4793.42..4793.42 rows=1 width=51) (actual time=4646.847..4646.847 rows=100 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 16kB
                                 Buffers: shared hit=9 read=87704
                                 ->  Hash Join  (cost=3231.04..4793.42 rows=1 width=51) (actual time=3405.022..4646.673 rows=100 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=9 read=87704
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=533370 width=25) (actual time=22.623..1661.185 rows=533369 loops=1)
                                             Filter: (production_year > 2009)
                                             Rows Removed by Filter: 1994943
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=3231.04..3231.04 rows=1 width=26) (actual time=2806.102..2806.102 rows=52686 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3394kB
                                             Buffers: shared hit=9 read=51706
                                             ->  Hash Join  (cost=1782.38..3231.04 rows=1 width=26) (actual time=1675.247..2789.217 rows=52686 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=9 read=51706
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=76.314..1181.132 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=8 read=24464
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.325..509.164 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=71.817..71.818 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=46.869..71.795 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1757.65..1757.65 rows=1375 width=22) (actual time=1585.855..1585.855 rows=135012 loops=1)
                                                         Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 8905kB
                                                         Buffers: shared hit=1 read=27242
                                                         ->  Hash Join  (cost=565.97..1757.65 rows=1375 width=22) (actual time=663.017..1544.911 rows=135012 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=1 read=27242
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=20.063..806.980 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=564.45..564.45 rows=10379 width=10) (actual time=642.797..642.797 rows=324117 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Hash Join  (cost=0.05..564.45 rows=10379 width=10) (actual time=27.189..559.105 rows=324117 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=1 read=8453
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1172842 width=14) (actual time=27.063..378.002 rows=1172832 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207203
                                                                                 Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.074..0.075 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.059..0.066 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=159.038..159.038 rows=126230 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=20.258..111.092 rows=126230 loops=1)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 108767
                                 Buffers: shared read=2994
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=7.066..7.066 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=7.048..7.052 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=17.691..17.691 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=17.664..17.671 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 5
                     Buffers: shared read=1
 Planning Time: 8498.086 ms
 Execution Time: 13331.092 ms
(103 rows)


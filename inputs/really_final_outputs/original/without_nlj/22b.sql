                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13403.73..13403.73 rows=1 width=96) (actual time=13258.051..13258.051 rows=1 loops=1)
   Buffers: shared hit=28 read=252577
   ->  Hash Join  (cost=4940.47..13403.73 rows=1 width=42) (actual time=12114.859..13257.990 rows=31 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=28 read=252577
         ->  Hash Join  (cost=4940.43..13403.70 rows=1 width=46) (actual time=12114.815..13257.927 rows=32 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=24 read=252577
               ->  Hash Join  (cost=4940.40..13403.67 rows=1 width=50) (actual time=12114.797..13257.890 rows=32 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=23 read=252577
                     ->  Hash Join  (cost=4793.47..13256.73 rows=1 width=35) (actual time=11921.565..13064.625 rows=42 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=21 read=249585
                           ->  Hash Join  (cost=0.05..8462.63 rows=5910 width=4) (actual time=7141.507..8411.634 rows=588764 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=667885 width=8) (actual time=13.354..8263.482 rows=669336 loops=1)
                                       Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14166384
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.064..0.064 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.056 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=4793.42..4793.42 rows=1 width=51) (actual time=4588.689..4588.689 rows=100 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 16kB
                                 Buffers: shared hit=18 read=87695
                                 ->  Hash Join  (cost=3231.04..4793.42 rows=1 width=51) (actual time=3447.461..4588.522 rows=100 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=18 read=87695
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=533370 width=25) (actual time=22.999..1653.296 rows=533369 loops=1)
                                             Filter: (production_year > 2009)
                                             Rows Removed by Filter: 1994943
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=3231.04..3231.04 rows=1 width=26) (actual time=2753.675..2753.675 rows=52686 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3394kB
                                             Buffers: shared hit=17 read=51698
                                             ->  Hash Join  (cost=1782.38..3231.04 rows=1 width=26) (actual time=1615.041..2736.481 rows=52686 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=17 read=51698
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=59.653..1170.325 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=11 read=24461
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..502.729 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=59.486..59.486 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=34.537..59.463 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1757.65..1757.65 rows=1375 width=22) (actual time=1543.818..1543.818 rows=135012 loops=1)
                                                         Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 8905kB
                                                         Buffers: shared hit=6 read=27237
                                                         ->  Hash Join  (cost=565.97..1757.65 rows=1375 width=22) (actual time=625.127..1502.638 rows=135012 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=6 read=27237
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.025..782.704 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=564.45..564.45 rows=10379 width=10) (actual time=624.944..624.944 rows=324117 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..564.45 rows=10379 width=10) (actual time=0.111..541.895 rows=324117 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1172842 width=14) (actual time=0.016..357.047 rows=1172832 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207203
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.060..0.060 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.053 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=192.897..192.897 rows=126230 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=57.542..146.449 rows=126230 loops=1)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 108767
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.006..0.006 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.002..0.003 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.017..0.017 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.008..0.010 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 5
                     Buffers: shared hit=1
 Planning Time: 9227.967 ms
 Execution Time: 13259.230 ms
(103 rows)


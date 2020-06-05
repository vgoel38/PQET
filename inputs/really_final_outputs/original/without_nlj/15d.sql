                                                                                       QUERY PLAN                                                                                        
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12160.61..12160.61 rows=1 width=64) (actual time=13253.543..13253.543 rows=1 loops=1)
   Buffers: shared hit=20 read=251253
   ->  Hash Join  (cost=10456.53..12160.54 rows=414 width=38) (actual time=11533.836..13236.817 rows=11347 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=20 read=251253
         ->  Hash Join  (cost=10397.79..12101.77 rows=414 width=42) (actual time=11450.490..13148.204 rows=11347 loops=1)
               Hash Cond: (t.id = at.movie_id)
               Buffers: shared hit=15 read=250306
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=21.627..1378.190 rows=1749032 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 779280
                     Buffers: shared hit=1 read=35997
               ->  Hash  (cost=10397.70..10397.70 rows=599 width=41) (actual time=11404.373..11404.373 rows=11557 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 980kB
                     Buffers: shared hit=14 read=214309
                     ->  Hash Join  (cost=8790.97..10397.70 rows=599 width=41) (actual time=10131.769..11400.716 rows=11557 loops=1)
                           Hash Cond: (mk.movie_id = at.movie_id)
                           Buffers: shared hit=14 read=214309
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..718.338 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=8790.96..8790.96 rows=44 width=33) (actual time=10107.737..10107.737 rows=896 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 68kB
                                 Buffers: shared hit=11 read=189858
                                 ->  Hash Join  (cost=1533.94..8790.96 rows=44 width=33) (actual time=3263.142..10107.042 rows=896 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=11 read=189858
                                       ->  Hash Join  (cost=1533.91..8790.92 rows=44 width=37) (actual time=3263.081..10106.349 rows=896 loops=1)
                                             Hash Cond: (at.movie_id = mc.movie_id)
                                             Buffers: shared hit=10 read=189858
                                             ->  Hash Join  (cost=272.32..7529.28 rows=39 width=29) (actual time=1843.966..8695.897 rows=591 loops=1)
                                                   Hash Cond: (mi.movie_id = at.movie_id)
                                                   Buffers: shared hit=5 read=168080
                                                   ->  Hash Join  (cost=0.05..7256.64 rows=98 width=4) (actual time=1542.621..8388.575 rows=10679 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared hit=3 read=161890
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=11124 width=8) (actual time=147.026..8382.585 rows=10810 loops=1)
                                                               Filter: (note ~~ '%internet%'::text)
                                                               Rows Removed by Filter: 14824910
                                                               Buffers: shared hit=2 read=161890
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.027..0.028 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.023 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=219.22..219.22 rows=361472 width=25) (actual time=299.533..299.534 rows=361472 loops=1)
                                                         Buckets: 524288  Batches: 1  Memory Usage: 25054kB
                                                         Buffers: shared hit=2 read=6190
                                                         ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=25) (actual time=4.148..168.301 rows=361472 loops=1)
                                                               Buffers: shared hit=2 read=6190
                                             ->  Hash  (cost=1123.32..1123.32 rows=941996 width=8) (actual time=1407.121..1407.121 rows=1153798 loops=1)
                                                   Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                                                   Buffers: shared hit=5 read=21778
                                                   ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=149.240..1069.272 rows=1153798 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=5 read=21778
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.008..281.638 rows=2609129 loops=1)
                                                               Buffers: shared hit=3 read=18786
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=148.902..148.903 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=10.948..118.350 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.030..0.030 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.008..0.011 rows=4 loops=1)
                                                   Buffers: shared hit=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=81.343..81.343 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.180..42.638 rows=134170 loops=1)
                     Buffers: shared hit=2 read=947
 Planning Time: 8972.803 ms
 Execution Time: 13272.957 ms
(78 rows)


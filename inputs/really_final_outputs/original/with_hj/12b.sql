                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10835.02..10835.02 rows=1 width=64) (actual time=11957.861..11957.861 rows=1 loops=1)
   Buffers: shared hit=4 read=228128
   ->  Hash Join  (cost=3492.79..10835.02 rows=1 width=59) (actual time=8300.148..11957.839 rows=10 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=4 read=228128
         ->  Hash Join  (cost=3492.76..10834.98 rows=1 width=63) (actual time=8291.759..11949.446 rows=10 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=1 read=228127
               ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=4514.424..8519.207 rows=121863 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared read=161893
                     ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=24.903..5464.134 rows=14835720 loops=1)
                           Buffers: shared read=161892
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.513..19.513 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.491..19.496 rows=1 loops=1)
                                 Filter: ((info)::text = 'budget'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
               ->  Hash  (cost=3492.71..3492.71 rows=6 width=33) (actual time=3416.253..3416.253 rows=10 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1 read=66234
                     ->  Hash Join  (cost=2510.09..3492.71 rows=6 width=33) (actual time=2713.498..3416.233 rows=10 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=1 read=66234
                           ->  Hash Join  (cost=2369.23..3351.85 rows=16 width=37) (actual time=2571.541..3274.256 rows=33 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=1 read=63240
                                 ->  Hash Join  (cost=1893.05..2875.51 rows=1398 width=33) (actual time=1741.470..2649.866 rows=3968 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared read=54787
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=21.074..484.128 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=1892.85..1892.85 rows=1355 width=21) (actual time=1711.925..1711.925 rows=2536 loops=1)
                                             Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 195kB
                                             Buffers: shared read=35998
                                             ->  Seq Scan on title t  (cost=0.00..1892.85 rows=1355 width=21) (actual time=4.193..1709.121 rows=2536 loops=1)
                                                   Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                                   Rows Removed by Filter: 2525776
                                                   Buffers: shared read=35998
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=623.501..623.501 rows=10 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                       Buffers: shared hit=1 read=8453
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=623.478..623.487 rows=10 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=1 read=8453
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=21.853..340.742 rows=1380035 loops=1)
                                                   Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.082..0.082 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.071..0.073 rows=1 loops=1)
                                                         Filter: ((info)::text = 'bottom 10 rank'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.559..141.559 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=6.179..110.663 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=8.323..8.323 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=2 width=4) (actual time=8.305..8.310 rows=2 loops=1)
                     Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                     Rows Removed by Filter: 2
                     Buffers: shared read=1
 Planning Time: 4688.660 ms
 Execution Time: 11984.531 ms
(72 rows)


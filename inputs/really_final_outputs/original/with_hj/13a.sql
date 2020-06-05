                                                                                      QUERY PLAN                                                                                      
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10533.45..10533.45 rows=1 width=96) (actual time=12546.603..12546.603 rows=1 loops=1)
   Buffers: shared hit=4 read=228129
   ->  Hash Join  (cost=3191.23..10533.45 rows=5 width=65) (actual time=6071.635..12499.270 rows=111101 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=4 read=228129
         ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=1618.994..8549.638 rows=3036719 loops=1)
               Hash Cond: (mi.info_type_id = it2.id)
               Buffers: shared hit=3 read=161893
               ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=24.971..5331.722 rows=14835720 loops=1)
                     Buffers: shared read=161892
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.498..19.498 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=19.452..19.487 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Hash  (cost=3191.17..3191.17 rows=44 width=35) (actual time=3543.878..3543.879 rows=16470 loops=1)
               Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1368kB
               Buffers: shared hit=1 read=66236
               ->  Hash Join  (cost=1601.44..3191.17 rows=44 width=35) (actual time=2819.023..3536.997 rows=16470 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=1 read=66236
                     ->  Hash Join  (cost=0.03..1547.70 rows=361187 width=21) (actual time=113.829..1628.732 rows=662825 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared read=35999
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=10.844..964.873 rows=2528312 loops=1)
                                 Buffers: shared read=35998
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.287..21.287 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.269..21.275 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared read=1
                     ->  Hash  (cost=1601.36..1601.36 rows=306 width=14) (actual time=1779.341..1779.341 rows=31510 loops=1)
                           Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1610kB
                           Buffers: shared hit=1 read=30237
                           ->  Hash Join  (cost=606.05..1601.36 rows=306 width=14) (actual time=1399.701..1770.672 rows=31510 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=1 read=30237
                                 ->  Hash Join  (cost=606.02..1601.20 rows=1225 width=18) (actual time=813.489..1729.793 rows=83899 loops=1)
                                       Hash Cond: (mc.movie_id = miidx.movie_id)
                                       Buffers: shared hit=1 read=30236
                                       ->  Hash Join  (cost=129.84..1112.30 rows=108530 width=8) (actual time=165.391..1017.414 rows=148132 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared read=21783
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=26.374..429.790 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=128.41..128.41 rows=9775 width=4) (actual time=138.785..138.785 rows=9775 loops=1)
                                                   Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=9775 width=4) (actual time=3.095..133.467 rows=9775 loops=1)
                                                         Filter: ((country_code)::text = '[de]'::text)
                                                         Rows Removed by Filter: 225222
                                                         Buffers: shared read=2994
                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=648.005..648.005 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                             Buffers: shared hit=1 read=8453
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=21.532..523.731 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=1 read=8453
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=21.457..226.242 rows=1380035 loops=1)
                                                         Buffers: shared read=8453
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.024..0.026 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=25.393..25.394 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=25.379..25.383 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
 Planning Time: 4546.309 ms
 Execution Time: 12565.839 ms
(80 rows)


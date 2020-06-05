                                                                           QUERY PLAN                                                                            
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10697.62..10697.62 rows=1 width=96) (actual time=12438.781..12438.782 rows=1 loops=1)
   Buffers: shared hit=4 read=228128
   ->  Hash Join  (cost=3419.05..10697.62 rows=1 width=42) (actual time=11518.297..12438.336 rows=397 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=4 read=228128
         ->  Hash Join  (cost=472.23..7750.80 rows=1 width=14) (actual time=8243.829..9197.781 rows=1943 loops=1)
               Hash Cond: (mi.movie_id = mi_idx.movie_id)
               Buffers: shared hit=4 read=170346
               ->  Hash Join  (cost=0.05..7278.33 rows=2427 width=4) (actual time=7633.481..8524.384 rows=272720 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=3 read=161893
                     ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=274233 width=8) (actual time=4879.063..8408.307 rows=274644 loops=1)
                           Filter: (info = ANY ('{Drama,Horror}'::text[]))
                           Rows Removed by Filter: 14561076
                           Buffers: shared read=161892
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.420..23.421 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.367..23.408 rows=1 loops=1)
                                 Filter: ((info)::text = 'genres'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
               ->  Hash  (cost=472.12..472.12 rows=468 width=10) (actual time=609.949..609.949 rows=15849 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                     Buffers: shared hit=1 read=8453
                     ->  Hash Join  (cost=0.05..472.12 rows=468 width=10) (actual time=11.490..602.979 rows=15849 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=1 read=8453
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=11.370..586.880 rows=52862 loops=1)
                                 Filter: (info > '8.0'::text)
                                 Rows Removed by Filter: 1327173
                                 Buffers: shared read=8453
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.067..0.067 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.051..0.058 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
         ->  Hash  (cost=2940.72..2940.72 rows=41530 width=44) (actual time=3239.279..3239.280 rows=81026 loops=1)
               Buckets: 131072 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 7619kB
               Buffers: shared read=57782
               ->  Hash Join  (cost=1902.89..2940.72 rows=41530 width=44) (actual time=2570.537..3205.499 rows=81026 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=57782
                     ->  Hash Join  (cost=1902.86..2922.82 rows=166118 width=48) (actual time=1979.204..3160.718 rows=154763 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=57781
                           ->  Hash Join  (cost=1762.00..2744.46 rows=460112 width=33) (actual time=1822.514..2895.197 rows=392556 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared read=54787
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=3.030..351.142 rows=2609129 loops=1)
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=1696.56..1696.56 rows=445860 width=21) (actual time=1818.140..1818.140 rows=445860 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 27838kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=445860 width=21) (actual time=10.541..1562.388 rows=445860 loops=1)
                                             Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                             Rows Removed by Filter: 2082452
                                             Buffers: shared read=35998
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=155.662..155.663 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=20.272..120.497 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=13.728..13.728 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=13.713..13.716 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
 Planning Time: 4763.632 ms
 Execution Time: 12461.171 ms
(76 rows)


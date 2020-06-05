                                                                           QUERY PLAN                                                                            
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10697.62..10697.62 rows=1 width=96) (actual time=12052.274..12052.274 rows=1 loops=1)
   Buffers: shared hit=16 read=228116
   ->  Hash Join  (cost=3419.05..10697.62 rows=1 width=42) (actual time=11282.317..12051.885 rows=397 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=16 read=228116
         ->  Hash Join  (cost=472.23..7750.80 rows=1 width=14) (actual time=8124.523..8928.122 rows=1943 loops=1)
               Hash Cond: (mi.movie_id = mi_idx.movie_id)
               Buffers: shared hit=9 read=170341
               ->  Hash Join  (cost=0.05..7278.33 rows=2427 width=4) (actual time=7513.583..8257.764 rows=272720 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared hit=6 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=274233 width=8) (actual time=4801.361..8170.957 rows=274644 loops=1)
                           Filter: (info = ANY ('{Drama,Horror}'::text[]))
                           Rows Removed by Filter: 14561076
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.019 rows=1 loops=1)
                                 Filter: ((info)::text = 'genres'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=472.12..472.12 rows=468 width=10) (actual time=610.698..610.698 rows=15849 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                     Buffers: shared hit=3 read=8451
                     ->  Hash Join  (cost=0.05..472.12 rows=468 width=10) (actual time=0.068..603.981 rows=15849 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it2.id)
                           Buffers: shared hit=3 read=8451
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=0.026..587.780 rows=52862 loops=1)
                                 Filter: (info > '8.0'::text)
                                 Rows Removed by Filter: 1327173
                                 Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.018 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
         ->  Hash  (cost=2940.72..2940.72 rows=41530 width=44) (actual time=3122.583..3122.583 rows=81026 loops=1)
               Buckets: 131072 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 7619kB
               Buffers: shared hit=7 read=57775
               ->  Hash Join  (cost=1902.89..2940.72 rows=41530 width=44) (actual time=2527.398..3091.013 rows=81026 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=7 read=57775
                     ->  Hash Join  (cost=1902.86..2922.82 rows=166118 width=48) (actual time=1959.637..3061.770 rows=154763 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=1762.00..2744.46 rows=460112 width=33) (actual time=1797.352..2795.192 rows=392556 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=4 read=54783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.007..299.524 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=1696.56..1696.56 rows=445860 width=21) (actual time=1795.867..1795.867 rows=445860 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 27838kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=445860 width=21) (actual time=5.003..1545.564 rows=445860 loops=1)
                                             Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                             Rows Removed by Filter: 2082452
                                             Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=161.935..161.935 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=26.447..124.668 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
 Planning Time: 5075.931 ms
 Execution Time: 12054.932 ms
(76 rows)


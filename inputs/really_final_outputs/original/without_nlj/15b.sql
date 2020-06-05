                                                                                                   QUERY PLAN                                                                                                    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13307.76..13307.76 rows=1 width=64) (actual time=12714.193..12714.193 rows=1 loops=1)
   Buffers: shared hit=18 read=248265
   ->  Hash Join  (cost=4900.22..13307.76 rows=4 width=59) (actual time=6891.401..12714.132 rows=37 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=18 read=248265
         ->  Hash Join  (cost=4841.48..13249.02 rows=4 width=63) (actual time=6797.667..12620.353 rows=37 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=13 read=247318
               ->  Hash Join  (cost=0.05..8407.59 rows=2 width=46) (actual time=1563.653..8422.182 rows=1771 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared hit=3 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=260 width=50) (actual time=1563.524..8420.686 rows=1771 loops=1)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 14833949
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.083..0.083 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.024..0.060 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=4841.43..4841.43 rows=4 width=37) (actual time=4197.426..4197.426 rows=292 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 28kB
                     Buffers: shared hit=10 read=85428
                     ->  Hash Join  (cost=3061.46..4841.43 rows=4 width=37) (actual time=2657.872..4197.231 rows=292 loops=1)
                           Hash Cond: (t.id = at.movie_id)
                           Buffers: shared hit=10 read=85428
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=716259 width=21) (actual time=6.515..1650.216 rows=716259 loops=1)
                                 Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                 Rows Removed by Filter: 1812053
                                 Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=3061.46..3061.46 rows=14 width=16) (actual time=2387.581..2387.582 rows=292 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 22kB
                                 Buffers: shared hit=9 read=49431
                                 ->  Hash Join  (cost=1454.76..3061.46 rows=14 width=16) (actual time=1298.921..2387.470 rows=292 loops=1)
                                       Hash Cond: (mk.movie_id = at.movie_id)
                                       Buffers: shared hit=9 read=49431
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..600.620 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=1454.76..1454.76 rows=1 width=8) (actual time=1250.689..1250.689 rows=27 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                             Buffers: shared hit=6 read=24980
                                             ->  Hash Join  (cost=278.44..1454.76 rows=1 width=8) (actual time=404.050..1250.647 rows=27 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared hit=6 read=24980
                                                   ->  Hash Join  (cost=278.41..1454.73 rows=1 width=12) (actual time=403.991..1250.549 rows=27 loops=1)
                                                         Hash Cond: (mc.movie_id = at.movie_id)
                                                         Buffers: shared hit=5 read=24980
                                                         ->  Hash Join  (cost=6.13..1182.45 rows=1 width=8) (actual time=57.894..947.860 rows=278 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=3 read=18790
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=17389 width=12) (actual time=0.019..885.576 rows=61664 loops=1)
                                                                     Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                                     Rows Removed by Filter: 2547465
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=52.704..52.704 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=4
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=52.695..52.696 rows=1 loops=1)
                                                                           Index Cond: (name = 'YouTube'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                                         ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=300.758..300.758 rows=361472 loops=1)
                                                               Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                               Buffers: shared hit=2 read=6190
                                                               ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=5.532..175.668 rows=361472 loops=1)
                                                                     Buffers: shared hit=2 read=6190
                                                   ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.030..0.030 rows=4 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.008..0.012 rows=4 loops=1)
                                                               Buffers: shared hit=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=93.107..93.108 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.084..54.567 rows=134170 loops=1)
                     Buffers: shared hit=2 read=947
 Planning Time: 9205.565 ms
 Execution Time: 12714.846 ms
(80 rows)


                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13350.89..13350.89 rows=1 width=64) (actual time=12996.275..12996.276 rows=1 loops=1)
   Buffers: shared hit=3 read=251270
   ->  Hash Join  (cost=4943.35..13350.89 rows=8 width=59) (actual time=6109.642..12996.062 rows=328 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3 read=251270
         ->  Hash Join  (cost=4884.61..13292.15 rows=8 width=63) (actual time=6026.333..12912.550 rows=328 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared read=250321
               ->  Hash Join  (cost=4884.58..13292.12 rows=8 width=67) (actual time=6017.941..12904.030 rows=328 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared read=250320
                     ->  Hash Join  (cost=0.05..8407.59 rows=2 width=46) (actual time=1569.437..8512.055 rows=1771 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared read=161893
                           ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=260 width=50) (actual time=1548.021..8489.273 rows=1771 loops=1)
                                 Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                 Rows Removed by Filter: 14833949
                                 Buffers: shared read=161892
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=21.389..21.389 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=21.342..21.376 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Hash  (cost=4881.54..4881.54 rows=20379 width=41) (actual time=4390.728..4390.728 rows=192112 loops=1)
                           Buckets: 262144 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 16217kB
                           Buffers: shared read=88427
                           ->  Hash Join  (cost=3274.66..4881.54 rows=20379 width=41) (actual time=3107.520..4330.416 rows=192112 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared read=88427
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=22.818..622.921 rows=4523930 loops=1)
                                       Buffers: shared read=24454
                                 ->  Hash  (cost=3274.44..3274.44 rows=1498 width=33) (actual time=3078.179..3078.179 rows=5134 loops=1)
                                       Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 408kB
                                       Buffers: shared read=63973
                                       ->  Hash Join  (cost=1613.19..3274.44 rows=1498 width=33) (actual time=1373.327..3074.212 rows=5134 loops=1)
                                             Hash Cond: (t.id = at.movie_id)
                                             Buffers: shared read=63973
                                             ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=12.245..1381.435 rows=1381453 loops=1)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1146859
                                                   Buffers: shared read=35998
                                             ->  Hash  (cost=1612.79..1612.79 rows=2741 width=12) (actual time=1354.076..1354.076 rows=13699 loops=1)
                                                   Buckets: 16384 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 717kB
                                                   Buffers: shared read=27975
                                                   ->  Hash Join  (cost=413.13..1612.79 rows=2741 width=12) (actual time=464.065..1349.013 rows=13699 loops=1)
                                                         Hash Cond: (mc.movie_id = at.movie_id)
                                                         Buffers: shared read=27975
                                                         ->  Hash Join  (cost=140.86..1317.18 rows=6278 width=8) (actual time=144.984..1019.742 rows=43837 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared read=21783
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=17389 width=12) (actual time=4.687..856.212 rows=61664 loops=1)
                                                                     Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                                     Rows Removed by Filter: 2547465
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=139.258..139.258 rows=84843 loops=1)
                                                                     Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                     Buffers: shared read=2994
                                                                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.279..107.257 rows=84843 loops=1)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 150154
                                                                           Buffers: shared read=2994
                                                         ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=307.808..307.808 rows=361472 loops=1)
                                                               Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                               Buffers: shared read=6192
                                                               ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=9.325..185.847 rows=361472 loops=1)
                                                                     Buffers: shared read=6192
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=8.372..8.372 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=8.347..8.351 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=81.209..81.209 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=949
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=9.162..42.945 rows=134170 loops=1)
                     Buffers: shared read=949
 Planning Time: 8540.300 ms
 Execution Time: 13073.256 ms
(80 rows)


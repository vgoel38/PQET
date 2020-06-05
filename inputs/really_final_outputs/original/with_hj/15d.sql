                                                                                       QUERY PLAN                                                                                        
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12160.61..12160.61 rows=1 width=64) (actual time=13436.951..13436.951 rows=1 loops=1)
   Buffers: shared hit=3 read=251270
   ->  Hash Join  (cost=10456.53..12160.54 rows=414 width=38) (actual time=11716.994..13420.500 rows=11347 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3 read=251270
         ->  Hash Join  (cost=10397.79..12101.77 rows=414 width=42) (actual time=11633.497..13331.778 rows=11347 loops=1)
               Hash Cond: (t.id = at.movie_id)
               Buffers: shared read=250321
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=21.576..1376.680 rows=1749032 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 779280
                     Buffers: shared read=35998
               ->  Hash  (cost=10397.70..10397.70 rows=599 width=41) (actual time=11595.950..11595.950 rows=11557 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 980kB
                     Buffers: shared read=214323
                     ->  Hash Join  (cost=8790.97..10397.70 rows=599 width=41) (actual time=10323.879..11592.124 rows=11557 loops=1)
                           Hash Cond: (mk.movie_id = at.movie_id)
                           Buffers: shared read=214323
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.281..672.460 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=8790.96..8790.96 rows=44 width=33) (actual time=10295.114..10295.114 rows=896 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 68kB
                                 Buffers: shared read=189869
                                 ->  Hash Join  (cost=1533.94..8790.96 rows=44 width=33) (actual time=3451.376..10294.484 rows=896 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared read=189869
                                       ->  Hash Join  (cost=1533.91..8790.92 rows=44 width=37) (actual time=3427.371..10269.889 rows=896 loops=1)
                                             Hash Cond: (at.movie_id = mc.movie_id)
                                             Buffers: shared read=189868
                                             ->  Hash Join  (cost=272.32..7529.28 rows=39 width=29) (actual time=1991.220..8841.903 rows=591 loops=1)
                                                   Hash Cond: (mi.movie_id = at.movie_id)
                                                   Buffers: shared read=168085
                                                   ->  Hash Join  (cost=0.05..7256.64 rows=98 width=4) (actual time=1639.176..8484.320 rows=10679 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared read=161893
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=11124 width=8) (actual time=195.613..8454.745 rows=10810 loops=1)
                                                               Filter: (note ~~ '%internet%'::text)
                                                               Rows Removed by Filter: 14824910
                                                               Buffers: shared read=161892
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.842..23.842 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.785..23.820 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=219.22..219.22 rows=361472 width=25) (actual time=350.480..350.480 rows=361472 loops=1)
                                                         Buckets: 524288  Batches: 1  Memory Usage: 25054kB
                                                         Buffers: shared read=6192
                                                         ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=25) (actual time=4.588..218.347 rows=361472 loops=1)
                                                               Buffers: shared read=6192
                                             ->  Hash  (cost=1123.32..1123.32 rows=941996 width=8) (actual time=1424.802..1424.802 rows=1153798 loops=1)
                                                   Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                                                   Buffers: shared read=21783
                                                   ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=149.276..1084.802 rows=1153798 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=7.629..298.268 rows=2609129 loops=1)
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=140.756..140.756 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.352..109.056 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared read=2994
                                       ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=23.974..23.974 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=23.948..23.953 rows=4 loops=1)
                                                   Buffers: shared read=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=81.431..81.431 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=949
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=9.276..42.765 rows=134170 loops=1)
                     Buffers: shared read=949
 Planning Time: 8727.811 ms
 Execution Time: 13459.913 ms
(78 rows)


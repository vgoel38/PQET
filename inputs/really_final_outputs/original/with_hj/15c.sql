                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14462.73..14462.73 rows=1 width=64) (actual time=13338.066..13338.066 rows=1 loops=1)
   Buffers: shared hit=3 read=251270
   ->  Hash Join  (cost=12758.77..14462.73 rows=10 width=59) (actual time=11535.405..13337.080 rows=2271 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3 read=251270
         ->  Hash Join  (cost=12700.04..14403.99 rows=10 width=63) (actual time=11454.322..13254.923 rows=2271 loops=1)
               Hash Cond: (t.id = at.movie_id)
               Buffers: shared read=250321
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=23.926..1508.129 rows=1749032 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 779280
                     Buffers: shared read=35998
               ->  Hash  (cost=12700.03..12700.03 rows=14 width=62) (actual time=11406.666..11406.666 rows=2271 loops=1)
                     Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 191kB
                     Buffers: shared read=214323
                     ->  Hash Join  (cost=11093.34..12700.03 rows=14 width=62) (actual time=10223.806..11405.794 rows=2271 loops=1)
                           Hash Cond: (mk.movie_id = at.movie_id)
                           Buffers: shared read=214323
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.275..617.740 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=11093.34..11093.34 rows=1 width=54) (actual time=10195.505..10195.505 rows=284 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 26kB
                                 Buffers: shared read=189869
                                 ->  Hash Join  (cost=1533.94..11093.34 rows=1 width=54) (actual time=3344.245..10195.242 rows=284 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared read=189869
                                       ->  Hash Join  (cost=1533.91..11093.30 rows=1 width=58) (actual time=3320.357..10171.089 rows=284 loops=1)
                                             Hash Cond: (at.movie_id = mc.movie_id)
                                             Buffers: shared read=189868
                                             ->  Hash Join  (cost=272.32..9831.72 rows=1 width=50) (actual time=1876.705..8727.190 rows=120 loops=1)
                                                   Hash Cond: (mi.movie_id = at.movie_id)
                                                   Buffers: shared read=168085
                                                   ->  Hash Join  (cost=0.05..9559.43 rows=3 width=46) (actual time=1544.509..8405.091 rows=1783 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared read=161893
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=328 width=50) (actual time=1524.212..8383.470 rows=1783 loops=1)
                                                               Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                               Rows Removed by Filter: 14833937
                                                               Buffers: shared read=161892
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.264..20.264 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.237..20.256 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=318.498..318.498 rows=361472 loops=1)
                                                         Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                         Buffers: shared read=6192
                                                         ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=23.376..192.357 rows=361472 loops=1)
                                                               Buffers: shared read=6192
                                             ->  Hash  (cost=1123.32..1123.32 rows=941996 width=8) (actual time=1439.405..1439.405 rows=1153798 loops=1)
                                                   Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                                                   Buffers: shared read=21783
                                                   ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=146.210..1093.146 rows=1153798 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=3.769..299.684 rows=2609129 loops=1)
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.669..141.669 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.478..108.701 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared read=2994
                                       ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=23.852..23.852 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=23.827..23.832 rows=4 loops=1)
                                                   Buffers: shared read=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=78.987..78.987 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=949
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=9.172..41.586 rows=134170 loops=1)
                     Buffers: shared read=949
 Planning Time: 8310.515 ms
 Execution Time: 13402.573 ms
(78 rows)


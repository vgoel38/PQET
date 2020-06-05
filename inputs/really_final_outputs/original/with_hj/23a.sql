                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14158.22..14158.22 rows=1 width=64) (actual time=14112.646..14112.646 rows=1 loops=1)
   Buffers: shared hit=3 read=245811
   ->  Hash Join  (cost=4598.83..14158.22 rows=1 width=27) (actual time=8274.731..14112.255 rows=618 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3 read=245811
         ->  Hash Join  (cost=4540.10..14099.48 rows=1 width=31) (actual time=8193.655..14030.780 rows=618 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared read=244862
               ->  Hash Join  (cost=4540.06..14099.45 rows=1 width=35) (actual time=8183.021..14019.824 rows=618 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared read=244861
                     ->  Hash Join  (cost=0.05..9559.43 rows=3 width=4) (actual time=1544.420..8475.010 rows=1783 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared read=161893
                           ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=328 width=8) (actual time=1523.182..8452.503 rows=1783 loops=1)
                                 Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                 Rows Removed by Filter: 14833937
                                 Buffers: shared read=161892
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=21.192..21.192 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=21.145..21.180 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Hash  (cost=4536.80..4536.80 rows=21936 width=51) (actual time=5543.341..5543.341 rows=760449 loops=1)
                           Buckets: 1048576 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 67549kB
                           Buffers: shared read=82968
                           ->  Hash Join  (cost=2924.37..4536.80 rows=21936 width=51) (actual time=3222.337..5292.609 rows=760449 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=82968
                                 ->  Hash Join  (cost=2783.51..4390.98 rows=60758 width=55) (actual time=3060.348..4626.031 rows=3282823 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared read=79974
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=2.522..526.373 rows=4523930 loops=1)
                                             Buffers: shared read=24454
                                       ->  Hash  (cost=2782.59..2782.59 rows=6278 width=47) (actual time=2846.781..2846.781 rows=23883 loops=1)
                                             Buckets: 32768 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 2028kB
                                             Buffers: shared read=55520
                                             ->  Hash Join  (cost=1708.79..2782.59 rows=6278 width=47) (actual time=2132.461..2835.794 rows=23883 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared read=55520
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=8.645..459.222 rows=2609129 loops=1)
                                                         Buffers: shared read=18789
                                                   ->  Hash  (cost=1708.40..1708.40 rows=2636 width=35) (actual time=1944.716..1944.716 rows=1033 loops=1)
                                                         Buckets: 4096  Batches: 1  Memory Usage: 97kB
                                                         Buffers: shared read=36731
                                                         ->  Hash Join  (cost=51.82..1708.40 rows=2636 width=35) (actual time=1340.672..1943.897 rows=1033 loops=1)
                                                               Hash Cond: (t.id = cc.movie_id)
                                                               Buffers: shared read=36731
                                                               ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=31) (actual time=106.506..1780.527 rows=274015 loops=1)
                                                                     Hash Cond: (t.kind_id = kt.id)
                                                                     Buffers: shared read=35999
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=3.476..1434.837 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared read=35998
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=14) (actual time=21.268..21.269 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=21.249..21.255 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'movie'::text)
                                                                                 Rows Removed by Filter: 6
                                                                                 Buffers: shared read=1
                                                               ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=97.525..97.525 rows=24592 loops=1)
                                                                     Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                                     Buffers: shared read=732
                                                                     ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=27.066..88.825 rows=24592 loops=1)
                                                                           Hash Cond: (cc.status_id = cct1.id)
                                                                           Buffers: shared read=732
                                                                           ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=19.794..46.866 rows=135086 loops=1)
                                                                                 Buffers: shared read=731
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=7.224..7.224 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared read=1
                                                                                 ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=7.209..7.211 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete+verified'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared read=1
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=160.984..160.984 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=25.487..129.323 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared read=2994
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=10.616..10.616 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=10.596..10.601 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=79.023..79.023 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=949
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=9.216..41.888 rows=134170 loops=1)
                     Buffers: shared read=949
 Planning Time: 8608.319 ms
 Execution Time: 14134.252 ms
(98 rows)


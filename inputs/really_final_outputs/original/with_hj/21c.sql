                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15862.96..15862.96 rows=1 width=96) (actual time=12827.068..12827.068 rows=1 loops=1)
   Buffers: shared hit=3 read=244296
   ->  Hash Join  (cost=4466.73..15862.96 rows=1 width=48) (actual time=11461.687..12803.118 rows=1874 loops=1)
         Hash Cond: (mi.movie_id = ml.movie_id)
         Buffers: shared hit=3 read=244296
         ->  Seq Scan on movie_info mi  (cost=0.00..11287.12 rows=936891 width=4) (actual time=44.289..8461.090 rows=936223 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
               Rows Removed by Filter: 13899497
               Buffers: shared read=161892
         ->  Hash  (cost=4466.73..4466.73 rows=1 width=64) (actual time=4237.956..4237.956 rows=402 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 49kB
               Buffers: shared read=82404
               ->  Hash Join  (cost=2548.85..4466.73 rows=1 width=64) (actual time=2537.079..4237.767 rows=402 loops=1)
                     Hash Cond: (t.id = ml.movie_id)
                     Buffers: shared read=82404
                     ->  Hash Join  (cost=2538.76..4456.64 rows=4 width=48) (actual time=2492.894..4192.856 rows=1803 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared read=82240
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1900368 width=21) (actual time=27.365..1354.232 rows=1900368 loops=1)
                                 Filter: ((production_year >= 1950) AND (production_year <= 2010))
                                 Rows Removed by Filter: 627944
                                 Buffers: shared read=35998
                           ->  Hash  (cost=2538.76..2538.76 rows=5 width=27) (actual time=2454.630..2454.630 rows=2293 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 171kB
                                 Buffers: shared read=46242
                                 ->  Hash Join  (cost=1090.11..2538.76 rows=5 width=27) (actual time=1331.655..2453.529 rows=2293 loops=1)
                                       Hash Cond: (mk.movie_id = mc.movie_id)
                                       Buffers: shared read=46242
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=52.243..1187.621 rows=10544 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.349..529.939 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.329..47.330 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.314..47.317 rows=1 loops=1)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=1074.21..1074.21 rows=66524 width=23) (actual time=1260.056..1260.056 rows=224256 loops=1)
                                             Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 14559kB
                                             Buffers: shared read=21784
                                             ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=707.512..1190.575 rows=224256 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared read=21784
                                                   ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=169.745..1129.894 rows=240875 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=26.254..758.035 rows=1271989 loops=1)
                                                               Filter: (note IS NULL)
                                                               Rows Removed by Filter: 1337140
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=138.130..138.131 rows=48302 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=2.697..121.343 rows=48302 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                     Rows Removed by Filter: 186695
                                                                     Buffers: shared read=2994
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.179..0.179 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.162..0.165 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'production companies'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                     ->  Hash  (cost=9.84..9.84 rows=1666 width=16) (actual time=44.157..44.157 rows=2315 loops=1)
                           Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 136kB
                           Buffers: shared read=164
                           ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.313..42.990 rows=2315 loops=1)
                                 Hash Cond: (ml.link_type_id = lt.id)
                                 Buffers: shared read=164
                                 ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.139..32.769 rows=29997 loops=1)
                                       Buffers: shared read=163
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.113..0.113 rows=2 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.088..0.102 rows=2 loops=1)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 16
                                             Buffers: shared read=1
 Planning Time: 5487.136 ms
 Execution Time: 12827.713 ms
(83 rows)


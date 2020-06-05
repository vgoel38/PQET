                                                                                                           QUERY PLAN                                                                                                            
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12537.47..12537.47 rows=1 width=96) (actual time=12884.374..12884.374 rows=1 loops=1)
   Buffers: shared hit=4 read=245028
   ->  Hash Join  (cost=4114.29..12537.47 rows=1 width=48) (actual time=11527.834..12860.408 rows=247 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=4 read=245028
         ->  Hash Join  (cost=4114.26..12537.44 rows=1 width=40) (actual time=11501.629..12834.066 rows=247 loops=1)
               Hash Cond: (t.id = ml.movie_id)
               Buffers: shared hit=1 read=245027
               ->  Hash Join  (cost=4102.67..12525.82 rows=1 width=56) (actual time=4574.176..12806.511 rows=25 loops=1)
                     Hash Cond: (cc.subject_id = cct1.id)
                     Buffers: shared hit=1 read=244864
                     ->  Hash Join  (cost=4102.63..12525.79 rows=1 width=60) (actual time=4574.023..12806.337 rows=25 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=1 read=244863
                           ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=134293 width=4) (actual time=26.549..8394.290 rows=134239 loops=1)
                                 Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                 Rows Removed by Filter: 14701481
                                 Buffers: shared read=161892
                           ->  Hash  (cost=4102.63..4102.63 rows=1 width=56) (actual time=4391.324..4391.325 rows=21 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 11kB
                                 Buffers: shared hit=1 read=82971
                                 ->  Hash Join  (cost=2596.95..4102.63 rows=1 width=56) (actual time=2561.549..4391.271 rows=21 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=1 read=82971
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=46583 width=21) (actual time=8.697..1904.659 rows=46583 loops=1)
                                             Filter: (production_year = 1998)
                                             Rows Removed by Filter: 2481729
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=2596.95..2596.95 rows=1 width=35) (actual time=2468.719..2468.719 rows=722 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 58kB
                                             Buffers: shared hit=1 read=46973
                                             ->  Hash Join  (cost=1679.06..2596.95 rows=1 width=35) (actual time=2121.649..2468.400 rows=722 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared hit=1 read=46973
                                                   ->  Hash Join  (cost=1679.03..2596.92 rows=1 width=39) (actual time=1454.547..2467.902 rows=831 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=1 read=46972
                                                         ->  Hash Join  (cost=1506.91..2424.80 rows=5 width=24) (actual time=1303.709..2323.369 rows=3472 loops=1)
                                                               Hash Cond: (mc.movie_id = mk.movie_id)
                                                               Buffers: shared hit=1 read=43978
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=2.958..878.233 rows=1271989 loops=1)
                                                                     Filter: (note IS NULL)
                                                                     Rows Removed by Filter: 1337140
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=1506.91..1506.91 rows=2 width=12) (actual time=1288.716..1288.716 rows=1948 loops=1)
                                                                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 100kB
                                                                     Buffers: shared hit=1 read=25189
                                                                     ->  Hash Join  (cost=58.26..1506.91 rows=2 width=12) (actual time=155.079..1287.882 rows=1948 loops=1)
                                                                           Hash Cond: (cc.status_id = cct2.id)
                                                                           Buffers: shared hit=1 read=25189
                                                                           ->  Hash Join  (cost=58.23..1506.88 rows=10 width=16) (actual time=155.018..1286.890 rows=3266 loops=1)
                                                                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                 Buffers: shared read=25189
                                                                                 ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=55.732..1206.814 rows=10544 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared read=24458
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.847..525.842 rows=4523930 loops=1)
                                                                                             Buffers: shared read=24454
                                                                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.321..47.321 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared read=4
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.306..47.309 rows=1 loops=1)
                                                                                                   Index Cond: (keyword = 'sequel'::text)
                                                                                                   Buffers: shared read=4
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=74.282..74.282 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared read=731
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=2.642..35.083 rows=135086 loops=1)
                                                                                             Buffers: shared read=731
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.018 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared hit=1
                                                         ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=142.721..142.721 rows=48302 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=7.308..124.251 rows=48302 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                     Rows Removed by Filter: 186695
                                                                     Buffers: shared read=2994
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.136..0.136 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.124..0.127 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'production companies'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.131..0.132 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.126..0.128 rows=2 loops=1)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Rows Removed by Filter: 2
                                 Buffers: shared read=1
               ->  Hash  (cost=7.19..7.19 rows=29997 width=8) (actual time=27.149..27.149 rows=29997 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                     Buffers: shared read=163
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.192..13.318 rows=29997 loops=1)
                           Buffers: shared read=163
         ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=26.140..26.140 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=26.106..26.121 rows=2 loops=1)
                     Filter: ((link)::text ~~ '%follow%'::text)
                     Rows Removed by Filter: 16
                     Buffers: shared read=1
 Planning Time: 10655.246 ms
 Execution Time: 12885.070 ms
(111 rows)


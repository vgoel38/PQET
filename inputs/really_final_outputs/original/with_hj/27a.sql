                                                                                                           QUERY PLAN                                                                                                            
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12834.39..12834.39 rows=1 width=96) (actual time=12694.889..12694.889 rows=1 loops=1)
   Buffers: shared hit=4 read=245028
   ->  Hash Join  (cost=4411.21..12834.39 rows=1 width=48) (actual time=11333.241..12671.398 rows=477 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=4 read=245028
         ->  Hash Join  (cost=4411.17..12834.35 rows=1 width=40) (actual time=11301.903..12639.836 rows=477 loops=1)
               Hash Cond: (t.id = ml.movie_id)
               Buffers: shared hit=1 read=245027
               ->  Hash Join  (cost=4399.58..12822.74 rows=1 width=56) (actual time=4313.584..12617.013 rows=415 loops=1)
                     Hash Cond: (cc.subject_id = cct1.id)
                     Buffers: shared hit=1 read=244864
                     ->  Hash Join  (cost=4399.55..12822.71 rows=1 width=60) (actual time=4313.404..12616.597 rows=415 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=1 read=244863
                           ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=134293 width=4) (actual time=31.413..8401.852 rows=134239 loops=1)
                                 Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                 Rows Removed by Filter: 14701481
                                 Buffers: shared read=161892
                           ->  Hash  (cost=4399.55..4399.55 rows=1 width=56) (actual time=4191.800..4191.800 rows=570 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 64kB
                                 Buffers: shared hit=1 read=82971
                                 ->  Hash Join  (cost=2596.95..4399.55 rows=1 width=56) (actual time=2415.860..4191.091 rows=570 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=1 read=82971
                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=910581 width=21) (actual time=8.707..1597.406 rows=910581 loops=1)
                                             Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                             Rows Removed by Filter: 1617731
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=2596.95..2596.95 rows=1 width=35) (actual time=2378.684..2378.684 rows=722 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 58kB
                                             Buffers: shared hit=1 read=46973
                                             ->  Hash Join  (cost=1679.06..2596.95 rows=1 width=35) (actual time=2021.331..2378.367 rows=722 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared hit=1 read=46973
                                                   ->  Hash Join  (cost=1679.03..2596.92 rows=1 width=39) (actual time=1476.800..2358.032 rows=831 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=1 read=46972
                                                         ->  Hash Join  (cost=1506.91..2424.80 rows=5 width=24) (actual time=1307.004..2195.015 rows=3472 loops=1)
                                                               Hash Cond: (mc.movie_id = mk.movie_id)
                                                               Buffers: shared hit=1 read=43978
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.167..745.075 rows=1271989 loops=1)
                                                                     Filter: (note IS NULL)
                                                                     Rows Removed by Filter: 1337140
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=1506.91..1506.91 rows=2 width=12) (actual time=1289.131..1289.131 rows=1948 loops=1)
                                                                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 100kB
                                                                     Buffers: shared hit=1 read=25189
                                                                     ->  Hash Join  (cost=58.26..1506.91 rows=2 width=12) (actual time=161.127..1288.293 rows=1948 loops=1)
                                                                           Hash Cond: (cc.status_id = cct2.id)
                                                                           Buffers: shared hit=1 read=25189
                                                                           ->  Hash Join  (cost=58.23..1506.88 rows=10 width=16) (actual time=161.097..1287.344 rows=3266 loops=1)
                                                                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                 Buffers: shared read=25189
                                                                                 ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=53.588..1200.931 rows=10544 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared read=24458
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=5.697..539.084 rows=4523930 loops=1)
                                                                                             Buffers: shared read=24454
                                                                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.319..47.319 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared read=4
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.298..47.301 rows=1 loops=1)
                                                                                                   Index Cond: (keyword = 'sequel'::text)
                                                                                                   Buffers: shared read=4
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=79.934..79.934 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared read=731
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=2.007..37.114 rows=135086 loops=1)
                                                                                             Buffers: shared read=731
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared hit=1
                                                         ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=161.195..161.195 rows=48302 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=20.780..142.674 rows=48302 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                     Rows Removed by Filter: 186695
                                                                     Buffers: shared read=2994
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=19.996..19.996 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=19.982..19.985 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'production companies'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.164..0.164 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.149..0.153 rows=2 loops=1)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Rows Removed by Filter: 2
                                 Buffers: shared read=1
               ->  Hash  (cost=7.19..7.19 rows=29997 width=8) (actual time=22.269..22.269 rows=29997 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                     Buffers: shared read=163
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.192..10.942 rows=29997 loops=1)
                           Buffers: shared read=163
         ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=31.310..31.310 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=31.277..31.292 rows=2 loops=1)
                     Filter: ((link)::text ~~ '%follow%'::text)
                     Rows Removed by Filter: 16
                     Buffers: shared read=1
 Planning Time: 10533.516 ms
 Execution Time: 12695.415 ms
(111 rows)


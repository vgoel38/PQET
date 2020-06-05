                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=91146.39..91146.39 rows=1 width=96) (actual time=16602.651..16602.651 rows=1 loops=1)
   Buffers: shared hit=2743305 read=109744
   ->  Hash Join  (cost=51489.75..91146.39 rows=12 width=60) (actual time=13698.205..16575.078 rows=14899 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2743305 read=109744
         ->  Hash Join  (cost=46861.72..86518.36 rows=13 width=45) (actual time=12870.870..15737.477 rows=14916 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=2511588 read=105904
               ->  Hash Join  (cost=46852.54..86509.17 rows=17 width=49) (actual time=12870.720..15728.000 rows=15510 loops=1)
                     Hash Cond: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=2511588 read=105902
                     ->  Hash Join  (cost=23878.82..63535.44 rows=6 width=29) (actual time=10825.766..13675.445 rows=1460 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=2511588 read=79982
                           ->  Hash Join  (cost=23872.69..63529.31 rows=6 width=33) (actual time=10801.266..13650.105 rows=1460 loops=1)
                                 Hash Cond: (t.id = ml.movie_id)
                                 Buffers: shared hit=2511588 read=79980
                                 ->  Hash Join  (cost=23592.49..63247.08 rows=91 width=25) (actual time=10677.421..13515.145 rows=36063 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=2511512 read=79734
                                       ->  Hash Join  (cost=18.41..39673.00 rows=101 width=4) (actual time=111.189..2918.302 rows=47403 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21642 read=36826
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=38.072..2043.007 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=72.305..72.305 rows=3 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=6 read=9
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=45.661..72.279 rows=3 loops=1)
                                                         Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                         Buffers: shared hit=6 read=9
                                       ->  Hash  (cost=23238.35..23238.35 rows=2287272 width=21) (actual time=10541.344..10541.344 rows=2287271 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 155384kB
                                             Buffers: shared hit=2489870 read=42908
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=21) (actual time=33.825..9614.985 rows=2287271 loops=1)
                                                   Filter: (production_year > 1950)
                                                   Rows Removed by Filter: 241041
                                                   Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=275.80..275.80 rows=29997 width=8) (actual time=123.556..123.556 rows=29997 loops=1)
                                       Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                                       Buffers: shared hit=76 read=246
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=36.456..103.117 rows=29997 loops=1)
                                             Buffers: shared hit=76 read=246
                           ->  Hash  (cost=6.13..6.13 rows=18 width=4) (actual time=24.475..24.475 rows=18 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Only Scan using link_type_pkey on link_type lt  (cost=0.00..6.13 rows=18 width=4) (actual time=24.425..24.437 rows=18 loops=1)
                                       Heap Fetches: 0
                                       Buffers: shared read=2
                     ->  Hash  (cost=22777.45..22777.45 rows=1337140 width=36) (actual time=2040.026..2040.027 rows=1337140 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 107963kB
                           Buffers: shared read=25920
                           ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1337140 width=36) (actual time=14.606..1483.998 rows=1337140 loops=1)
                                 Filter: (note IS NOT NULL)
                                 Rows Removed by Filter: 1271989
                                 Buffers: shared read=25920
               ->  Hash  (cost=9.19..9.19 rows=3 width=4) (actual time=0.134..0.134 rows=3 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=3 width=4) (actual time=0.128..0.129 rows=3 loops=1)
                           Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared read=2
         ->  Hash  (cost=4597.20..4597.20 rows=210031 width=23) (actual time=826.659..826.659 rows=210031 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 13720kB
               Buffers: shared hit=231714 read=3840
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=210031 width=23) (actual time=96.969..755.699 rows=210031 loops=1)
                     Filter: ((country_code)::text <> '[pl]'::text)
                     Rows Removed by Filter: 24966
                     Buffers: shared hit=231714 read=3840
 Planning Time: 2973.674 ms
 Execution Time: 16608.257 ms
(72 rows)


                                                                                                QUERY PLAN                                                                                                
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3808.11..3808.11 rows=1 width=96) (actual time=2552.979..2552.979 rows=1 loops=1)
   Buffers: shared hit=186474 read=26185
   ->  Hash Join  (cost=2882.63..3808.11 rows=12 width=60) (actual time=1556.306..2520.958 rows=14899 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=186474 read=26185
         ->  Hash Join  (cost=2723.39..3648.87 rows=13 width=45) (actual time=1336.326..2291.236 rows=14916 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=186469 read=23193
               ->  Hash Join  (cost=2723.36..3648.84 rows=17 width=49) (actual time=1336.295..2281.600 rows=15510 loops=1)
                     Hash Cond: (mc.movie_id = ml.movie_id)
                     Buffers: shared hit=186468 read=23193
                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1337140 width=36) (actual time=0.007..750.554 rows=1337140 loops=1)
                           Filter: (note IS NOT NULL)
                           Rows Removed by Filter: 1271989
                           Buffers: shared hit=3 read=18786
                     ->  Hash  (cost=2723.36..2723.36 rows=6 width=29) (actual time=1319.532..1319.532 rows=1460 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 103kB
                           Buffers: shared hit=186465 read=4407
                           ->  Hash Join  (cost=94.93..2723.36 rows=6 width=29) (actual time=652.497..1318.882 rows=1460 loops=1)
                                 Hash Cond: (ml.link_type_id = lt.id)
                                 Buffers: shared hit=186465 read=4407
                                 ->  Hash Join  (cost=94.90..2723.32 rows=6 width=33) (actual time=652.472..1318.214 rows=1460 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=186464 read=4407
                                       ->  Merge Join  (cost=76.50..2682.68 rows=272866 width=37) (actual time=78.549..1216.966 rows=286392 loops=1)
                                             Merge Cond: (ml.movie_id = mk.movie_id)
                                             Buffers: shared hit=186458 read=4398
                                             ->  Merge Join  (cost=76.49..1807.26 rows=27137 width=29) (actual time=78.507..980.687 rows=29726 loops=1)
                                                   Merge Cond: (t.id = ml.movie_id)
                                                   Buffers: shared hit=183184 read=3600
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=21) (actual time=0.051..886.984 rows=177925 loops=1)
                                                         Filter: (production_year > 1950)
                                                         Rows Removed by Filter: 8251
                                                         Buffers: shared hit=183178 read=3439
                                                   ->  Sort  (cost=76.46..78.79 rows=29997 width=8) (actual time=58.859..62.064 rows=29997 loops=1)
                                                         Sort Key: ml.movie_id
                                                         Sort Method: quicksort  Memory: 2175kB
                                                         Buffers: shared hit=6 read=161
                                                         ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.019..24.790 rows=29997 loops=1)
                                                               Buffers: shared hit=2 read=161
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.033..147.668 rows=359530 loops=1)
                                                   Buffers: shared hit=3274 read=798
                                       ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=66.266..66.266 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=6 read=9
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=39.596..66.245 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                   Buffers: shared hit=6 read=9
                                 ->  Hash  (cost=0.03..0.03 rows=18 width=4) (actual time=0.012..0.012 rows=18 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.004..0.007 rows=18 loops=1)
                                             Buffers: shared hit=1
               ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.011..0.012 rows=3 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.008..0.009 rows=3 loops=1)
                           Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=1
         ->  Hash  (cost=128.41..128.41 rows=210031 width=23) (actual time=218.504..218.504 rows=210031 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 13720kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=210031 width=23) (actual time=74.496..152.927 rows=210031 loops=1)
                     Filter: ((country_code)::text <> '[pl]'::text)
                     Rows Removed by Filter: 24966
                     Buffers: shared hit=2 read=2992
 Planning Time: 3518.444 ms
 Execution Time: 2553.727 ms
(69 rows)


                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=707764.41..707764.41 rows=1 width=96) (actual time=106536.160..106536.160 rows=1 loops=1)
   Buffers: shared hit=11816245 read=312168
   ->  Hash Join  (cost=91102.29..707764.41 rows=1 width=48) (actual time=22103.484..106536.080 rows=38 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=11816245 read=312168
         ->  Hash Join  (cost=90814.44..707476.56 rows=1 width=52) (actual time=22001.252..106433.682 rows=144 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=11816166 read=311920
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..616648.54 rows=116723 width=4) (actual time=237.829..90467.697 rows=116559 loops=1)
                     Filter: (info = ANY ('{Germany,German}'::text[]))
                     Rows Removed by Filter: 14719161
                     Buffers: shared hit=9072946 read=202429
               ->  Hash  (cost=90814.42..90814.42 rows=2 width=48) (actual time=15899.685..15899.685 rows=549 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 57kB
                     Buffers: shared hit=2743220 read=109491
                     ->  Hash Join  (cost=51159.83..90814.42 rows=2 width=48) (actual time=13208.833..15899.140 rows=549 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=2743220 read=109491
                           ->  Hash Join  (cost=51153.71..90808.30 rows=8 width=52) (actual time=13208.624..15898.456 rows=593 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2743220 read=109489
                                 ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=84.267..2892.739 rows=10544 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=21636 read=36821
                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=36.384..2062.020 rows=4523930 loops=1)
                                             Buffers: shared hit=21636 read=36817
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.333..47.334 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.310..47.313 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                 ->  Hash  (cost=51131.45..51131.45 rows=109752 width=48) (actual time=13000.904..13000.904 rows=72684 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 7011kB
                                       Buffers: shared hit=2721584 read=72668
                                       ->  Hash Join  (cost=28228.63..51131.45 rows=109752 width=48) (actual time=10922.700..12964.799 rows=72684 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=2721584 read=72668
                                             ->  Hash Join  (cost=4640.92..27522.05 rows=266098 width=27) (actual time=883.313..2842.097 rows=240875 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=231714 read=29760
                                                   ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=35.498..1719.264 rows=1271989 loops=1)
                                                         Filter: (note IS NULL)
                                                         Rows Removed by Filter: 1337140
                                                         Buffers: shared read=25920
                                                   ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=827.790..827.790 rows=48302 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                         Buffers: shared hit=231714 read=3840
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=72.244..811.294 rows=48302 loops=1)
                                                               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                               Rows Removed by Filter: 186695
                                                               Buffers: shared hit=231714 read=3840
                                             ->  Hash  (cost=23434.65..23434.65 rows=1042800 width=21) (actual time=10009.318..10009.318 rows=1042800 loops=1)
                                                   Buckets: 1048576  Batches: 1  Memory Usage: 63852kB
                                                   Buffers: shared hit=2489870 read=42908
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=21) (actual time=48.776..9600.973 rows=1042800 loops=1)
                                                         Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                         Rows Removed by Filter: 1485512
                                                         Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.192..0.192 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.186..0.187 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'production companies'::text)
                                       Buffers: shared read=2
         ->  Hash  (cost=287.61..287.61 rows=1666 width=16) (actual time=102.201..102.202 rows=2315 loops=1)
               Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 136kB
               Buffers: shared hit=76 read=248
               ->  Hash Join  (cost=9.20..287.61 rows=1666 width=16) (actual time=26.965..100.368 rows=2315 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=76 read=248
                     ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=26.481..84.758 rows=29997 loops=1)
                           Buffers: shared hit=76 read=246
                     ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=0.398..0.398 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.360..0.382 rows=2 loops=1)
                                 Filter: ((link)::text ~~ '%follow%'::text)
                                 Rows Removed by Filter: 16
                                 Buffers: shared read=2
 Planning Time: 5290.842 ms
 Execution Time: 106537.923 ms
(82 rows)


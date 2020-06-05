                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=91080.83..91080.83 rows=1 width=96) (actual time=16343.779..16343.780 rows=1 loops=1)
   Buffers: shared hit=2743299 read=109739
   ->  Hash Join  (cost=51426.24..91080.83 rows=1 width=48) (actual time=13545.024..16324.543 rows=310 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=2743299 read=109739
         ->  Hash Join  (cost=51138.38..90792.97 rows=2 width=48) (actual time=13459.349..16238.378 rows=1292 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=2743220 read=109491
               ->  Hash Join  (cost=51132.26..90786.85 rows=7 width=52) (actual time=13459.123..16237.464 rows=1495 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=2743220 read=109489
                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=88.395..2913.120 rows=10544 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=21636 read=36821
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=40.101..2052.038 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.310..47.311 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.295..47.298 rows=1 loops=1)
                                       Index Cond: (keyword = 'sequel'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=51112.04..51112.04 rows=95836 width=48) (actual time=13318.285..13318.285 rows=95217 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 9054kB
                           Buffers: shared hit=2721584 read=72668
                           ->  Hash Join  (cost=28209.22..51112.04 rows=95836 width=48) (actual time=11090.879..13270.407 rows=95217 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=2721584 read=72668
                                 ->  Hash Join  (cost=4640.92..27522.05 rows=266098 width=27) (actual time=807.121..2873.709 rows=240875 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231714 read=29760
                                       ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=34.595..1822.182 rows=1271989 loops=1)
                                             Filter: (note IS NULL)
                                             Rows Removed by Filter: 1337140
                                             Buffers: shared read=25920
                                       ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=753.924..753.924 rows=48302 loops=1)
                                             Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=72.486..736.866 rows=48302 loops=1)
                                                   Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                   Rows Removed by Filter: 186695
                                                   Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=23434.65..23434.65 rows=910581 width=21) (actual time=10277.191..10277.191 rows=910581 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 57066kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=52.200..9922.829 rows=910581 loops=1)
                                             Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                             Rows Removed by Filter: 1617731
                                             Buffers: shared hit=2489870 read=42908
               ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.199..0.199 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.190..0.192 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'production companies'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=287.61..287.61 rows=1666 width=16) (actual time=85.611..85.611 rows=2315 loops=1)
               Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 136kB
               Buffers: shared hit=76 read=248
               ->  Hash Join  (cost=9.20..287.61 rows=1666 width=16) (actual time=0.626..83.731 rows=2315 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=76 read=248
                     ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.380..67.882 rows=29997 loops=1)
                           Buffers: shared hit=76 read=246
                     ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=0.169..0.169 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.130..0.151 rows=2 loops=1)
                                 Filter: ((link)::text ~~ '%follow%'::text)
                                 Rows Removed by Filter: 16
                                 Buffers: shared read=2
 Planning Time: 3054.067 ms
 Execution Time: 16356.221 ms
(72 rows)


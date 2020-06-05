                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=90949.79..90949.79 rows=1 width=96) (actual time=15248.967..15248.967 rows=1 loops=1)
   Buffers: shared hit=2743299 read=109739
   ->  Hash Join  (cost=51295.20..90949.79 rows=1 width=48) (actual time=12549.844..15248.935 rows=14 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=2743299 read=109739
         ->  Hash Join  (cost=51007.35..90661.94 rows=1 width=48) (actual time=12465.174..15164.262 rows=2 loops=1)
               Hash Cond: (t.id = mc.movie_id)
               Buffers: shared hit=2743220 read=109491
               ->  Hash Join  (cost=23440.80..63095.38 rows=1 width=25) (actual time=9488.265..12187.351 rows=1 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=2511506 read=79729
                     ->  Hash Join  (cost=23434.66..63089.24 rows=43 width=29) (actual time=9457.915..12156.987 rows=39 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2511506 read=79725
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=35.940..2102.429 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=23434.65..23434.65 rows=24 width=21) (actual time=9292.015..9292.016 rows=36 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 11kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=24 width=21) (actual time=785.733..9291.857 rows=36 loops=1)
                                       Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
                                       Rows Removed by Filter: 2528276
                                       Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=30.322..30.323 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.294..30.298 rows=1 loops=1)
                                 Index Cond: (keyword = 'sequel'::text)
                                 Buffers: shared read=4
               ->  Hash  (cost=27556.79..27556.79 rows=66524 width=23) (actual time=2976.510..2976.510 rows=224256 loops=1)
                     Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 14559kB
                     Buffers: shared hit=231714 read=29762
                     ->  Hash Join  (cost=4647.04..27556.79 rows=66524 width=23) (actual time=2016.966..2889.189 rows=224256 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=231714 read=29762
                           ->  Hash Join  (cost=4640.92..27522.05 rows=266098 width=27) (actual time=800.724..2779.691 rows=240875 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=231714 read=29760
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=34.810..1746.141 rows=1271989 loops=1)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 1337140
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=744.433..744.433 rows=48302 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=72.253..727.569 rows=48302 loops=1)
                                             Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                             Rows Removed by Filter: 186695
                                             Buffers: shared hit=231714 read=3840
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=34.455..34.455 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=34.439..34.442 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'production companies'::text)
                                       Buffers: shared read=2
         ->  Hash  (cost=287.61..287.61 rows=1666 width=16) (actual time=84.604..84.604 rows=1158 loops=1)
               Buckets: 2048  Batches: 1  Memory Usage: 66kB
               Buffers: shared hit=76 read=248
               ->  Hash Join  (cost=9.20..287.61 rows=1666 width=16) (actual time=0.644..83.640 rows=1158 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=76 read=248
                     ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.364..68.572 rows=29997 loops=1)
                           Buffers: shared hit=76 read=246
                     ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=0.168..0.168 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.128..0.149 rows=1 loops=1)
                                 Filter: ((link)::text ~~ '%follows%'::text)
                                 Rows Removed by Filter: 17
                                 Buffers: shared read=2
 Planning Time: 2974.611 ms
 Execution Time: 15281.677 ms
(72 rows)


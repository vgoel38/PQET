                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=712017.84..712017.84 rows=1 width=96) (actual time=109220.317..109220.317 rows=1 loops=1)
   Buffers: shared hit=11816245 read=312168
   ->  Hash Join  (cost=91228.75..712017.84 rows=1 width=48) (actual time=18352.583..109207.142 rows=1874 loops=1)
         Hash Cond: (mi.movie_id = ml.movie_id)
         Buffers: shared hit=11816245 read=312168
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..620679.99 rows=936891 width=4) (actual time=141.302..92304.230 rows=936223 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
               Rows Removed by Filter: 13899497
               Buffers: shared hit=9072946 read=202429
         ->  Hash  (cost=91228.74..91228.74 rows=1 width=64) (actual time=16516.224..16516.224 rows=402 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 49kB
               Buffers: shared hit=2743296 read=109739
               ->  Hash Join  (cost=51574.14..91228.74 rows=1 width=64) (actual time=13754.935..16515.824 rows=402 loops=1)
                     Hash Cond: (t.id = ml.movie_id)
                     Buffers: shared hit=2743296 read=109739
                     ->  Hash Join  (cost=51286.29..90940.88 rows=4 width=48) (actual time=13651.445..16411.583 rows=1803 loops=1)
                           Hash Cond: (t.id = mc.movie_id)
                           Buffers: shared hit=2743220 read=109491
                           ->  Hash Join  (cost=23719.73..63374.32 rows=26 width=25) (actual time=10709.651..13519.368 rows=8370 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2511506 read=79729
                                 ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=89.128..2891.339 rows=10544 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=21636 read=36821
                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=40.819..2056.481 rows=4523930 loops=1)
                                             Buffers: shared hit=21636 read=36817
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.324..47.325 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.306..47.310 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                 ->  Hash  (cost=23434.65..23434.65 rows=1900368 width=21) (actual time=10603.417..10603.417 rows=1900368 loops=1)
                                       Buckets: 2097152  Batches: 1  Memory Usage: 118096kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1900368 width=21) (actual time=33.094..9889.933 rows=1900368 loops=1)
                                             Filter: ((production_year >= 1950) AND (production_year <= 2010))
                                             Rows Removed by Filter: 627944
                                             Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=27556.79..27556.79 rows=66524 width=23) (actual time=2887.367..2887.367 rows=224256 loops=1)
                                 Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 14559kB
                                 Buffers: shared hit=231714 read=29762
                                 ->  Hash Join  (cost=4647.04..27556.79 rows=66524 width=23) (actual time=1930.892..2801.135 rows=224256 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=231714 read=29762
                                       ->  Hash Join  (cost=4640.92..27522.05 rows=266098 width=27) (actual time=798.796..2710.918 rows=240875 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=231714 read=29760
                                             ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=34.787..1676.351 rows=1271989 loops=1)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 1337140
                                                   Buffers: shared read=25920
                                             ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=746.060..746.060 rows=48302 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=72.298..729.521 rows=48302 loops=1)
                                                         Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                         Rows Removed by Filter: 186695
                                                         Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=12.551..12.551 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=12.536..12.539 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'production companies'::text)
                                                   Buffers: shared read=2
                     ->  Hash  (cost=287.61..287.61 rows=1666 width=16) (actual time=103.453..103.453 rows=2315 loops=1)
                           Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 136kB
                           Buffers: shared hit=76 read=248
                           ->  Hash Join  (cost=9.20..287.61 rows=1666 width=16) (actual time=27.074..101.746 rows=2315 loops=1)
                                 Hash Cond: (ml.link_type_id = lt.id)
                                 Buffers: shared hit=76 read=248
                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=19.086..79.544 rows=29997 loops=1)
                                       Buffers: shared hit=76 read=246
                                 ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=7.905..7.905 rows=2 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=7.851..7.873 rows=2 loops=1)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 16
                                             Buffers: shared read=2
 Planning Time: 5505.213 ms
 Execution Time: 109223.123 ms
(82 rows)


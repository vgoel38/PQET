                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=711202.88..711202.88 rows=1 width=96) (actual time=108070.288..108070.288 rows=1 loops=1)
   Buffers: shared hit=11816245 read=312168
   ->  Hash Join  (cost=91080.84..711202.88 rows=1 width=48) (actual time=17818.057..108058.519 rows=1410 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=11816245 read=312168
         ->  Hash Join  (cost=91074.71..711196.75 rows=1 width=52) (actual time=17801.213..108040.443 rows=1505 loops=1)
               Hash Cond: (t.id = ml.movie_id)
               Buffers: shared hit=11816242 read=312166
               ->  Hash Join  (cost=90786.86..710908.90 rows=1 width=56) (actual time=17724.503..107962.358 rows=779 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=11816166 read=311918
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..620104.07 rows=154416 width=4) (actual time=237.723..91939.613 rows=153897 loops=1)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                           Rows Removed by Filter: 14681823
                           Buffers: shared hit=9072946 read=202429
                     ->  Hash  (cost=90786.85..90786.85 rows=7 width=52) (actual time=15931.256..15931.256 rows=1495 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 156kB
                           Buffers: shared hit=2743220 read=109489
                           ->  Hash Join  (cost=51132.26..90786.85 rows=7 width=52) (actual time=13263.810..15929.923 rows=1495 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2743220 read=109489
                                 ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=84.574..2794.799 rows=10544 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=21636 read=36821
                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=36.488..1954.605 rows=4523930 loops=1)
                                             Buffers: shared hit=21636 read=36817
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.340..47.340 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.320..47.324 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                 ->  Hash  (cost=51112.04..51112.04 rows=95836 width=48) (actual time=13129.192..13129.192 rows=95217 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 9054kB
                                       Buffers: shared hit=2721584 read=72668
                                       ->  Hash Join  (cost=28209.22..51112.04 rows=95836 width=48) (actual time=10962.921..13078.160 rows=95217 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=2721584 read=72668
                                             ->  Hash Join  (cost=4640.92..27522.05 rows=266098 width=27) (actual time=883.352..2884.965 rows=240875 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=231714 read=29760
                                                   ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=35.120..1760.887 rows=1271989 loops=1)
                                                         Filter: (note IS NULL)
                                                         Rows Removed by Filter: 1337140
                                                         Buffers: shared read=25920
                                                   ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=827.064..827.064 rows=48302 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                         Buffers: shared hit=231714 read=3840
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=72.463..809.386 rows=48302 loops=1)
                                                               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                               Rows Removed by Filter: 186695
                                                               Buffers: shared hit=231714 read=3840
                                             ->  Hash  (cost=23434.65..23434.65 rows=910581 width=21) (actual time=10072.963..10072.963 rows=910581 loops=1)
                                                   Buckets: 1048576  Batches: 1  Memory Usage: 57066kB
                                                   Buffers: shared hit=2489870 read=42908
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=51.445..9695.887 rows=910581 loops=1)
                                                         Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                                         Rows Removed by Filter: 1617731
                                                         Buffers: shared hit=2489870 read=42908
               ->  Hash  (cost=287.61..287.61 rows=1666 width=16) (actual time=76.675..76.675 rows=2315 loops=1)
                     Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 136kB
                     Buffers: shared hit=76 read=248
                     ->  Hash Join  (cost=9.20..287.61 rows=1666 width=16) (actual time=1.248..74.727 rows=2315 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=76 read=248
                           ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.777..59.384 rows=29997 loops=1)
                                 Buffers: shared hit=76 read=246
                           ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=0.384..0.385 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.352..0.373 rows=2 loops=1)
                                       Filter: ((link)::text ~~ '%follow%'::text)
                                       Rows Removed by Filter: 16
                                       Buffers: shared read=2
         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=16.814..16.814 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=16.794..16.797 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'production companies'::text)
                     Buffers: shared read=2
 Planning Time: 5439.627 ms
 Execution Time: 108071.930 ms
(82 rows)


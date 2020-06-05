                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=711941.19..711941.19 rows=1 width=96) (actual time=108552.601..108552.601 rows=1 loops=1)
   Buffers: shared hit=11903166 read=313274
   ->  Hash Join  (cost=94125.16..711941.19 rows=1 width=48) (actual time=23150.769..108540.073 rows=247 loops=1)
         Hash Cond: (cc.subject_id = cct1.id)
         Buffers: shared hit=11903166 read=313274
         ->  Hash Join  (cost=94115.97..711932.01 rows=1 width=52) (actual time=23150.652..108539.806 rows=247 loops=1)
               Hash Cond: (cc.status_id = cct2.id)
               Buffers: shared hit=11903163 read=313272
               ->  Hash Join  (cost=94109.85..711925.88 rows=1 width=56) (actual time=23150.620..108539.576 rows=418 loops=1)
                     Hash Cond: (ml.movie_id = cc.movie_id)
                     Buffers: shared hit=11903162 read=313271
                     ->  Hash Join  (cost=90806.51..708622.55 rows=1 width=68) (actual time=22693.210..108082.569 rows=475 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=11816242 read=312168
                           ->  Hash Join  (cost=90797.33..708613.36 rows=1 width=60) (actual time=22686.340..108075.299 rows=475 loops=1)
                                 Hash Cond: (t.id = ml.movie_id)
                                 Buffers: shared hit=11816242 read=312166
                                 ->  Hash Join  (cost=90517.12..708333.13 rows=1 width=52) (actual time=22556.870..107945.552 rows=38 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=11816166 read=311920
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..617800.38 rows=134293 width=4) (actual time=234.558..92268.389 rows=134239 loops=1)
                                             Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                             Rows Removed by Filter: 14701481
                                             Buffers: shared hit=9072946 read=202429
                                       ->  Hash  (cost=90517.11..90517.11 rows=1 width=48) (actual time=15611.377..15611.377 rows=43 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 12kB
                                             Buffers: shared hit=2743220 read=109491
                                             ->  Hash Join  (cost=50862.51..90517.11 rows=1 width=48) (actual time=13024.365..15611.265 rows=43 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=2743220 read=109491
                                                   ->  Hash Join  (cost=46221.61..85876.20 rows=1 width=33) (actual time=12094.399..14746.961 rows=318 loops=1)
                                                         Hash Cond: (mc.company_type_id = ct.id)
                                                         Buffers: shared hit=2511506 read=105651
                                                         ->  Hash Join  (cost=46215.48..85870.08 rows=1 width=37) (actual time=12094.240..14746.525 rows=429 loops=1)
                                                               Hash Cond: (t.id = mc.movie_id)
                                                               Buffers: shared hit=2511506 read=105649
                                                               ->  Hash Join  (cost=23251.33..62905.92 rows=1 width=25) (actual time=9885.726..12537.560 rows=271 loops=1)
                                                                     Hash Cond: (mk.movie_id = t.id)
                                                                     Buffers: shared hit=2511506 read=79729
                                                                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=78.578..2799.133 rows=10544 loops=1)
                                                                           Hash Cond: (mk.keyword_id = k.id)
                                                                           Buffers: shared hit=21636 read=36821
                                                                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=30.283..1956.041 rows=4523930 loops=1)
                                                                                 Buffers: shared hit=21636 read=36817
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.337..47.337 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared read=4
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.315..47.319 rows=1 loops=1)
                                                                                       Index Cond: (keyword = 'sequel'::text)
                                                                                       Buffers: shared read=4
                                                                     ->  Hash  (cost=23238.35..23238.35 rows=46583 width=21) (actual time=9733.786..9733.786 rows=46583 loops=1)
                                                                           Buckets: 65536  Batches: 1  Memory Usage: 2991kB
                                                                           Buffers: shared hit=2489870 read=42908
                                                                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=46583 width=21) (actual time=360.975..9711.852 rows=46583 loops=1)
                                                                                 Filter: (production_year = 1998)
                                                                                 Rows Removed by Filter: 2481729
                                                                                 Buffers: shared hit=2489870 read=42908
                                                               ->  Hash  (cost=22777.45..22777.45 rows=1271989 width=12) (actual time=2203.632..2203.632 rows=1271989 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 71040kB
                                                                     Buffers: shared read=25920
                                                                     ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=13.851..1742.574 rows=1271989 loops=1)
                                                                           Filter: (note IS NULL)
                                                                           Rows Removed by Filter: 1337140
                                                                           Buffers: shared read=25920
                                                         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.140..0.140 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.136..0.137 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'production companies'::text)
                                                                     Buffers: shared read=2
                                                   ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=863.652..863.652 rows=48302 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                         Buffers: shared hit=231714 read=3840
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=76.087..845.611 rows=48302 loops=1)
                                                               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                               Rows Removed by Filter: 186695
                                                               Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=275.80..275.80 rows=29997 width=8) (actual time=129.184..129.184 rows=29997 loops=1)
                                       Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                                       Buffers: shared hit=76 read=246
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=16.634..109.659 rows=29997 loops=1)
                                             Buffers: shared hit=76 read=246
                           ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=6.845..6.846 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=6.808..6.831 rows=2 loops=1)
                                       Filter: ((link)::text ~~ '%follow%'::text)
                                       Rows Removed by Filter: 16
                                       Buffers: shared read=2
                     ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=456.054..456.054 rows=135086 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                           Buffers: shared hit=86920 read=1103
                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=107.949..393.797 rows=135086 loops=1)
                                 Buffers: shared hit=86920 read=1103
               ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1 read=1
                     ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'complete'::text)
                           Buffers: shared hit=1 read=1
         ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=0.087..0.088 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..9.19 rows=2 width=4) (actual time=0.080..0.082 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                     Rows Removed by Filter: 2
                     Buffers: shared read=2
 Planning Time: 10892.831 ms
 Execution Time: 108555.192 ms
(109 rows)


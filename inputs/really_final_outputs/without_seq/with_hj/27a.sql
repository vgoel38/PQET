                                                                                                                QUERY PLAN                                                                                                                 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=712264.31..712264.31 rows=1 width=96) (actual time=106642.820..106642.820 rows=1 loops=1)
   Buffers: shared hit=11903166 read=313274
   ->  Hash Join  (cost=94448.27..712264.31 rows=1 width=48) (actual time=18965.432..106615.121 rows=477 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=11903166 read=313274
         ->  Hash Join  (cost=94439.08..712255.12 rows=1 width=40) (actual time=18950.992..106600.360 rows=477 loops=1)
               Hash Cond: (t.id = ml.movie_id)
               Buffers: shared hit=11903163 read=313272
               ->  Hash Join  (cost=94158.88..711974.89 rows=1 width=56) (actual time=18871.137..106520.033 rows=415 loops=1)
                     Hash Cond: (cc.subject_id = cct1.id)
                     Buffers: shared hit=11903087 read=313026
                     ->  Hash Join  (cost=94149.69..711965.71 rows=1 width=60) (actual time=18870.935..106519.287 rows=415 loops=1)
                           Hash Cond: (cc.status_id = cct2.id)
                           Buffers: shared hit=11903087 read=313024
                           ->  Hash Join  (cost=94143.57..711959.58 rows=1 width=64) (actual time=18870.879..106518.577 rows=525 loops=1)
                                 Hash Cond: (t.id = cc.movie_id)
                                 Buffers: shared hit=11903086 read=313023
                                 ->  Hash Join  (cost=90840.23..708656.25 rows=1 width=52) (actual time=18489.950..106136.748 rows=564 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=11816166 read=311920
                                       ->  Hash Join  (cost=90834.11..708650.12 rows=1 width=56) (actual time=18489.781..106135.608 rows=635 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=11816166 read=311918
                                             ->  Hash Join  (cost=86193.20..704009.22 rows=1 width=41) (actual time=17755.933..105399.639 rows=1831 loops=1)
                                                   Hash Cond: (t.id = mc.movie_id)
                                                   Buffers: shared hit=11584452 read=308078
                                                   ->  Hash Join  (cost=63229.05..681045.06 rows=1 width=29) (actual time=15568.695..103209.487 rows=881 loops=1)
                                                         Hash Cond: (mi.movie_id = t.id)
                                                         Buffers: shared hit=11584452 read=282158
                                                         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..617800.38 rows=134293 width=4) (actual time=281.616..89901.664 rows=134239 loops=1)
                                                               Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                               Rows Removed by Filter: 14701481
                                                               Buffers: shared hit=9072946 read=202429
                                                         ->  Hash  (cost=63229.04..63229.04 rows=12 width=25) (actual time=13219.514..13219.514 rows=5541 loops=1)
                                                               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 425kB
                                                               Buffers: shared hit=2511506 read=79729
                                                               ->  Hash Join  (cost=23574.45..63229.04 rows=12 width=25) (actual time=10346.567..13216.161 rows=5541 loops=1)
                                                                     Hash Cond: (mk.movie_id = t.id)
                                                                     Buffers: shared hit=2511506 read=79729
                                                                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=84.710..2947.445 rows=10544 loops=1)
                                                                           Hash Cond: (mk.keyword_id = k.id)
                                                                           Buffers: shared hit=21636 read=36821
                                                                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=36.593..2081.498 rows=4523930 loops=1)
                                                                                 Buffers: shared hit=21636 read=36817
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.334..47.335 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared read=4
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.310..47.313 rows=1 loops=1)
                                                                                       Index Cond: (keyword = 'sequel'::text)
                                                                                       Buffers: shared read=4
                                                                     ->  Hash  (cost=23434.65..23434.65 rows=910581 width=21) (actual time=10254.817..10254.817 rows=910581 loops=1)
                                                                           Buckets: 1048576  Batches: 1  Memory Usage: 57066kB
                                                                           Buffers: shared hit=2489870 read=42908
                                                                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=35.479..9885.364 rows=910581 loops=1)
                                                                                 Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                                                                 Rows Removed by Filter: 1617731
                                                                                 Buffers: shared hit=2489870 read=42908
                                                   ->  Hash  (cost=22777.45..22777.45 rows=1271989 width=12) (actual time=2182.444..2182.444 rows=1271989 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 71040kB
                                                         Buffers: shared read=25920
                                                         ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=13.858..1730.874 rows=1271989 loops=1)
                                                               Filter: (note IS NULL)
                                                               Rows Removed by Filter: 1337140
                                                               Buffers: shared read=25920
                                             ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=733.660..733.660 rows=48302 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=70.930..716.695 rows=48302 loops=1)
                                                         Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                         Rows Removed by Filter: 186695
                                                         Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.147..0.147 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.142..0.142 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'production companies'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=379.458..379.458 rows=135086 loops=1)
                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                       Buffers: shared hit=86920 read=1103
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=46.918..315.249 rows=135086 loops=1)
                                             Buffers: shared hit=86920 read=1103
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.031..0.031 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'complete'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=0.171..0.171 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..9.19 rows=2 width=4) (actual time=0.162..0.166 rows=2 loops=1)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Rows Removed by Filter: 2
                                 Buffers: shared read=2
               ->  Hash  (cost=275.80..275.80 rows=29997 width=8) (actual time=79.579..79.580 rows=29997 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                     Buffers: shared hit=76 read=246
                     ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.475..60.390 rows=29997 loops=1)
                           Buffers: shared hit=76 read=246
         ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=14.410..14.410 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=14.366..14.389 rows=2 loops=1)
                     Filter: ((link)::text ~~ '%follow%'::text)
                     Rows Removed by Filter: 16
                     Buffers: shared read=2
 Planning Time: 10483.763 ms
 Execution Time: 106646.346 ms
(109 rows)


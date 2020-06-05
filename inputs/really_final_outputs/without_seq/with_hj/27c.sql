                                                                                                                QUERY PLAN                                                                                                                 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=715382.67..715382.67 rows=1 width=96) (actual time=108173.661..108173.662 rows=1 loops=1)
   Buffers: shared hit=11903168 read=313272
   ->  Hash Join  (cost=94593.56..715382.67 rows=1 width=48) (actual time=19456.129..108160.904 rows=743 loops=1)
         Hash Cond: (cc.status_id = cct.id)
         Buffers: shared hit=11903168 read=313272
         ->  Hash Join  (cost=94584.38..715373.48 rows=1 width=52) (actual time=19456.075..108160.371 rows=743 loops=1)
               Hash Cond: (cc.subject_id = cct.id)
               Buffers: shared hit=11903164 read=313271
               ->  Hash Join  (cost=94578.25..715367.36 rows=1 width=56) (actual time=19456.034..108159.756 rows=1028 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=11903162 read=313271
                     ->  Hash Join  (cost=94569.06..715358.17 rows=1 width=48) (actual time=19376.008..108078.910 rows=1028 loops=1)
                           Hash Cond: (t.id = ml.movie_id)
                           Buffers: shared hit=11903162 read=313269
                           ->  Hash Join  (cost=94288.86..715077.94 rows=1 width=64) (actual time=19295.040..107996.504 rows=1403 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=11903086 read=313023
                                 ->  Hash Join  (cost=89647.95..710437.03 rows=1 width=49) (actual time=17798.582..107175.762 rows=5973 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=11671372 read=309183
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..620679.99 rows=936891 width=4) (actual time=134.945..90360.670 rows=936223 loops=1)
                                             Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                             Rows Removed by Filter: 13899497
                                             Buffers: shared hit=9072946 read=202429
                                       ->  Hash  (cost=89647.94..89647.94 rows=1 width=45) (actual time=16302.327..16302.328 rows=4044 loops=1)
                                             Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 369kB
                                             Buffers: shared hit=2598426 read=106754
                                             ->  Hash Join  (cost=49993.34..89647.94 rows=1 width=45) (actual time=13532.812..16299.635 rows=4044 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared hit=2598426 read=106754
                                                   ->  Hash Join  (cost=49987.22..89641.81 rows=1 width=49) (actual time=13532.557..16297.234 rows=4757 loops=1)
                                                         Hash Cond: (t.id = mc.movie_id)
                                                         Buffers: shared hit=2598426 read=106752
                                                         ->  Hash Join  (cost=27023.07..66677.66 rows=1 width=37) (actual time=11387.094..14148.672 rows=2535 loops=1)
                                                               Hash Cond: (t.id = cc.movie_id)
                                                               Buffers: shared hit=2598426 read=80832
                                                               ->  Hash Join  (cost=23719.73..63374.32 rows=26 width=25) (actual time=10800.238..13597.963 rows=8370 loops=1)
                                                                     Hash Cond: (mk.movie_id = t.id)
                                                                     Buffers: shared hit=2511506 read=79729
                                                                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=67.261..2857.225 rows=10544 loops=1)
                                                                           Hash Cond: (mk.keyword_id = k.id)
                                                                           Buffers: shared hit=21636 read=36821
                                                                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=27.178..2008.256 rows=4523930 loops=1)
                                                                                 Buffers: shared hit=21636 read=36817
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=39.142..39.143 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared read=4
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=39.126..39.129 rows=1 loops=1)
                                                                                       Index Cond: (keyword = 'sequel'::text)
                                                                                       Buffers: shared read=4
                                                                     ->  Hash  (cost=23434.65..23434.65 rows=1900368 width=21) (actual time=10716.218..10716.218 rows=1900368 loops=1)
                                                                           Buckets: 2097152  Batches: 1  Memory Usage: 118096kB
                                                                           Buffers: shared hit=2489870 read=42908
                                                                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1900368 width=21) (actual time=33.338..9989.895 rows=1900368 loops=1)
                                                                                 Filter: ((production_year >= 1950) AND (production_year <= 2010))
                                                                                 Rows Removed by Filter: 627944
                                                                                 Buffers: shared hit=2489870 read=42908
                                                               ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=545.372..545.372 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                     Buffers: shared hit=86920 read=1103
                                                                     ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=42.063..478.432 rows=135086 loops=1)
                                                                           Buffers: shared hit=86920 read=1103
                                                         ->  Hash  (cost=22777.45..22777.45 rows=1271989 width=12) (actual time=2134.595..2134.595 rows=1271989 loops=1)
                                                               Buckets: 2097152  Batches: 1  Memory Usage: 71040kB
                                                               Buffers: shared read=25920
                                                               ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1271989 width=12) (actual time=21.386..1684.272 rows=1271989 loops=1)
                                                                     Filter: (note IS NULL)
                                                                     Rows Removed by Filter: 1337140
                                                                     Buffers: shared read=25920
                                                   ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.218..0.218 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=2
                                                         ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.206..0.208 rows=1 loops=1)
                                                               Index Cond: ((kind)::text = 'production companies'::text)
                                                               Buffers: shared read=2
                                 ->  Hash  (cost=4633.69..4633.69 rows=49161 width=23) (actual time=814.893..814.893 rows=48302 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=59.245..798.238 rows=48302 loops=1)
                                             Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                             Rows Removed by Filter: 186695
                                             Buffers: shared hit=231714 read=3840
                           ->  Hash  (cost=275.80..275.80 rows=29997 width=8) (actual time=80.694..80.694 rows=29997 loops=1)
                                 Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                                 Buffers: shared hit=76 read=246
                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.522..60.833 rows=29997 loops=1)
                                       Buffers: shared hit=76 read=246
                     ->  Hash  (cost=9.19..9.19 rows=1 width=16) (actual time=80.010..80.010 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=79.967..79.990 rows=2 loops=1)
                                 Filter: ((link)::text ~~ '%follow%'::text)
                                 Rows Removed by Filter: 16
                                 Buffers: shared read=2
               ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=2
                     ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'cast'::text)
                           Buffers: shared hit=2
         ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=0.023..0.023 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1 read=1
               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.018..0.019 rows=2 loops=1)
                     Filter: ((kind)::text ~~ 'complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared hit=1 read=1
 Planning Time: 10519.930 ms
 Execution Time: 108178.351 ms
(109 rows)


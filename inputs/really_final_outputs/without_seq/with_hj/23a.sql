                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=713371.43..713371.43 rows=1 width=64) (actual time=35823.837..35823.837 rows=1 loops=1)
   Buffers: shared hit=2917725 read=313515
   ->  Hash Join  (cost=95780.33..713371.43 rows=1 width=27) (actual time=30667.741..35823.204 rows=618 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=2917725 read=313515
         ->  Hash Join  (cost=94243.49..711834.59 rows=1 width=31) (actual time=30581.282..35736.120 rows=618 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=2917722 read=313025
               ->  Hash Join  (cost=94237.37..711828.46 rows=1 width=35) (actual time=30581.102..35735.406 rows=618 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=2917722 read=313023
                     ->  Hash Join  (cost=6.14..617597.23 rows=3 width=4) (actual time=11557.223..19001.163 rows=1783 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=87582 read=202431
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..617591.08 rows=328 width=8) (actual time=11526.497..18968.891 rows=1783 loops=1)
                                 Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                 Rows Removed by Filter: 14833937
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=30.691..30.692 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=30.672..30.676 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'release dates'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=94228.01..94228.01 rows=21936 width=51) (actual time=16732.419..16732.419 rows=760449 loops=1)
                           Buckets: 1048576 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 67549kB
                           Buffers: shared hit=2830140 read=110592
                           ->  Hash Join  (cost=54415.09..94228.01 rows=21936 width=51) (actual time=14284.291..16442.521 rows=760449 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2830140 read=110592
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.523..1857.095 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=54414.74..54414.74 rows=2267 width=43) (actual time=13625.369..13625.369 rows=5763 loops=1)
                                       Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 468kB
                                       Buffers: shared hit=2808504 read=73775
                                       ->  Hash Join  (cost=31329.68..54414.74 rows=2267 width=43) (actual time=11983.760..13621.961 rows=5763 loops=1)
                                             Hash Cond: (cc.status_id = cct.id)
                                             Buffers: shared hit=2808504 read=73775
                                             ->  Hash Join  (cost=31323.55..54407.64 rows=9066 width=47) (actual time=11956.093..13591.336 rows=18806 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=2808504 read=73773
                                                   ->  Hash Join  (cost=26713.90..49795.94 rows=25111 width=51) (actual time=11187.007..12796.937 rows=74439 loops=1)
                                                         Hash Cond: (mc.movie_id = t.id)
                                                         Buffers: shared hit=2576790 read=69933
                                                         ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=18.010..1479.291 rows=2609129 loops=1)
                                                               Buffers: shared read=25920
                                                         ->  Hash  (cost=26712.34..26712.34 rows=10544 width=39) (actual time=10734.120..10734.120 rows=6234 loops=1)
                                                               Buckets: 16384  Batches: 1  Memory Usage: 541kB
                                                               Buffers: shared hit=2576790 read=44013
                                                               ->  Hash Join  (cost=3309.47..26712.34 rows=10544 width=39) (actual time=7388.693..10731.014 rows=6234 loops=1)
                                                                     Hash Cond: (t.id = cc.movie_id)
                                                                     Buffers: shared hit=2576790 read=44013
                                                                     ->  Hash Join  (cost=6.14..23377.63 rows=197350 width=31) (actual time=799.632..10114.758 rows=274015 loops=1)
                                                                           Hash Cond: (t.kind_id = kt.id)
                                                                           Buffers: shared hit=2489870 read=42910
                                                                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=54.310..9865.834 rows=1381453 loops=1)
                                                                                 Filter: (production_year > 2000)
                                                                                 Rows Removed by Filter: 1146859
                                                                                 Buffers: shared hit=2489870 read=42908
                                                                           ->  Hash  (cost=6.12..6.12 rows=1 width=14) (actual time=24.348..24.348 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared read=2
                                                                                 ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=14) (actual time=24.332..24.335 rows=1 loops=1)
                                                                                       Index Cond: ((kind)::text = 'movie'::text)
                                                                                       Buffers: shared read=2
                                                                     ->  Hash  (cost=3283.51..3283.51 rows=135086 width=8) (actual time=536.808..536.808 rows=135086 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 7325kB
                                                                           Buffers: shared hit=86920 read=1103
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=47.644..472.493 rows=135086 loops=1)
                                                                                 Buffers: shared hit=86920 read=1103
                                                   ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=767.975..767.976 rows=84843 loops=1)
                                                         Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                         Buffers: shared hit=231714 read=3840
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=28.315..742.250 rows=84843 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 150154
                                                               Buffers: shared hit=231714 read=3840
                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=25.880..25.880 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=25.854..25.858 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'complete+verified'::text)
                                                         Buffers: shared read=2
               ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=0.162..0.162 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=0.157..0.157 rows=4 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2
         ->  Hash  (cost=1517.14..1517.14 rows=134170 width=4) (actual time=84.426..84.426 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=490
               ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..1517.14 rows=134170 width=4) (actual time=11.897..54.896 rows=134170 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=490
 Planning Time: 8757.460 ms
 Execution Time: 35854.010 ms
(97 rows)


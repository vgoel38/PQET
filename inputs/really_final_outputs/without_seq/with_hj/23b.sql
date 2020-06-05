                                                                                                           QUERY PLAN                                                                                                            
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=710545.74..710545.74 rows=1 width=64) (actual time=35612.176..35612.176 rows=1 loops=1)
   Buffers: shared hit=2917733 read=313036
   ->  Hash Join  (cost=94106.49..710545.74 rows=1 width=27) (actual time=30195.130..35612.138 rows=16 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2917733 read=313036
         ->  Hash Join  (cost=94100.36..710539.61 rows=1 width=31) (actual time=30109.847..35526.840 rows=16 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2917730 read=313034
               ->  Hash Join  (cost=6.14..616445.39 rows=2 width=4) (actual time=11955.618..19722.466 rows=1771 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=87582 read=202431
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=260 width=8) (actual time=11924.388..19689.568 rows=1771 loops=1)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 14833949
                           Buffers: shared hit=87582 read=202429
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=31.183..31.184 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=31.162..31.166 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'release dates'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=94094.22..94094.22 rows=1 width=47) (actual time=15803.430..15803.430 rows=315 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=2830148 read=110603
                     ->  Hash Join  (cost=54439.62..94094.22 rows=1 width=47) (actual time=13635.369..15803.188 rows=315 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2830148 read=110603
                           ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=111.115..3066.752 rows=1133 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21644 read=36828
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.771..2187.971 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=70.927..70.928 rows=4 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=8 read=11
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=39.967..70.889 rows=4 loops=1)
                                             Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                             Buffers: shared hit=8 read=11
                           ->  Hash  (cost=54414.74..54414.74 rows=2267 width=43) (actual time=12735.739..12735.739 rows=5763 loops=1)
                                 Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 468kB
                                 Buffers: shared hit=2808504 read=73775
                                 ->  Hash Join  (cost=31329.68..54414.74 rows=2267 width=43) (actual time=11339.257..12732.525 rows=5763 loops=1)
                                       Hash Cond: (cc.status_id = cct.id)
                                       Buffers: shared hit=2808504 read=73775
                                       ->  Hash Join  (cost=31323.55..54407.64 rows=9066 width=47) (actual time=11332.967..12723.401 rows=18806 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=2808504 read=73773
                                             ->  Hash Join  (cost=26713.90..49795.94 rows=25111 width=51) (actual time=10532.041..11899.146 rows=74439 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=2576790 read=69933
                                                   ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=19.534..1290.264 rows=2609129 loops=1)
                                                         Buffers: shared read=25920
                                                   ->  Hash  (cost=26712.34..26712.34 rows=10544 width=39) (actual time=10058.137..10058.137 rows=6234 loops=1)
                                                         Buckets: 16384  Batches: 1  Memory Usage: 541kB
                                                         Buffers: shared hit=2576790 read=44013
                                                         ->  Hash Join  (cost=3309.47..26712.34 rows=10544 width=39) (actual time=6747.954..10055.128 rows=6234 loops=1)
                                                               Hash Cond: (t.id = cc.movie_id)
                                                               Buffers: shared hit=2576790 read=44013
                                                               ->  Hash Join  (cost=6.14..23377.63 rows=197350 width=31) (actual time=812.278..9574.045 rows=274015 loops=1)
                                                                     Hash Cond: (t.kind_id = kt.id)
                                                                     Buffers: shared hit=2489870 read=42910
                                                                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=54.299..9327.759 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared hit=2489870 read=42908
                                                                     ->  Hash  (cost=6.12..6.12 rows=1 width=14) (actual time=24.336..24.336 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=2
                                                                           ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=14) (actual time=24.320..24.323 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'movie'::text)
                                                                                 Buffers: shared read=2
                                                               ->  Hash  (cost=3283.51..3283.51 rows=135086 width=8) (actual time=403.012..403.012 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7325kB
                                                                     Buffers: shared hit=86920 read=1103
                                                                     ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=51.628..339.899 rows=135086 loops=1)
                                                                           Buffers: shared hit=86920 read=1103
                                             ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=800.164..800.164 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=28.688..774.574 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=4.508..4.508 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=4.489..4.493 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'complete+verified'::text)
                                                   Buffers: shared read=2
         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=85.253..85.253 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=85.225..85.230 rows=4 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 8567.567 ms
 Execution Time: 35612.904 ms
(97 rows)


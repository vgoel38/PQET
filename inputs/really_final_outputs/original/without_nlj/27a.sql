                                                                                                        QUERY PLAN                                                                                                         
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12169.89..12169.89 rows=1 width=96) (actual time=11101.795..11101.796 rows=1 loops=1)
   Buffers: shared hit=183518 read=188668
   ->  Hash Join  (cost=3746.73..12169.89 rows=1 width=48) (actual time=9741.230..11078.179 rows=477 loops=1)
         Hash Cond: (mi.movie_id = ml.movie_id)
         Buffers: shared hit=183518 read=188668
         ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=134293 width=4) (actual time=16.774..8535.896 rows=134239 loops=1)
               Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
               Rows Removed by Filter: 14701481
               Buffers: shared hit=2 read=161890
         ->  Hash  (cost=3746.73..3746.73 rows=1 width=68) (actual time=2520.915..2520.915 rows=172 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 26kB
               Buffers: shared hit=183513 read=26778
               ->  Hash Join  (cost=2828.84..3746.73 rows=1 width=68) (actual time=2164.412..2520.837 rows=172 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=183513 read=26778
                     ->  Hash Join  (cost=2656.73..3574.62 rows=1 width=53) (actual time=2018.691..2375.719 rows=398 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=183511 read=23786
                           ->  Hash Join  (cost=2656.69..3574.58 rows=1 width=57) (actual time=1487.951..2375.575 rows=427 loops=1)
                                 Hash Cond: (mc.movie_id = ml.movie_id)
                                 Buffers: shared hit=183510 read=23786
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.018..767.151 rows=1271989 loops=1)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 1337140
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=2656.69..2656.69 rows=1 width=45) (actual time=1466.331..1466.331 rows=77 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                       Buffers: shared hit=183507 read=5000
                                       ->  Hash Join  (cost=1802.24..2656.69 rows=1 width=45) (actual time=1360.875..1466.254 rows=77 loops=1)
                                             Hash Cond: (cc.subject_id = cct1.id)
                                             Buffers: shared hit=183507 read=5000
                                             ->  Hash Join  (cost=1802.21..2656.66 rows=1 width=49) (actual time=1360.850..1466.187 rows=77 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=183506 read=5000
                                                   ->  Merge Join  (cost=1796.07..2650.53 rows=14 width=53) (actual time=1315.117..1424.196 rows=2011 loops=1)
                                                         Merge Cond: (mk.movie_id = ml.movie_id)
                                                         Buffers: shared hit=183506 read=4996
                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.041..126.829 rows=81682 loops=1)
                                                               Buffers: shared hit=291 read=667
                                                         ->  Sort  (cost=1796.06..1796.06 rows=8 width=45) (actual time=1272.474..1272.684 rows=2018 loops=1)
                                                               Sort Key: t.id
                                                               Sort Method: quicksort  Memory: 41kB
                                                               Buffers: shared hit=183215 read=4329
                                                               ->  Hash Join  (cost=64.75..1796.06 rows=8 width=45) (actual time=1085.941..1259.933 rows=179 loops=1)
                                                                     Hash Cond: (cc.status_id = cct2.id)
                                                                     Buffers: shared hit=183211 read=4329
                                                                     ->  Hash Join  (cost=64.72..1796.02 rows=32 width=49) (actual time=1085.885..1259.802 rows=247 loops=1)
                                                                           Hash Cond: (ml.movie_id = cc.movie_id)
                                                                           Buffers: shared hit=183210 read=4329
                                                                           ->  Merge Join  (cost=12.62..1743.77 rows=600 width=37) (actual time=349.909..1152.988 rows=1332 loops=1)
                                                                                 Merge Cond: (t.id = ml.movie_id)
                                                                                 Buffers: shared hit=183208 read=3600
                                                                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=0.041..1125.008 rows=59833 loops=1)
                                                                                       Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                                                                       Rows Removed by Filter: 126370
                                                                                       Buffers: shared hit=183205 read=3439
                                                                                 ->  Sort  (cost=12.61..12.74 rows=1666 width=16) (actual time=19.961..20.203 rows=2315 loops=1)
                                                                                       Sort Key: ml.movie_id
                                                                                       Sort Method: quicksort  Memory: 205kB
                                                                                       Buffers: shared hit=3 read=161
                                                                                       ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.101..18.839 rows=2315 loops=1)
                                                                                             Hash Cond: (ml.link_type_id = lt.id)
                                                                                             Buffers: shared hit=3 read=161
                                                                                             ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.012..11.750 rows=29997 loops=1)
                                                                                                   Buffers: shared hit=2 read=161
                                                                                             ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.031..0.032 rows=2 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=1
                                                                                                   ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.010..0.024 rows=2 loops=1)
                                                                                                         Filter: ((link)::text ~~ '%follow%'::text)
                                                                                                         Rows Removed by Filter: 16
                                                                                                         Buffers: shared hit=1
                                                                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=104.784..104.785 rows=135086 loops=1)
                                                                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                 Buffers: shared hit=2 read=729
                                                                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=23.843..60.272 rows=135086 loops=1)
                                                                                       Buffers: shared hit=2 read=729
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.018 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'complete'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=41.483..41.483 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=41.461..41.464 rows=1 loops=1)
                                                               Index Cond: (keyword = 'sequel'::text)
                                                               Buffers: shared read=4
                                             ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.011..0.011 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.006..0.007 rows=2 loops=1)
                                                         Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.012 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
                     ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=144.742..144.742 rows=48302 loops=1)
                           Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=9.291..128.034 rows=48302 loops=1)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 186695
                                 Buffers: shared hit=2 read=2992
 Planning Time: 11475.556 ms
 Execution Time: 11102.758 ms
(113 rows)


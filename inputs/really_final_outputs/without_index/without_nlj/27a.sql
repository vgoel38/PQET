                                                                                                           QUERY PLAN                                                                                                            
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12173.44..12173.44 rows=1 width=96) (actual time=11349.758..11349.758 rows=1 loops=1)
   Buffers: shared hit=183488 read=188568
   ->  Hash Join  (cost=11255.55..12173.44 rows=1 width=48) (actual time=10969.739..11332.672 rows=477 loops=1)
         Hash Cond: (cc.subject_id = cct.id)
         Buffers: shared hit=183488 read=188568
         ->  Hash Join  (cost=11255.52..12173.41 rows=1 width=52) (actual time=10969.707..11332.441 rows=477 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=183484 read=188568
               ->  Hash Join  (cost=11255.48..12173.37 rows=1 width=56) (actual time=10444.837..11332.211 rows=534 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=183483 read=188568
                     ->  Hash Join  (cost=11083.37..12001.26 rows=1 width=41) (actual time=10293.789..11180.816 rows=1163 loops=1)
                           Hash Cond: (mc.movie_id = ml.movie_id)
                           Buffers: shared hit=183481 read=185576
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.020..785.752 rows=1271989 loops=1)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 1337140
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=11083.37..11083.37 rows=1 width=53) (actual time=10252.703..10252.703 rows=154 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 21kB
                                 Buffers: shared hit=183478 read=166790
                                 ->  Hash Join  (cost=10225.36..11083.37 rows=1 width=53) (actual time=10153.491..10252.607 rows=154 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=183478 read=166790
                                       ->  Merge Join  (cost=10219.22..11077.24 rows=2 width=57) (actual time=10112.268..10211.048 rows=1853 loops=1)
                                             Merge Cond: (mk.movie_id = ml.movie_id)
                                             Buffers: shared hit=183478 read=166786
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39286.64 rows=4523930 width=8) (actual time=0.023..215.358 rows=69431 loops=1)
                                                   Buffers: shared hit=261 read=567
                                             ->  Materialize  (cost=10219.21..10219.21 rows=1 width=49) (actual time=9973.326..9973.544 rows=1845 loops=1)
                                                   Buffers: shared hit=183217 read=166219
                                                   ->  Sort  (cost=10219.21..10219.21 rows=1 width=49) (actual time=9973.318..9973.346 rows=213 loops=1)
                                                         Sort Key: ml.movie_id
                                                         Sort Method: quicksort  Memory: 41kB
                                                         Buffers: shared hit=183217 read=166219
                                                         ->  Hash Join  (cost=1796.06..10219.21 rows=1 width=49) (actual time=8648.689..9960.760 rows=213 loops=1)
                                                               Hash Cond: (mi.movie_id = ml.movie_id)
                                                               Buffers: shared hit=183213 read=166219
                                                               ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=134248 width=4) (actual time=27.019..8715.304 rows=134239 loops=1)
                                                                     Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                     Rows Removed by Filter: 14701481
                                                                     Buffers: shared hit=2 read=161890
                                                               ->  Hash  (cost=1796.06..1796.06 rows=8 width=45) (actual time=1224.340..1224.340 rows=179 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 22kB
                                                                     Buffers: shared hit=183211 read=4329
                                                                     ->  Hash Join  (cost=64.75..1796.06 rows=8 width=45) (actual time=1032.522..1224.241 rows=179 loops=1)
                                                                           Hash Cond: (cc.status_id = cct.id)
                                                                           Buffers: shared hit=183211 read=4329
                                                                           ->  Hash Join  (cost=64.72..1796.02 rows=32 width=49) (actual time=1032.456..1224.091 rows=247 loops=1)
                                                                                 Hash Cond: (ml.movie_id = cc.movie_id)
                                                                                 Buffers: shared hit=183210 read=4329
                                                                                 ->  Merge Join  (cost=12.62..1743.77 rows=600 width=37) (actual time=364.507..1117.310 rows=1332 loops=1)
                                                                                       Merge Cond: (t.id = ml.movie_id)
                                                                                       Buffers: shared hit=183208 read=3600
                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=0.044..1066.744 rows=59833 loops=1)
                                                                                             Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                                                                             Rows Removed by Filter: 126370
                                                                                             Buffers: shared hit=183205 read=3439
                                                                                       ->  Sort  (cost=12.61..12.74 rows=1666 width=16) (actual time=42.331..42.573 rows=2315 loops=1)
                                                                                             Sort Key: ml.movie_id
                                                                                             Sort Method: quicksort  Memory: 205kB
                                                                                             Buffers: shared hit=3 read=161
                                                                                             ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.104..40.525 rows=2315 loops=1)
                                                                                                   Hash Cond: (ml.link_type_id = lt.id)
                                                                                                   Buffers: shared hit=3 read=161
                                                                                                   ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.012..28.849 rows=29997 loops=1)
                                                                                                         Buffers: shared hit=2 read=161
                                                                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.031..0.031 rows=2 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=1
                                                                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.010..0.024 rows=2 loops=1)
                                                                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                                                                               Rows Removed by Filter: 16
                                                                                                               Buffers: shared hit=1
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=105.038..105.038 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared hit=2 read=729
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=24.126..60.618 rows=135086 loops=1)
                                                                                             Buffers: shared hit=2 read=729
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.013..0.015 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared hit=1
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=41.189..41.189 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=41.176..41.178 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                     ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=150.886..150.886 rows=48302 loops=1)
                           Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=15.084..133.538 rows=48302 loops=1)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 186695
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.004 rows=1 loops=1)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 3
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.013..0.013 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.007..0.009 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                     Rows Removed by Filter: 2
                     Buffers: shared hit=1
 Planning Time: 11095.642 ms
 Execution Time: 11350.488 ms
(115 rows)


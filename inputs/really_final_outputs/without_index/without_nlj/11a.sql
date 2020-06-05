                                                                                    QUERY PLAN                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3689.70..3689.70 rows=1 width=96) (actual time=2539.365..2539.365 rows=1 loops=1)
   Buffers: shared hit=162234 read=25992
   ->  Hash Join  (cost=1100.67..3689.70 rows=1 width=48) (actual time=2194.507..2514.560 rows=310 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=162234 read=25992
         ->  Merge Join  (cost=1094.53..3683.49 rows=952 width=52) (actual time=2040.615..2472.061 rows=6863 loops=1)
               Merge Cond: (ml.movie_id = mk.movie_id)
               Buffers: shared hit=162231 read=25988
               ->  Merge Join  (cost=1094.52..2825.41 rows=69 width=60) (actual time=1984.687..2216.968 rows=698 loops=1)
                     Merge Cond: (t.id = ml.movie_id)
                     Buffers: shared hit=161790 read=25320
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=0.039..921.467 rows=52198 loops=1)
                           Filter: ((production_year >= 1950) AND (production_year <= 2000))
                           Rows Removed by Filter: 112568
                           Buffers: shared hit=161777 read=3381
                     ->  Sort  (cost=1094.51..1094.52 rows=192 width=39) (actual time=1283.922..1284.189 rows=1152 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 148kB
                           Buffers: shared hit=13 read=21939
                           ->  Hash Join  (cost=1084.01..1094.28 rows=192 width=39) (actual time=1242.195..1283.000 rows=1152 loops=1)
                                 Hash Cond: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=9 read=21939
                                 ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.106..39.720 rows=2315 loops=1)
                                       Hash Cond: (ml.link_type_id = lt.id)
                                       Buffers: shared hit=3 read=161
                                       ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.013..27.164 rows=29997 loops=1)
                                             Buffers: shared hit=2 read=161
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.031..0.032 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.010..0.024 rows=2 loops=1)
                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                   Rows Removed by Filter: 16
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=1074.21..1074.21 rows=66524 width=23) (actual time=1240.999..1240.999 rows=224256 loops=1)
                                       Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 14559kB
                                       Buffers: shared hit=6 read=21778
                                       ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=700.026..1171.186 rows=224256 loops=1)
                                             Hash Cond: (mc.company_type_id = ct.id)
                                             Buffers: shared hit=6 read=21778
                                             ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=161.961..1112.242 rows=240875 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=5 read=21778
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.051..727.262 rows=1271989 loops=1)
                                                         Filter: (note IS NULL)
                                                         Rows Removed by Filter: 1337140
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=156.555..156.555 rows=48302 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                         Buffers: shared hit=2 read=2992
                                                         ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=21.157..138.275 rows=48302 loops=1)
                                                               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                               Rows Removed by Filter: 186695
                                                               Buffers: shared hit=2 read=2992
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.016..0.017 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'production companies'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=1
               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39286.64 rows=4523930 width=8) (actual time=0.015..228.309 rows=88346 loops=1)
                     Buffers: shared hit=441 read=668
         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=39.802..39.802 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=4
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=39.786..39.789 rows=1 loops=1)
                     Index Cond: (keyword = 'sequel'::text)
                     Buffers: shared read=4
 Planning Time: 3165.172 ms
 Execution Time: 2540.470 ms
(71 rows)


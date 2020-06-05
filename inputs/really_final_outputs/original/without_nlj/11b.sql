                                                                                    QUERY PLAN                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3612.83..3612.83 rows=1 width=96) (actual time=3090.882..3090.883 rows=1 loops=1)
   Buffers: shared hit=278 read=58507
   ->  Hash Join  (cost=2758.39..3612.83 rows=1 width=48) (actual time=3090.786..3090.817 rows=14 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=278 read=58507
         ->  Merge Join  (cost=2752.25..3606.69 rows=1 width=52) (actual time=3067.329..3067.407 rows=56 loops=1)
               Merge Cond: (mk.movie_id = ml.movie_id)
               Buffers: shared hit=275 read=58503
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.035..106.006 rows=69417 loops=1)
                     Buffers: shared hit=261 read=567
               ->  Materialize  (cost=2752.24..2752.24 rows=1 width=60) (actual time=2940.976..2940.998 rows=53 loops=1)
                     Buffers: shared hit=14 read=57936
                     ->  Sort  (cost=2752.24..2752.24 rows=1 width=60) (actual time=2940.967..2940.972 rows=14 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 26kB
                           Buffers: shared hit=14 read=57936
                           ->  Hash Join  (cost=1878.79..2752.24 rows=1 width=60) (actual time=2590.334..2928.528 rows=14 loops=1)
                                 Hash Cond: (t.id = ml.movie_id)
                                 Buffers: shared hit=10 read=57936
                                 ->  Hash Join  (cost=1868.70..2742.15 rows=1 width=44) (actual time=2554.592..2892.781 rows=5 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=7 read=57775
                                       ->  Hash Join  (cost=1868.67..2742.12 rows=3 width=48) (actual time=2554.553..2892.735 rows=5 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=6 read=57775
                                             ->  Hash Join  (cost=1696.56..2570.01 rows=12 width=33) (actual time=2010.463..2732.570 rows=22 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=4 read=54783
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.037..755.911 rows=1271989 loops=1)
                                                         Filter: (note IS NULL)
                                                         Rows Removed by Filter: 1337140
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=1696.56..1696.56 rows=24 width=21) (actual time=1839.017..1839.018 rows=36 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 11kB
                                                         Buffers: shared hit=1 read=35997
                                                         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=24 width=21) (actual time=56.276..1838.855 rows=36 loops=1)
                                                               Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
                                                               Rows Removed by Filter: 2528276
                                                               Buffers: shared hit=1 read=35997
                                             ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=159.769..159.769 rows=48302 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=24.345..142.236 rows=48302 loops=1)
                                                         Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                         Rows Removed by Filter: 186695
                                                         Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'production companies'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=9.84..9.84 rows=1666 width=16) (actual time=35.709..35.710 rows=1158 loops=1)
                                       Buckets: 2048  Batches: 1  Memory Usage: 66kB
                                       Buffers: shared hit=3 read=161
                                       ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.173..34.928 rows=1158 loops=1)
                                             Hash Cond: (ml.link_type_id = lt.id)
                                             Buffers: shared hit=3 read=161
                                             ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.015..21.296 rows=29997 loops=1)
                                                   Buffers: shared hit=2 read=161
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.066..0.066 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.043..0.057 rows=1 loops=1)
                                                         Filter: ((link)::text ~~ '%follows%'::text)
                                                         Rows Removed by Filter: 17
                                                         Buffers: shared hit=1
         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=23.291..23.291 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=4
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=23.271..23.275 rows=1 loops=1)
                     Index Cond: (keyword = 'sequel'::text)
                     Buffers: shared read=4
 Planning Time: 3545.084 ms
 Execution Time: 3136.281 ms
(76 rows)


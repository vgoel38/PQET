                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13199.53..13199.53 rows=1 width=96) (actual time=113132.871..113132.871 rows=1 loops=1)
   Buffers: shared hit=5716351 read=109631
   ->  Nested Loop  (cost=6.20..13199.53 rows=5 width=65) (actual time=14823.728..113000.265 rows=111101 loops=1)
         Buffers: shared hit=5716351 read=109631
         ->  Nested Loop  (cost=6.20..13196.64 rows=617 width=69) (actual time=14811.992..110992.462 rows=516327 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=4683697 read=109631
               ->  Nested Loop  (cost=6.19..13185.46 rows=44 width=35) (actual time=14773.128..54016.270 rows=16470 loops=1)
                     Buffers: shared hit=4509117 read=56904
                     ->  Nested Loop  (cost=6.18..13184.11 rows=306 width=39) (actual time=429.727..53827.522 rows=31510 loops=1)
                           Buffers: shared hit=4446097 read=56904
                           ->  Nested Loop  (cost=6.17..13164.56 rows=306 width=14) (actual time=380.341..21268.420 rows=31510 loops=1)
                                 Buffers: shared hit=4335449 read=41437
                                 ->  Nested Loop  (cost=6.16..13033.36 rows=7365 width=18) (actual time=23.835..9354.840 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996925 read=37602
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                                       ->  Nested Loop  (cost=6.15..13022.91 rows=29462 width=22) (actual time=0.232..8913.298 rows=1354883 loops=1)
                                             Buffers: shared hit=1996924 read=37601
                                             ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=0.207..3035.323 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=13575 read=12221
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.039..2337.500 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.054..0.054 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.039..0.041 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.006..0.011 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.020..0.020 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[de]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2338524 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=1.031..1.031 rows=1 loops=31510)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=110648 read=15467
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=31510)
                           Index Cond: (id = t.kind_id)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=63020
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=50) (actual time=0.753..3.437 rows=31 loops=16470)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=174580 read=52727
         ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=516327)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=1032654
 Planning Time: 5117.981 ms
 Execution Time: 113155.065 ms
(59 rows)


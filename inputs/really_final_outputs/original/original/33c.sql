                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=608.55..608.55 rows=1 width=192) (actual time=2740.042..2740.042 rows=1 loops=1)
   Buffers: shared hit=1474 read=8808
   ->  Nested Loop  (cost=571.63..608.55 rows=1 width=84) (actual time=913.037..2739.580 rows=114 loops=1)
         Buffers: shared hit=1474 read=8808
         ->  Nested Loop  (cost=571.62..608.53 rows=1 width=69) (actual time=912.979..2511.942 rows=131 loops=1)
               Buffers: shared hit=979 read=8779
               ->  Nested Loop  (cost=571.61..608.49 rows=1 width=77) (actual time=905.220..2439.081 rows=44 loops=1)
                     Buffers: shared hit=777 read=8760
                     ->  Nested Loop  (cost=571.59..608.47 rows=1 width=62) (actual time=861.332..2295.537 rows=44 loops=1)
                           Buffers: shared hit=619 read=8742
                           ->  Nested Loop  (cost=571.59..608.47 rows=1 width=66) (actual time=861.286..2295.011 rows=44 loops=1)
                                 Join Filter: (ml.movie_id = t1.id)
                                 Buffers: shared hit=531 read=8742
                                 ->  Nested Loop  (cost=571.58..608.36 rows=1 width=41) (actual time=834.114..2186.939 rows=44 loops=1)
                                       Join Filter: (it1.id = mi_idx1.info_type_id)
                                       Rows Removed by Join Filter: 88
                                       Buffers: shared hit=371 read=8726
                                       ->  Nested Loop  (cost=571.56..598.25 rows=8 width=35) (actual time=813.137..2069.541 rows=48 loops=1)
                                             Buffers: shared hit=194 read=8715
                                             ->  Hash Join  (cost=571.55..597.53 rows=8 width=43) (actual time=764.163..1748.079 rows=21 loops=1)
                                                   Hash Cond: (t2.kind_id = kt2.id)
                                                   Buffers: shared hit=125 read=8686
                                                   ->  Nested Loop  (cost=571.52..597.50 rows=28 width=47) (actual time=662.345..1747.876 rows=29 loops=1)
                                                         Join Filter: (ml.linked_movie_id = t2.id)
                                                         Buffers: shared hit=121 read=8686
                                                         ->  Nested Loop  (cost=571.50..583.71 rows=69 width=22) (actual time=629.259..651.644 rows=47 loops=1)
                                                               Buffers: shared hit=7 read=8612
                                                               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.044..0.055 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'rating'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                               ->  Hash Join  (cost=571.50..583.66 rows=69 width=18) (actual time=629.210..651.532 rows=47 loops=1)
                                                                     Hash Cond: (mi_idx2.info_type_id = it2.id)
                                                                     Buffers: shared hit=6 read=8612
                                                                     ->  Hash Join  (cost=571.46..582.97 rows=7827 width=22) (actual time=611.109..650.389 rows=3080 loops=1)
                                                                           Hash Cond: (ml.linked_movie_id = mi_idx2.movie_id)
                                                                           Buffers: shared hit=5 read=8612
                                                                           ->  Hash Join  (cost=0.04..9.84 rows=5000 width=8) (actual time=0.089..36.110 rows=2315 loops=1)
                                                                                 Hash Cond: (ml.link_type_id = lt.id)
                                                                                 Buffers: shared hit=3 read=161
                                                                                 ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.009..24.196 rows=29997 loops=1)
                                                                                       Buffers: shared hit=2 read=161
                                                                                 ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.033..0.033 rows=2 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=1
                                                                                       ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=0.021..0.029 rows=2 loops=1)
                                                                                             Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                                             Rows Removed by Filter: 16
                                                                                             Buffers: shared hit=1
                                                                           ->  Hash  (cost=467.71..467.71 rows=706570 width=14) (actual time=605.961..605.961 rows=706560 loops=1)
                                                                                 Buckets: 1048576  Batches: 1  Memory Usage: 42000kB
                                                                                 Buffers: shared hit=2 read=8451
                                                                                 ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=706570 width=14) (actual time=0.010..393.874 rows=706560 loops=1)
                                                                                       Filter: (info < '3.5'::text)
                                                                                       Rows Removed by Filter: 673475
                                                                                       Buffers: shared hit=2 read=8451
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.051..0.051 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.041..0.046 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'rating'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                         ->  Index Scan using title_idx_id on title t2  (cost=0.01..0.20 rows=1 width=25) (actual time=23.319..23.319 rows=1 loops=47)
                                                               Index Cond: (id = mi_idx2.movie_id)
                                                               Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=114 read=74
                                                   ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.035..0.036 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on kind_type kt2  (cost=0.00..0.03 rows=2 width=4) (actual time=0.017..0.022 rows=2 loops=1)
                                                               Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                               Rows Removed by Filter: 5
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc2  (cost=0.01..0.09 rows=2 width=8) (actual time=13.530..15.300 rows=2 loops=21)
                                                   Index Cond: (movie_id = t2.id)
                                                   Buffers: shared hit=69 read=29
                                       ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx1  (cost=0.01..1.26 rows=3 width=14) (actual time=2.437..2.440 rows=3 loops=48)
                                             Index Cond: (movie_id = ml.movie_id)
                                             Buffers: shared hit=177 read=11
                                 ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.11 rows=1 width=25) (actual time=2.451..2.451 rows=1 loops=44)
                                       Index Cond: (id = mi_idx1.movie_id)
                                       Buffers: shared hit=160 read=16
                           ->  Index Scan using kind_type_pkey on kind_type kt1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=44)
                                 Index Cond: (id = t1.kind_id)
                                 Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                 Buffers: shared hit=88
                     ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=3.259..3.259 rows=1 loops=44)
                           Index Cond: (id = mc2.company_id)
                           Buffers: shared hit=158 read=18
               ->  Index Scan using movie_companies_idx_mid on movie_companies mc1  (cost=0.01..0.05 rows=2 width=8) (actual time=1.323..1.650 rows=3 loops=44)
                     Index Cond: (movie_id = t1.id)
                     Buffers: shared hit=202 read=19
         ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=1.735..1.735 rows=1 loops=131)
               Index Cond: (id = mc1.company_id)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=495 read=29
 Planning Time: 5947.718 ms
 Execution Time: 2742.099 ms
(101 rows)


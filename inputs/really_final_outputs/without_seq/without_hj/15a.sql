                                                                                                           QUERY PLAN                                                                                                            
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=30742.43..30742.43 rows=1 width=64) (actual time=321226.739..321226.739 rows=1 loops=1)
   Buffers: shared hit=331027 read=63376
   ->  Nested Loop  (cost=23220.71..30742.43 rows=8 width=59) (actual time=3384.863..321225.941 rows=328 loops=1)
         Buffers: shared hit=331027 read=63376
         ->  Nested Loop  (cost=23220.70..30742.32 rows=8 width=63) (actual time=3364.401..320885.178 rows=328 loops=1)
               Buffers: shared hit=330114 read=63304
               ->  Nested Loop  (cost=23220.69..30742.22 rows=1 width=75) (actual time=3321.356..320174.326 rows=57 loops=1)
                     Buffers: shared hit=329971 read=63239
                     ->  Nested Loop  (cost=23220.68..30742.15 rows=1 width=79) (actual time=3321.315..320173.574 rows=57 loops=1)
                           Buffers: shared hit=329857 read=63239
                           ->  Nested Loop  (cost=23220.68..30742.14 rows=1 width=83) (actual time=3298.146..320149.566 rows=57 loops=1)
                                 Buffers: shared hit=329800 read=63238
                                 ->  Nested Loop  (cost=23220.66..30044.97 rows=1498 width=33) (actual time=1892.061..90740.622 rows=5134 loops=1)
                                       Buffers: shared hit=271263 read=34768
                                       ->  Nested Loop  (cost=23220.65..29011.36 rows=2741 width=12) (actual time=1864.151..11168.625 rows=13699 loops=1)
                                             Buffers: shared hit=222708 read=28492
                                             ->  Merge Join  (cost=23220.64..27827.55 rows=6278 width=8) (actual time=1807.456..7228.901 rows=43837 loops=1)
                                                   Merge Cond: (cn.id = mc.company_id)
                                                   Buffers: shared hit=91985 read=27526
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.056..5321.623 rows=34630 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 58745
                                                         Buffers: shared hit=91978 read=1609
                                                   ->  Sort  (cost=23220.62..23221.97 rows=17389 width=12) (actual time=1807.391..1833.041 rows=61664 loops=1)
                                                         Sort Key: mc.company_id
                                                         Sort Method: quicksort  Memory: 4427kB
                                                         Buffers: shared hit=7 read=25917
                                                         ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=17389 width=12) (actual time=28.095..1767.506 rows=61664 loops=1)
                                                               Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                               Rows Removed by Filter: 2547465
                                                               Buffers: shared hit=3 read=25917
                                             ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..0.19 rows=2 width=4) (actual time=0.088..0.088 rows=0 loops=43837)
                                                   Index Cond: (movie_id = mc.movie_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=130723 read=966
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.38 rows=1 width=21) (actual time=5.806..5.806 rows=0 loops=13699)
                                             Index Cond: (id = at.movie_id)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=48555 read=6276
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.47 rows=1 width=50) (actual time=44.430..44.680 rows=0 loops=5134)
                                       Index Cond: (movie_id = t.id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 72
                                       Buffers: shared hit=58537 read=28470
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.414..0.414 rows=1 loops=57)
                                 Index Cond: (id = mc.company_type_id)
                                 Heap Fetches: 0
                                 Buffers: shared hit=57 read=1
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.04 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=57)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'release dates'::text)
                           Buffers: shared hit=114
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=12.448..12.462 rows=6 loops=57)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=143 read=65
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.036..1.036 rows=1 loops=328)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=913 read=72
 Planning Time: 8997.401 ms
 Execution Time: 321261.314 ms
(62 rows)


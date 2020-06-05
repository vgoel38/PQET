                                                                                                        QUERY PLAN                                                                                                         
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=30708.55..30708.55 rows=1 width=64) (actual time=85697.332..85697.333 rows=1 loops=1)
   Buffers: shared hit=470768 read=65601
   ->  Nested Loop  (cost=4609.74..30708.55 rows=8 width=59) (actual time=2755.894..85696.578 rows=328 loops=1)
         Buffers: shared hit=470768 read=65601
         ->  Nested Loop  (cost=4609.73..30708.44 rows=8 width=63) (actual time=2734.322..85298.945 rows=328 loops=1)
               Buffers: shared hit=469855 read=65529
               ->  Nested Loop  (cost=4609.72..30708.34 rows=1 width=75) (actual time=2088.150..84586.110 rows=57 loops=1)
                     Buffers: shared hit=469712 read=65464
                     ->  Nested Loop  (cost=4609.71..30708.26 rows=1 width=79) (actual time=2088.094..84585.368 rows=57 loops=1)
                           Buffers: shared hit=469598 read=65464
                           ->  Nested Loop  (cost=4609.71..30708.26 rows=1 width=83) (actual time=2061.477..84558.103 rows=57 loops=1)
                                 Buffers: shared hit=469541 read=65463
                                 ->  Nested Loop  (cost=4609.69..30011.09 rows=1498 width=33) (actual time=880.082..26436.599 rows=5134 loops=1)
                                       Buffers: shared hit=411004 read=36993
                                       ->  Nested Loop  (cost=4609.68..28977.47 rows=2741 width=12) (actual time=855.909..4093.698 rows=13699 loops=1)
                                             Buffers: shared hit=362449 read=30717
                                             ->  Hash Join  (cost=4609.67..27793.66 rows=6278 width=8) (actual time=820.563..3446.452 rows=43837 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=231726 read=29751
                                                   ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=17389 width=12) (actual time=22.293..2578.062 rows=61664 loops=1)
                                                         Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                         Rows Removed by Filter: 2547465
                                                         Buffers: shared hit=3 read=25917
                                                   ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=797.206..797.207 rows=84843 loops=1)
                                                         Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                         Buffers: shared hit=231720 read=3834
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.028..771.610 rows=84843 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 150154
                                                               Buffers: shared hit=231720 read=3834
                                             ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..0.19 rows=2 width=4) (actual time=0.013..0.013 rows=0 loops=43837)
                                                   Index Cond: (movie_id = mc.movie_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=130723 read=966
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.38 rows=1 width=21) (actual time=1.629..1.629 rows=0 loops=13699)
                                             Index Cond: (id = at.movie_id)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=48555 read=6276
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.47 rows=1 width=50) (actual time=11.238..11.318 rows=0 loops=5134)
                                       Index Cond: (movie_id = t.id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 72
                                       Buffers: shared hit=58537 read=28470
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.473..0.473 rows=1 loops=57)
                                 Index Cond: (id = mc.company_type_id)
                                 Heap Fetches: 0
                                 Buffers: shared hit=57 read=1
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.04 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=57)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'release dates'::text)
                           Buffers: shared hit=114
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=12.483..12.498 rows=6 loops=57)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=143 read=65
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.210..1.210 rows=1 loops=328)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=913 read=72
 Planning Time: 9510.523 ms
 Execution Time: 85718.572 ms
(61 rows)


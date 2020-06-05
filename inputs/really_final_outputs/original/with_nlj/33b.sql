 Aggregate  (cost=655.24..655.24 rows=1 width=192) (actual time=3612.962..3612.962 rows=1 loops=1)
   Buffers: shared hit=112793 read=8872
   ->  Nested Loop  (cost=0.10..655.24 rows=1 width=84) (actual time=304.929..3612.906 rows=4 loops=1)
         Join Filter: ((ml.movie_id = t1.id) AND (kt1.id = t1.kind_id))
         Buffers: shared hit=112793 read=8872
         ->  Nested Loop  (cost=0.09..655.17 rows=1 width=83) (actual time=256.672..3564.609 rows=4 loops=1)
               Buffers: shared hit=112779 read=8870
               ->  Nested Loop  (cost=0.08..655.08 rows=5 width=68) (actual time=256.625..3509.880 rows=14 loops=1)
                     Join Filter: (ml.movie_id = mc1.movie_id)
                     Buffers: shared hit=112729 read=8864
                     ->  Nested Loop  (cost=0.06..655.01 rows=1 width=60) (actual time=224.594..3470.594 rows=6 loops=1)
                           Join Filter: (kt2.id = t2.kind_id)
                           Buffers: shared hit=112706 read=8859
                           ->  Nested Loop  (cost=0.00..0.06 rows=1 width=8) (actual time=19.649..19.654 rows=1 loops=1)
                                 Buffers: shared hit=1 read=1
                                 ->  Seq Scan on kind_type kt1  (cost=0.00..0.03 rows=1 width=4) (actual time=19.633..19.635 rows=1 loops=1)
                                       Filter: ((kind)::text = 'tv series'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared read=1
                                 ->  Seq Scan on kind_type kt2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.013 rows=1 loops=1)
                                       Filter: ((kind)::text = 'tv series'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                           ->  Nested Loop  (cost=0.06..654.95 rows=1 width=60) (actual time=204.940..3450.925 rows=6 loops=1)
                                 Join Filter: (ml.linked_movie_id = t2.id)
                                 Buffers: shared hit=112705 read=8858
                                 ->  Nested Loop  (cost=0.05..654.31 rows=10 width=51) (actual time=154.217..2786.844 rows=58 loops=1)
                                       Buffers: shared hit=112519 read=8812
                                       ->  Nested Loop  (cost=0.04..654.13 rows=10 width=36) (actual time=103.780..2220.876 rows=58 loops=1)
                                             Join Filter: (ml.linked_movie_id = mc2.movie_id)
                                             Buffers: shared hit=112347 read=8752
                                             ->  Nested Loop  (cost=0.02..653.99 rows=1 width=28) (actual time=80.930..1716.220 rows=30 loops=1)
                                                   Join Filter: (mi_idx1.info_type_id = it1.id)
                                                   Rows Removed by Join Filter: 60
                                                   Buffers: shared hit=112272 read=8692
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=1.516..1.518 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.02..653.94 rows=66 width=32) (actual time=79.400..1714.609 rows=90 loops=1)
                                                         Buffers: shared hit=112272 read=8691
                                                         ->  Nested Loop  (cost=0.01..626.16 rows=22 width=18) (actual time=62.518..1601.499 rows=34 loops=1)
                                                               Join Filter: (ml.link_type_id = lt.id)
                                                               Rows Removed by Join Filter: 2136
                                                               Buffers: shared hit=112159 read=8672
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=5.921..5.929 rows=2 loops=1)
                                                                     Filter: ((link)::text ~~ '%follow%'::text)
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared read=1
                                                               ->  Nested Loop  (cost=0.01..626.06 rows=387 width=22) (actual time=13.349..797.475 rows=1085 loops=2)
                                                                     Buffers: shared hit=112159 read=8671
                                                                     ->  Nested Loop  (cost=0.00..564.39 rows=5826 width=10) (actual time=5.855..661.421 rows=25591 loops=2)
                                                                           Join Filter: (mi_idx2.info_type_id = it2.id)
                                                                           Rows Removed by Join Filter: 632704
                                                                           Buffers: shared hit=8455 read=8453
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.034..0.037 rows=1 loops=2)
                                                                                 Filter: ((info)::text = 'rating'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=2
                                                                           ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=658313 width=14) (actual time=5.777..568.211 rows=658295 loops=2)
                                                                                 Filter: (info < '3.0'::text)
                                                                                 Rows Removed by Filter: 721740
                                                                                 Buffers: shared hit=8453 read=8453
                                                                     ->  Index Scan using linked_movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=2 width=12) (actual time=0.004..0.005 rows=0 loops=51182)
                                                                           Index Cond: (linked_movie_id = mi_idx2.movie_id)
                                                                           Buffers: shared hit=103704 read=218
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx1  (cost=0.01..1.26 rows=3 width=14) (actual time=3.320..3.322 rows=3 loops=34)
                                                               Index Cond: (movie_id = ml.movie_id)
                                                               Buffers: shared hit=113 read=19
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc2  (cost=0.01..0.13 rows=2 width=8) (actual time=14.240..16.814 rows=2 loops=30)
                                                   Index Cond: (movie_id = mi_idx2.movie_id)
                                                   Buffers: shared hit=75 read=60
                                       ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=9.751..9.751 rows=1 loops=58)
                                             Index Cond: (id = mc2.company_id)
                                             Buffers: shared hit=172 read=60
                                 ->  Index Scan using title_idx_id on title t2  (cost=0.01..0.06 rows=1 width=25) (actual time=11.445..11.445 rows=0 loops=58)
                                       Index Cond: (id = mc2.movie_id)
                                       Filter: (production_year = 2007)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=186 read=46
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc1  (cost=0.01..0.07 rows=2 width=8) (actual time=5.384..6.538 rows=2 loops=6)
                           Index Cond: (movie_id = mi_idx1.movie_id)
                           Buffers: shared hit=23 read=5
               ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=3.906..3.906 rows=0 loops=14)
                     Index Cond: (id = mc1.company_id)
                     Filter: ((country_code)::text = '[nl]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=50 read=6
         ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.06 rows=1 width=25) (actual time=12.068..12.068 rows=1 loops=4)
               Index Cond: (id = mc1.movie_id)
               Buffers: shared hit=14 read=2
 Planning Time: 5722.188 ms
 Execution Time: 3613.906 ms

                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=159.62..159.62 rows=1 width=64) (actual time=1518914.013..1518914.013 rows=1 loops=1)
   Buffers: shared hit=5066973 read=298505
   ->  Nested Loop  (cost=0.10..159.62 rows=1 width=15) (actual time=77916.525..1518907.877 rows=1918 loops=1)
         Buffers: shared hit=5066973 read=298505
         ->  Nested Loop  (cost=0.08..159.60 rows=1 width=27) (actual time=77873.743..1512152.404 rows=1918 loops=1)
               Buffers: shared hit=5059662 read=298131
               ->  Nested Loop  (cost=0.07..159.58 rows=1 width=31) (actual time=77830.895..1499778.012 rows=1918 loops=1)
                     Buffers: shared hit=5052988 read=297115
                     ->  Nested Loop  (cost=0.06..159.57 rows=1 width=23) (actual time=77783.840..1492073.856 rows=250 loops=1)
                           Buffers: shared hit=5052335 read=296581
                           ->  Nested Loop  (cost=0.04..137.43 rows=1130 width=12) (actual time=66.229..1153701.543 rows=1038393 loops=1)
                                 Buffers: shared hit=960430 read=227677
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=45.302..6077.167 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=34.943..34.944 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=10.313..5994.938 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=3.150..27.401 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960427 read=216018
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.324..0.324 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091905 read=68904
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=27.606..30.801 rows=8 loops=250)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=653 read=534
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=6.448..6.448 rows=1 loops=1918)
                     Index Cond: (id = mc.company_id)
                     Buffers: shared hit=6674 read=1016
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=3.518..3.518 rows=1 loops=1918)
               Index Cond: (id = ci.movie_id)
               Buffers: shared hit=7311 read=374
 Planning Time: 5694.093 ms
 Execution Time: 1518914.435 ms
(39 rows)


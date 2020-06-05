                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=159.78..159.78 rows=1 width=64) (actual time=1465362.574..1465362.575 rows=1 loops=1)
   Buffers: shared hit=5066949 read=298529
   ->  Nested Loop  (cost=0.10..159.77 rows=1 width=15) (actual time=76287.644..1465356.894 rows=1918 loops=1)
         Buffers: shared hit=5066949 read=298529
         ->  Nested Loop  (cost=0.08..159.76 rows=1 width=27) (actual time=76228.200..1458641.021 rows=1918 loops=1)
               Buffers: shared hit=5059640 read=298153
               ->  Nested Loop  (cost=0.07..159.74 rows=1 width=31) (actual time=76168.679..1446181.814 rows=1918 loops=1)
                     Buffers: shared hit=5052971 read=297132
                     ->  Nested Loop  (cost=0.06..159.72 rows=1 width=23) (actual time=76129.973..1440492.277 rows=250 loops=1)
                           Buffers: shared hit=5052320 read=296596
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=112.291..1104545.851 rows=1038393 loops=1)
                                 Buffers: shared hit=960419 read=227688
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.657..5610.869 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.005..31.007 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.628..5535.008 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.431..26.238 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960419 read=216026
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.322..0.322 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091901 read=68908
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=19.679..22.743 rows=8 loops=250)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=651 read=536
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=6.492..6.492 rows=1 loops=1918)
                     Index Cond: (id = mc.company_id)
                     Buffers: shared hit=6669 read=1021
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=3.497..3.497 rows=1 loops=1918)
               Index Cond: (id = ci.movie_id)
               Buffers: shared hit=7309 read=376
 Planning Time: 5137.811 ms
 Execution Time: 1465384.574 ms
(39 rows)


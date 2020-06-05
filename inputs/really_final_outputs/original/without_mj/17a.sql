                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=165.57..165.57 rows=1 width=64) (actual time=1587680.828..1587680.829 rows=1 loops=1)
   Buffers: shared hit=9313326 read=332280
   ->  Nested Loop  (cost=0.10..165.56 rows=65 width=15) (actual time=3160.088..1587359.798 rows=258289 loops=1)
         Buffers: shared hit=9313326 read=332280
         ->  Nested Loop  (cost=0.08..164.44 rows=65 width=27) (actual time=3108.345..1504143.637 rows=258289 loops=1)
               Buffers: shared hit=8294273 read=317026
               ->  Nested Loop  (cost=0.07..161.23 rows=180 width=31) (actual time=2248.892..1469085.034 rows=702849 loops=1)
                     Buffers: shared hit=5483275 read=313237
                     ->  Nested Loop  (cost=0.06..159.72 rows=94 width=23) (actual time=137.447..1455643.594 rows=93315 loops=1)
                           Buffers: shared hit=5052000 read=296596
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=112.291..1117537.541 rows=1038393 loops=1)
                                 Buffers: shared hit=960419 read=227688
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.659..6109.839 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.007..31.009 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.629..6030.841 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.467..26.536 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960419 read=216026
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.324..0.324 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'B%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091581 read=68908
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.103..0.138 rows=8 loops=93315)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=431275 read=16641
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.049..0.049 rows=0 loops=702849)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=2810998 read=3789
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=0.320..0.320 rows=1 loops=258289)
               Index Cond: (id = ci.movie_id)
               Buffers: shared hit=1019053 read=15254
 Planning Time: 4909.054 ms
 Execution Time: 1587703.624 ms
(41 rows)


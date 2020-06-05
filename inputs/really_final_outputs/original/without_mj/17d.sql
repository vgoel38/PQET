                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=159.79..159.79 rows=1 width=32) (actual time=1511321.711..1511321.712 rows=1 loops=1)
   Buffers: shared hit=5107561 read=304758
   ->  Nested Loop  (cost=0.10..159.79 rows=2 width=15) (actual time=38450.495..1511298.230 rows=11538 loops=1)
         Buffers: shared hit=5107561 read=304758
         ->  Nested Loop  (cost=0.08..159.76 rows=2 width=19) (actual time=38394.563..1486611.997 rows=11538 loops=1)
               Buffers: shared hit=5063607 read=302525
               ->  Nested Loop  (cost=0.07..159.74 rows=1 width=27) (actual time=38358.676..1468039.481 rows=1972 loops=1)
                     Buffers: shared hit=5057537 read=299251
                     ->  Nested Loop  (cost=0.06..159.72 rows=1 width=23) (actual time=38307.616..1442571.669 rows=1972 loops=1)
                           Buffers: shared hit=5052300 read=296596
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=112.298..1105542.653 rows=1038393 loops=1)
                                 Buffers: shared hit=960419 read=227688
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.671..5663.309 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.005..31.007 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.642..5585.778 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.446..26.260 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960419 read=216026
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ '%Bert%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091881 read=68908
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=12.909..12.909 rows=1 loops=1972)
                           Index Cond: (id = ci.movie_id)
                           Buffers: shared hit=5237 read=2655
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=7.891..9.406 rows=6 loops=1972)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=6070 read=3274
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=2.136..2.136 rows=1 loops=11538)
               Index Cond: (id = mc.company_id)
               Buffers: shared hit=43954 read=2233
 Planning Time: 4985.763 ms
 Execution Time: 1511345.994 ms
(39 rows)


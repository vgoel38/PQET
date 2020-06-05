                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=159.78..159.78 rows=1 width=32) (actual time=1485719.734..1485719.734 rows=1 loops=1)
   Buffers: shared hit=5097373 read=301459
   ->  Nested Loop  (cost=0.10..159.78 rows=2 width=15) (actual time=38469.315..1485700.693 rows=11538 loops=1)
         Buffers: shared hit=5097373 read=301459
         ->  Nested Loop  (cost=0.08..159.75 rows=2 width=19) (actual time=38444.532..1476433.559 rows=11538 loops=1)
               Buffers: shared hit=5063328 read=300854
               ->  Nested Loop  (cost=0.07..159.74 rows=1 width=27) (actual time=38405.503..1455095.550 rows=1972 loops=1)
                     Buffers: shared hit=5057254 read=297584
                     ->  Nested Loop  (cost=0.06..159.72 rows=1 width=23) (actual time=38374.244..1446702.652 rows=1972 loops=1)
                           Buffers: shared hit=5052315 read=296581
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=53.918..1109727.291 rows=1038393 loops=1)
                                 Buffers: shared hit=960430 read=227677
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=40.311..5680.725 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=21.455..21.457 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.825..5614.256 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.435..26.360 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960427 read=216018
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ '%Bert%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091885 read=68904
                     ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.01 rows=1 width=4) (actual time=4.252..4.252 rows=1 loops=1972)
                           Index Cond: (id = ci.movie_id)
                           Heap Fetches: 0
                           Buffers: shared hit=4939 read=1003
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=9.010..10.812 rows=6 loops=1972)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=6074 read=3270
         ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..0.01 rows=1 width=4) (actual time=0.801..0.801 rows=1 loops=11538)
               Index Cond: (id = mc.company_id)
               Heap Fetches: 0
               Buffers: shared hit=34045 read=605
 Planning Time: 5721.848 ms
 Execution Time: 1485738.002 ms
(41 rows)


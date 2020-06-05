                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=159.63..159.63 rows=1 width=32) (actual time=1601312.958..1601312.958 rows=1 loops=1)
   Buffers: shared hit=5107587 read=304732
   ->  Nested Loop  (cost=0.10..159.63 rows=2 width=15) (actual time=39166.419..1601289.325 rows=11538 loops=1)
         Buffers: shared hit=5107587 read=304732
         ->  Nested Loop  (cost=0.08..159.60 rows=2 width=19) (actual time=39160.501..1575497.714 rows=11538 loops=1)
               Buffers: shared hit=5063628 read=302504
               ->  Nested Loop  (cost=0.07..159.58 rows=1 width=27) (actual time=39116.259..1549669.129 rows=1972 loops=1)
                     Buffers: shared hit=5057554 read=299234
                     ->  Nested Loop  (cost=0.06..159.57 rows=1 width=23) (actual time=39073.552..1523207.249 rows=1972 loops=1)
                           Buffers: shared hit=5052315 read=296581
                           ->  Nested Loop  (cost=0.04..137.43 rows=1130 width=12) (actual time=86.600..1184663.578 rows=1038393 loops=1)
                                 Buffers: shared hit=960430 read=227677
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=65.659..6534.741 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=55.306..55.307 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=10.307..6428.766 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=3.221..28.129 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960427 read=216018
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.324..0.324 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ '%Bert%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091885 read=68904
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=13.413..13.413 rows=1 loops=1972)
                           Index Cond: (id = ci.movie_id)
                           Buffers: shared hit=5239 read=2653
               ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=11.228..13.085 rows=6 loops=1972)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=6074 read=3270
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=2.232..2.232 rows=1 loops=11538)
               Index Cond: (id = mc.company_id)
               Buffers: shared hit=43959 read=2228
 Planning Time: 5398.753 ms
 Execution Time: 1601313.385 ms
(39 rows)


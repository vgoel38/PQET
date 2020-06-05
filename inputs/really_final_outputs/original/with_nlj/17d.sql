 Aggregate  (cost=159.79..159.79 rows=1 width=32) (actual time=1510659.998..1510659.999 rows=1 loops=1)
   Buffers: shared hit=5107561 read=304758
   ->  Nested Loop  (cost=0.10..159.79 rows=2 width=15) (actual time=39108.733..1510635.904 rows=11538 loops=1)
         Buffers: shared hit=5107561 read=304758
         ->  Nested Loop  (cost=0.08..159.76 rows=2 width=19) (actual time=39052.815..1485859.039 rows=11538 loops=1)
               Buffers: shared hit=5063607 read=302525
               ->  Nested Loop  (cost=0.07..159.74 rows=1 width=27) (actual time=39016.931..1467206.646 rows=1972 loops=1)
                     Buffers: shared hit=5057537 read=299251
                     ->  Nested Loop  (cost=0.06..159.72 rows=1 width=23) (actual time=38965.866..1441694.329 rows=1972 loops=1)
                           Buffers: shared hit=5052300 read=296596
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=112.218..1105284.700 rows=1038393 loops=1)
                                 Buffers: shared hit=960419 read=227688
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.644..5698.574 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.967..30.968 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.654..5621.548 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.448..26.253 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960419 read=216026
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.322..0.322 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ '%Bert%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091881 read=68908
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=12.932..12.932 rows=1 loops=1972)
                           Index Cond: (id = ci.movie_id)
                           Buffers: shared hit=5237 read=2655
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=7.932..9.446 rows=6 loops=1972)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=6070 read=3274
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=2.144..2.144 rows=1 loops=11538)
               Index Cond: (id = mc.company_id)
               Buffers: shared hit=43954 read=2233
 Planning Time: 3747.646 ms
 Execution Time: 1510679.101 ms

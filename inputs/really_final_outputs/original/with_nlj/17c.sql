 Aggregate  (cost=159.78..159.78 rows=1 width=64) (actual time=1464221.047..1464221.048 rows=1 loops=1)
   Buffers: shared hit=5066949 read=298529
   ->  Nested Loop  (cost=0.10..159.77 rows=1 width=15) (actual time=76262.607..1464215.246 rows=1918 loops=1)
         Buffers: shared hit=5066949 read=298529
         ->  Nested Loop  (cost=0.08..159.76 rows=1 width=27) (actual time=76203.167..1457443.114 rows=1918 loops=1)
               Buffers: shared hit=5059640 read=298153
               ->  Nested Loop  (cost=0.07..159.74 rows=1 width=31) (actual time=76143.665..1444957.850 rows=1918 loops=1)
                     Buffers: shared hit=5052971 read=297132
                     ->  Nested Loop  (cost=0.06..159.72 rows=1 width=23) (actual time=76104.936..1439241.432 rows=250 loops=1)
                           Buffers: shared hit=5052320 read=296596
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=112.257..1103115.359 rows=1038393 loops=1)
                                 Buffers: shared hit=960419 read=227688
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.564..5736.457 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.966..30.968 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.575..5659.878 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.433..26.201 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960419 read=216026
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.322..0.322 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091901 read=68908
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=19.753..22.850 rows=8 loops=250)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=651 read=536
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=6.505..6.505 rows=1 loops=1918)
                     Index Cond: (id = mc.company_id)
                     Buffers: shared hit=6669 read=1021
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=3.526..3.526 rows=1 loops=1918)
               Index Cond: (id = ci.movie_id)
               Buffers: shared hit=7309 read=376
 Planning Time: 3647.300 ms
 Execution Time: 1464239.030 ms

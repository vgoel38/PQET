                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=159.77..159.77 rows=1 width=64) (actual time=1458975.081..1458975.081 rows=1 loops=1)
   Buffers: shared hit=5064034 read=297611
   ->  Nested Loop  (cost=0.10..159.77 rows=1 width=15) (actual time=75920.085..1458971.005 rows=1918 loops=1)
         Buffers: shared hit=5064034 read=297611
         ->  Nested Loop  (cost=0.08..159.75 rows=1 width=27) (actual time=75908.879..1456382.723 rows=1918 loops=1)
               Buffers: shared hit=5058458 read=297418
               ->  Nested Loop  (cost=0.07..159.74 rows=1 width=31) (actual time=75885.371..1452608.939 rows=1918 loops=1)
                     Buffers: shared hit=5052988 read=297115
                     ->  Nested Loop  (cost=0.06..159.72 rows=1 width=23) (actual time=75854.990..1445427.449 rows=250 loops=1)
                           Buffers: shared hit=5052335 read=296581
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=45.575..1108902.364 rows=1038393 loops=1)
                                 Buffers: shared hit=960430 read=227677
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=31.974..5732.981 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=13.069..13.072 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.872..5675.088 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.453..26.339 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960427 read=216018
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.322..0.322 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091905 read=68904
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=19.377..28.712 rows=8 loops=250)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=653 read=534
               ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..0.01 rows=1 width=4) (actual time=1.964..1.964 rows=1 loops=1918)
                     Index Cond: (id = mc.company_id)
                     Heap Fetches: 0
                     Buffers: shared hit=5470 read=303
         ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.01 rows=1 width=4) (actual time=1.347..1.347 rows=1 loops=1918)
               Index Cond: (id = ci.movie_id)
               Heap Fetches: 0
               Buffers: shared hit=5576 read=193
 Planning Time: 5925.051 ms
 Execution Time: 1458998.484 ms
(41 rows)


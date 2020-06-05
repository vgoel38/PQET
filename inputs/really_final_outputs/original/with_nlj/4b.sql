 Aggregate  (cost=800.57..800.57 rows=1 width=64) (actual time=8687.601..8687.602 rows=1 loops=1)
   Buffers: shared hit=4715 read=9513
   ->  Nested Loop  (cost=0.04..800.57 rows=1 width=23) (actual time=4277.517..8687.502 rows=6 loops=1)
         Buffers: shared hit=4715 read=9513
         ->  Nested Loop  (cost=0.03..799.07 rows=105 width=27) (actual time=316.001..7894.817 rows=1070 loops=1)
               Buffers: shared hit=862 read=9075
               ->  Nested Loop  (cost=0.01..795.73 rows=11 width=31) (actual time=57.492..6750.010 rows=72 loops=1)
                     Buffers: shared hit=729 read=8948
                     ->  Nested Loop  (cost=0.00..468.90 rows=69 width=10) (actual time=20.427..2036.776 rows=305 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 7488
                           Buffers: shared read=8454
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.816..2.824 rows=1 loops=1)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=7778 width=14) (actual time=9.680..2030.637 rows=7793 loops=1)
                                 Filter: (info > '9.0'::text)
                                 Rows Removed by Filter: 1372242
                                 Buffers: shared read=8453
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..4.74 rows=1 width=21) (actual time=15.447..15.447 rows=0 loops=305)
                           Index Cond: (id = mi_idx.movie_id)
                           Filter: (production_year > 2010)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=729 read=494
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.30 rows=11 width=8) (actual time=15.581..15.882 rows=15 loops=72)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=133 read=127
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.739..0.739 rows=0 loops=1070)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword ~~ '%sequel%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=3853 read=438
 Planning Time: 2026.305 ms
 Execution Time: 8710.431 ms

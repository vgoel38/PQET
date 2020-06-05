 Aggregate  (cost=2782.26..2782.26 rows=1 width=64) (actual time=29977.004..29977.004 rows=1 loops=1)
   Buffers: shared hit=15365144 read=53012
   ->  Nested Loop  (cost=0.04..2782.26 rows=26 width=23) (actual time=163.404..29957.652 rows=4700 loops=1)
         Join Filter: (mi_idx.movie_id = t.id)
         Buffers: shared hit=15365144 read=53012
         ->  Nested Loop  (cost=0.03..2780.68 rows=37 width=14) (actual time=96.787..20937.077 rows=8092 loops=1)
               Buffers: shared hit=15340173 read=45581
               ->  Nested Loop  (cost=0.01..1714.53 rows=74654 width=18) (actual time=50.926..6853.313 rows=3435922 loops=1)
                     Buffers: shared hit=1570910 read=44142
                     ->  Nested Loop  (cost=0.00..593.31 rows=7570 width=10) (actual time=11.934..797.441 rows=448969 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 406443
                           Buffers: shared read=8454
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.790..2.793 rows=1 loops=1)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=855391 width=14) (actual time=9.134..595.860 rows=855412 loops=1)
                                 Filter: (info > '2.0'::text)
                                 Rows Removed by Filter: 524623
                                 Buffers: shared read=8453
                     ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.15 rows=11 width=8) (actual time=0.006..0.011 rows=8 loops=448969)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Buffers: shared hit=1570910 read=35688
               ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=3435922)
                     Index Cond: (id = mk.keyword_id)
                     Filter: (keyword ~~ '%sequel%'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=13769263 read=1439
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.114..1.114 rows=1 loops=8092)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 1990)
               Rows Removed by Filter: 0
               Buffers: shared hit=24971 read=7431
 Planning Time: 2033.168 ms
 Execution Time: 30002.378 ms

 Aggregate  (cost=2266.54..2266.54 rows=1 width=64) (actual time=26483.441..26483.441 rows=1 loops=1)
   Buffers: shared hit=4506070 read=79280
   ->  Nested Loop  (cost=0.04..2266.54 rows=9 width=23) (actual time=4622.250..26456.137 rows=740 loops=1)
         Buffers: shared hit=4506070 read=79280
         ->  Nested Loop  (cost=0.03..2006.02 rows=18242 width=27) (actual time=75.941..22147.081 rows=697651 loops=1)
               Buffers: shared hit=1710536 read=77841
               ->  Nested Loop  (cost=0.01..1769.95 rows=1850 width=31) (actual time=43.005..17579.111 rows=106021 loops=1)
                     Buffers: shared hit=1371363 read=50698
                     ->  Nested Loop  (cost=0.00..544.33 rows=4617 width=10) (actual time=11.953..697.996 rows=352990 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 168733
                           Buffers: shared read=8454
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.792..2.796 rows=1 loops=1)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=521708 width=14) (actual time=9.149..558.430 rows=521723 loops=1)
                                 Filter: (info > '5.0'::text)
                                 Rows Removed by Filter: 858312
                                 Buffers: shared read=8453
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.27 rows=1 width=21) (actual time=0.047..0.047 rows=0 loops=352990)
                           Index Cond: (id = mi_idx.movie_id)
                           Filter: (production_year > 2005)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=1371363 read=42244
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.13 rows=11 width=8) (actual time=0.034..0.041 rows=7 loops=106021)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=339173 read=27143
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.006..0.006 rows=0 loops=697651)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword ~~ '%sequel%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2795534 read=1439
 Planning Time: 2043.798 ms
 Execution Time: 26498.181 ms

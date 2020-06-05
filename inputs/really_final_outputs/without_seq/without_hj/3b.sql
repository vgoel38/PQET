                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9538.37..9538.37 rows=1 width=32) (actual time=42637.057..42637.057 rows=1 loops=1)
   Buffers: shared hit=177148 read=20659
   ->  Nested Loop  (cost=0.05..9538.37 rows=2 width=17) (actual time=5576.817..42636.948 rows=5 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=177148 read=20659
         ->  Nested Loop  (cost=0.04..9484.79 rows=350 width=25) (actual time=1303.808..22646.091 rows=405 loops=1)
               Buffers: shared hit=174682 read=16912
               ->  Nested Loop  (cost=0.03..9388.42 rows=2259 width=4) (actual time=46.783..6325.991 rows=12951 loops=1)
                     Buffers: shared hit=132504 read=7213
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=20.685..509.580 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=11.266..193.495 rows=432 loops=30)
                           Index Cond: (keyword_id = k.id)
                           Buffers: shared hit=1327 read=5781
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.258..1.258 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2010)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42178 read=9699
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=49.163..49.357 rows=0 loops=405)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 63
               Buffers: shared hit=2466 read=3747
 Planning Time: 2212.073 ms
 Execution Time: 42657.015 ms
(28 rows)


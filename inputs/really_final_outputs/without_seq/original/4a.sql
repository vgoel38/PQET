                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9446.55..9446.55 rows=1 width=64) (actual time=23186.259..23186.259 rows=1 loops=1)
   Buffers: shared hit=191908 read=18431
   ->  Nested Loop  (cost=0.06..9446.55 rows=9 width=23) (actual time=1549.358..23163.300 rows=740 loops=1)
         Join Filter: (mi_idx.movie_id = t.id)
         Buffers: shared hit=191908 read=18431
         ->  Nested Loop  (cost=0.04..9445.57 rows=23 width=14) (actual time=71.981..11154.764 rows=5820 loops=1)
               Join Filter: (mi_idx.info_type_id = it.id)
               Rows Removed by Join Filter: 2609
               Buffers: shared hit=174617 read=12411
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.042..0.044 rows=1 loops=1)
                     Index Cond: ((info)::text = 'rating'::text)
                     Buffers: shared hit=1 read=1
               ->  Nested Loop  (cost=0.04..9439.06 rows=2569 width=18) (actual time=71.933..11148.153 rows=8429 loops=1)
                     Buffers: shared hit=174616 read=12410
                     ->  Nested Loop  (cost=0.03..9388.42 rows=2259 width=4) (actual time=71.782..6505.091 rows=12951 loops=1)
                           Buffers: shared hit=132504 read=7213
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=45.864..517.552 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared hit=131177 read=1432
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=10.235..199.259 rows=432 loops=30)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=1327 read=5781
                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=0.353..0.356 rows=1 loops=12951)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info > '5.0'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=42112 read=5197
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.062..2.062 rows=0 loops=5820)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 2005)
               Rows Removed by Filter: 1
               Buffers: shared hit=17291 read=6020
 Planning Time: 2305.051 ms
 Execution Time: 23221.539 ms
(35 rows)


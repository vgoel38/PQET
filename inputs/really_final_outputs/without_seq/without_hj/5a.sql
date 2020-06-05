                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17470.52..17470.52 rows=1 width=32) (actual time=866.724..866.724 rows=1 loops=1)
   Buffers: shared hit=2 read=11264
   ->  Nested Loop  (cost=0.05..17470.51 rows=89 width=17) (actual time=866.684..866.684 rows=0 loops=1)
         Buffers: shared hit=2 read=11264
         ->  Nested Loop  (cost=0.04..17470.10 rows=89 width=21) (actual time=866.683..866.683 rows=0 loops=1)
               Buffers: shared hit=2 read=11264
               ->  Nested Loop  (cost=0.03..17206.10 rows=419 width=25) (actual time=866.682..866.682 rows=0 loops=1)
                     Buffers: shared hit=2 read=11264
                     ->  Nested Loop  (cost=0.02..11701.92 rows=1047 width=4) (actual time=866.682..866.682 rows=0 loops=1)
                           Buffers: shared hit=2 read=11264
                           ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.030..0.032 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'production companies'::text)
                                 Buffers: shared hit=1 read=1
                           ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..11695.65 rows=2093 width=8) (actual time=866.642..866.642 rows=0 loops=1)
                                 Index Cond: (company_type_id = ct.id)
                                 Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                                 Rows Removed by Filter: 1334883
                                 Buffers: shared hit=1 read=11263
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..5.26 rows=1 width=21) (never executed)
                           Index Cond: (id = mc.movie_id)
                           Filter: (production_year > 2005)
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.63 rows=1 width=8) (never executed)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
         ->  Index Only Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (never executed)
               Index Cond: (id = mi.info_type_id)
               Heap Fetches: 0
 Planning Time: 1834.114 ms
 Execution Time: 887.021 ms
(29 rows)


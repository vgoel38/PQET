 Aggregate  (cost=6946.01..6946.01 rows=1 width=32) (actual time=1029.523..1029.524 rows=1 loops=1)
   Buffers: shared read=18790
   ->  Nested Loop  (cost=0.03..6946.01 rows=89 width=17) (actual time=1029.485..1029.485 rows=0 loops=1)
         Join Filter: (mi.info_type_id = it.id)
         Buffers: shared read=18790
         ->  Nested Loop  (cost=0.03..6943.72 rows=89 width=21) (actual time=1029.484..1029.485 rows=0 loops=1)
               Buffers: shared read=18790
               ->  Nested Loop  (cost=0.01..6679.73 rows=419 width=25) (actual time=1029.484..1029.484 rows=0 loops=1)
                     Buffers: shared read=18790
                     ->  Nested Loop  (cost=0.00..1175.55 rows=1047 width=4) (actual time=1029.483..1029.483 rows=0 loops=1)
                           Join Filter: (ct.id = mc.company_type_id)
                           Rows Removed by Join Filter: 24025
                           Buffers: shared read=18790
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=10.967..10.970 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=4187 width=8) (actual time=39.192..1015.801 rows=24025 loops=1)
                                 Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                                 Rows Removed by Filter: 2585104
                                 Buffers: shared read=18789
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..5.26 rows=1 width=21) (never executed)
                           Index Cond: (id = mc.movie_id)
                           Filter: (production_year > 2005)
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.63 rows=1 width=8) (never executed)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
         ->  Materialize  (cost=0.00..0.06 rows=113 width=4) (never executed)
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (never executed)
 Planning Time: 1981.533 ms
 Execution Time: 1070.542 ms

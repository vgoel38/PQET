                                                                     QUERY PLAN                                                                     
----------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1454.37..1454.37 rows=1 width=32) (actual time=908.025..908.026 rows=1 loops=1)
   Buffers: shared read=18790
   ->  Nested Loop  (cost=0.03..1454.37 rows=1 width=17) (actual time=908.018..908.018 rows=0 loops=1)
         Join Filter: (mi.info_type_id = it.id)
         Buffers: shared read=18790
         ->  Nested Loop  (cost=0.03..1454.32 rows=1 width=21) (actual time=908.018..908.018 rows=0 loops=1)
               Buffers: shared read=18790
               ->  Nested Loop  (cost=0.01..1451.12 rows=2 width=25) (actual time=908.017..908.017 rows=0 loops=1)
                     Buffers: shared read=18790
                     ->  Nested Loop  (cost=0.00..1377.51 rows=12 width=4) (actual time=908.017..908.017 rows=0 loops=1)
                           Join Filter: (ct.id = mc.company_type_id)
                           Rows Removed by Join Filter: 1418
                           Buffers: shared read=18790
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.061..0.063 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=46 width=8) (actual time=27.776..907.701 rows=1418 loops=1)
                                 Filter: ((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))
                                 Rows Removed by Filter: 2607711
                                 Buffers: shared read=18789
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..6.13 rows=1 width=21) (never executed)
                           Index Cond: (id = mc.movie_id)
                           Filter: (production_year > 2010)
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..1.60 rows=1 width=8) (never executed)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{USA,America}'::text[]))
         ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (never executed)
 Planning Time: 1671.002 ms
 Execution Time: 908.357 ms
(30 rows)


                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=11879.87..11879.87 rows=1 width=32) (actual time=920.154..920.155 rows=1 loops=1)
   Buffers: shared hit=2 read=11264
   ->  Nested Loop  (cost=0.05..11879.87 rows=1 width=17) (actual time=920.112..920.112 rows=0 loops=1)
         Buffers: shared hit=2 read=11264
         ->  Nested Loop  (cost=0.04..11879.87 rows=1 width=21) (actual time=920.112..920.112 rows=0 loops=1)
               Buffers: shared hit=2 read=11264
               ->  Nested Loop  (cost=0.03..11876.67 rows=2 width=25) (actual time=920.111..920.111 rows=0 loops=1)
                     Buffers: shared hit=2 read=11264
                     ->  Nested Loop  (cost=0.02..11803.06 rows=12 width=4) (actual time=920.110..920.111 rows=0 loops=1)
                           Buffers: shared hit=2 read=11264
                           ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.030..0.032 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'production companies'::text)
                                 Buffers: shared hit=1 read=1
                           ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..11796.93 rows=23 width=8) (actual time=920.072..920.072 rows=0 loops=1)
                                 Index Cond: (company_type_id = ct.id)
                                 Filter: ((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))
                                 Rows Removed by Filter: 1334883
                                 Buffers: shared hit=1 read=11263
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..6.13 rows=1 width=21) (never executed)
                           Index Cond: (id = mc.movie_id)
                           Filter: (production_year > 2010)
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..1.60 rows=1 width=8) (never executed)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{USA,America}'::text[]))
         ->  Index Only Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (never executed)
               Index Cond: (id = mi.info_type_id)
               Heap Fetches: 0
 Planning Time: 1901.591 ms
 Execution Time: 939.677 ms
(29 rows)


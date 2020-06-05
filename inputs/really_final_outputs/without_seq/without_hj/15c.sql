                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=119448.41..119448.41 rows=1 width=64) (actual time=103585.182..103585.182 rows=1 loops=1)
   Buffers: shared hit=4291697 read=196961
   ->  Nested Loop  (cost=0.90..119448.41 rows=10 width=59) (actual time=1588.805..103581.654 rows=2271 loops=1)
         Buffers: shared hit=4291697 read=196961
         ->  Nested Loop  (cost=0.89..119448.28 rows=10 width=63) (actual time=1569.406..102514.665 rows=2271 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=4285054 read=196788
               ->  Nested Loop  (cost=0.87..119448.22 rows=1 width=75) (actual time=1529.758..100770.019 rows=284 loops=1)
                     Buffers: shared hit=4284126 read=196622
                     ->  Nested Loop  (cost=0.87..119448.21 rows=1 width=79) (actual time=1507.606..100744.420 rows=284 loops=1)
                           Buffers: shared hit=4283842 read=196621
                           ->  Nested Loop  (cost=0.86..119448.16 rows=3 width=83) (actual time=1502.752..96220.318 rows=400 loops=1)
                                 Buffers: shared hit=4282505 read=196349
                                 ->  Nested Loop  (cost=0.84..119448.10 rows=1 width=71) (actual time=1476.170..92734.472 rows=120 loops=1)
                                       Buffers: shared hit=4282166 read=196110
                                       ->  Nested Loop  (cost=0.84..119445.19 rows=89 width=75) (actual time=1476.146..92733.004 rows=120 loops=1)
                                             Buffers: shared hit=4281926 read=196110
                                             ->  Merge Join  (cost=0.83..26476.18 rows=250059 width=25) (actual time=189.285..16732.518 rows=140974 loops=1)
                                                   Merge Cond: (at.movie_id = t.id)
                                                   Buffers: shared hit=2488151 read=43847
                                                   ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..3081.09 rows=361472 width=4) (actual time=5.890..163.036 rows=361472 loops=1)
                                                         Heap Fetches: 0
                                                         Buffers: shared hit=4 read=987
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.080..15916.713 rows=1748412 loops=1)
                                                         Filter: (production_year > 1990)
                                                         Rows Removed by Filter: 777297
                                                         Buffers: shared hit=2488147 read=42860
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=50) (actual time=0.538..0.538 rows=0 loops=140974)
                                                   Index Cond: (movie_id = t.id)
                                                   Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                   Rows Removed by Filter: 38
                                                   Buffers: shared hit=1793775 read=152263
                                       ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=120)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Buffers: shared hit=240
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=24.258..29.039 rows=3 loops=120)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=339 read=239
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=11.305..11.305 rows=1 loops=400)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=1337 read=272
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.085..0.085 rows=1 loops=284)
                           Index Cond: (id = mc.company_type_id)
                           Heap Fetches: 0
                           Buffers: shared hit=284 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=6.122..6.132 rows=8 loops=284)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=928 read=166
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.468..0.468 rows=1 loops=2271)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=6643 read=173
 Planning Time: 9163.247 ms
 Execution Time: 103620.212 ms
(57 rows)


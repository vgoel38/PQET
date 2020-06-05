                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=123899.44..123899.44 rows=1 width=64) (actual time=127569.934..127569.935 rows=1 loops=1)
   Buffers: shared hit=4683380 read=205034
   ->  Nested Loop  (cost=2.13..123899.37 rows=414 width=38) (actual time=2730.449..127546.259 rows=11347 loops=1)
         Buffers: shared hit=4683380 read=205034
         ->  Nested Loop  (cost=2.12..123893.76 rows=414 width=42) (actual time=2711.030..125253.232 rows=11347 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=4649597 read=204753
               ->  Nested Loop  (cost=2.11..123891.95 rows=30 width=54) (actual time=2671.397..121028.381 rows=875 loops=1)
                     Buffers: shared hit=4646661 read=204321
                     ->  Nested Loop  (cost=2.10..123891.82 rows=30 width=58) (actual time=2649.247..120996.680 rows=875 loops=1)
                           Buffers: shared hit=4645786 read=204320
                           ->  Nested Loop  (cost=2.09..123890.32 rows=84 width=62) (actual time=2644.393..107006.230 rows=2099 loops=1)
                                 Buffers: shared hit=4638403 read=203295
                                 ->  Nested Loop  (cost=2.08..123888.72 rows=27 width=50) (actual time=947.927..98211.503 rows=584 loops=1)
                                       Join Filter: (mi.info_type_id = it.id)
                                       Rows Removed by Join Filter: 78
                                       Buffers: shared hit=4636696 read=202300
                                       ->  Nested Loop  (cost=2.07..123881.92 rows=3031 width=54) (actual time=947.840..98208.911 rows=662 loops=1)
                                             Buffers: shared hit=4636695 read=202299
                                             ->  Merge Join  (cost=2.06..31262.37 rows=250059 width=46) (actual time=397.659..23735.446 rows=140974 loops=1)
                                                   Merge Cond: (at.movie_id = t.id)
                                                   Buffers: shared hit=2842920 read=50036
                                                   ->  Index Scan using movie_id_aka_title on aka_title at  (cost=0.01..7867.28 rows=361472 width=25) (actual time=0.027..6524.576 rows=361472 loops=1)
                                                         Buffers: shared hit=354773 read=7176
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.073..16496.685 rows=1748412 loops=1)
                                                         Filter: (production_year > 1990)
                                                         Rows Removed by Filter: 777297
                                                         Buffers: shared hit=2488147 read=42860
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=8) (actual time=0.525..0.527 rows=0 loops=140974)
                                                   Index Cond: (movie_id = t.id)
                                                   Filter: (note ~~ '%internet%'::text)
                                                   Rows Removed by Filter: 38
                                                   Buffers: shared hit=1793775 read=152263
                                       ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=662)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.064..0.070 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'release dates'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=13.035..15.051 rows=4 loops=584)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=1707 read=995
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=6.661..6.661 rows=0 loops=2099)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=7383 read=1025
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.031..0.031 rows=1 loops=875)
                           Index Cond: (id = mc.company_type_id)
                           Heap Fetches: 0
                           Buffers: shared hit=875 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=4.802..4.815 rows=13 loops=875)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=2936 read=432
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.200..0.200 rows=1 loops=11347)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=33783 read=281
 Planning Time: 9150.766 ms
 Execution Time: 127592.542 ms
(59 rows)


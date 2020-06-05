                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=123899.44..123899.44 rows=1 width=64) (actual time=126872.243..126872.244 rows=1 loops=1)
   Buffers: shared hit=4683380 read=205034
   ->  Nested Loop  (cost=2.13..123899.37 rows=414 width=38) (actual time=2938.749..126848.818 rows=11347 loops=1)
         Buffers: shared hit=4683380 read=205034
         ->  Nested Loop  (cost=2.12..123893.76 rows=414 width=42) (actual time=2919.337..124762.279 rows=11347 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=4649597 read=204753
               ->  Nested Loop  (cost=2.11..123891.95 rows=30 width=54) (actual time=2879.701..120436.168 rows=875 loops=1)
                     Buffers: shared hit=4646661 read=204321
                     ->  Nested Loop  (cost=2.10..123891.82 rows=30 width=58) (actual time=2857.560..120404.364 rows=875 loops=1)
                           Buffers: shared hit=4645786 read=204320
                           ->  Nested Loop  (cost=2.09..123890.32 rows=84 width=62) (actual time=2852.694..106442.795 rows=2099 loops=1)
                                 Buffers: shared hit=4638403 read=203295
                                 ->  Nested Loop  (cost=2.08..123888.72 rows=27 width=50) (actual time=1163.568..97625.394 rows=584 loops=1)
                                       Join Filter: (mi.info_type_id = it.id)
                                       Rows Removed by Join Filter: 78
                                       Buffers: shared hit=4636696 read=202300
                                       ->  Nested Loop  (cost=2.07..123881.92 rows=3031 width=54) (actual time=1163.494..97622.832 rows=662 loops=1)
                                             Buffers: shared hit=4636695 read=202299
                                             ->  Merge Join  (cost=2.06..31262.37 rows=250059 width=46) (actual time=414.308..23607.368 rows=140974 loops=1)
                                                   Merge Cond: (at.movie_id = t.id)
                                                   Buffers: shared hit=2842920 read=50036
                                                   ->  Index Scan using movie_id_aka_title on aka_title at  (cost=0.01..7867.28 rows=361472 width=25) (actual time=0.028..6487.158 rows=361472 loops=1)
                                                         Buffers: shared hit=354773 read=7176
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.051..16381.882 rows=1748412 loops=1)
                                                         Filter: (production_year > 1990)
                                                         Rows Removed by Filter: 777297
                                                         Buffers: shared hit=2488147 read=42860
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=8) (actual time=0.522..0.524 rows=0 loops=140974)
                                                   Index Cond: (movie_id = t.id)
                                                   Filter: (note ~~ '%internet%'::text)
                                                   Rows Removed by Filter: 38
                                                   Buffers: shared hit=1793775 read=152263
                                       ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=662)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.052..0.056 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'release dates'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=13.046..15.089 rows=4 loops=584)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=1707 read=995
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=6.648..6.648 rows=0 loops=2099)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=7383 read=1025
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=875)
                           Index Cond: (id = mc.company_type_id)
                           Heap Fetches: 0
                           Buffers: shared hit=875 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=4.918..4.931 rows=13 loops=875)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=2936 read=432
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.182..0.182 rows=1 loops=11347)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=33783 read=281
 Planning Time: 9300.130 ms
 Execution Time: 126920.365 ms
(59 rows)


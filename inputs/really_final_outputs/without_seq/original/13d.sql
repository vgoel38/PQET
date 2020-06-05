                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13444.46..13444.46 rows=1 width=96) (actual time=113036.048..113036.049 rows=1 loops=1)
   Buffers: shared hit=6560789 read=203853
   ->  Nested Loop  (cost=6.20..13444.45 rows=47 width=42) (actual time=17631.844..112453.029 rows=670390 loops=1)
         Join Filter: (mi.info_type_id = it2.id)
         Rows Removed by Join Filter: 3646194
         Buffers: shared hit=6560789 read=203853
         ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.037..0.039 rows=1 loops=1)
               Index Cond: ((info)::text = 'release dates'::text)
               Buffers: shared hit=1 read=1
         ->  Nested Loop  (cost=6.20..13437.54 rows=5352 width=46) (actual time=17603.468..111322.162 rows=4316584 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=6560788 read=203852
               ->  Nested Loop  (cost=6.19..13340.98 rows=380 width=54) (actual time=17561.524..54462.511 rows=87293 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 161261
                     Buffers: shared hit=5289092 read=81664
                     ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.037..0.039 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'movie'::text)
                           Buffers: shared hit=1 read=1
                     ->  Nested Loop  (cost=6.18..13334.46 rows=2659 width=58) (actual time=68.436..54353.655 rows=248554 loops=1)
                           Buffers: shared hit=5289091 read=81663
                           ->  Nested Loop  (cost=6.17..13164.56 rows=2659 width=33) (actual time=63.928..25961.282 rows=248554 loops=1)
                                 Buffers: shared hit=4334452 read=41436
                                 ->  Nested Loop  (cost=6.16..13033.36 rows=7365 width=18) (actual time=23.759..9888.310 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996926 read=37601
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                                       ->  Nested Loop  (cost=6.15..13022.91 rows=29462 width=22) (actual time=0.202..9416.924 rows=1354883 loops=1)
                                             Buffers: shared hit=1996925 read=37600
                                             ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=0.177..3299.410 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=13576 read=12220
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.032..2555.947 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.037..0.038 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=2
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.007..0.011 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.026..0.026 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.113..0.113 rows=1 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=954639 read=40227
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=0.073..0.621 rows=49 loops=87293)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=1271696 read=122188
 Planning Time: 5037.581 ms
 Execution Time: 113055.316 ms
(59 rows)


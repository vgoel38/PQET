                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13642.89..13642.89 rows=1 width=96) (actual time=112614.021..112614.021 rows=1 loops=1)
   Buffers: shared hit=6560786 read=203853
   ->  Nested Loop  (cost=0.08..13642.88 rows=47 width=42) (actual time=18100.764..111981.849 rows=670390 loops=1)
         Join Filter: (mi.info_type_id = it2.id)
         Rows Removed by Join Filter: 3646194
         Buffers: shared hit=6560786 read=203853
         ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.035..0.037 rows=1 loops=1)
               Index Cond: ((info)::text = 'release dates'::text)
               Buffers: shared hit=1 read=1
         ->  Nested Loop  (cost=0.08..13635.97 rows=5352 width=46) (actual time=18072.381..110849.232 rows=4316584 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=6560785 read=203852
               ->  Nested Loop  (cost=0.07..13539.41 rows=380 width=54) (actual time=18041.190..54426.794 rows=87293 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 161261
                     Buffers: shared hit=5289089 read=81664
                     ->  Nested Loop  (cost=0.06..13532.69 rows=2659 width=58) (actual time=70.796..54157.964 rows=248554 loops=1)
                           Buffers: shared hit=5289088 read=81663
                           ->  Nested Loop  (cost=0.05..13362.78 rows=2659 width=33) (actual time=66.293..26425.218 rows=248554 loops=1)
                                 Buffers: shared hit=4334449 read=41436
                                 ->  Nested Loop  (cost=0.04..13231.58 rows=7365 width=18) (actual time=26.124..11069.766 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996923 read=37601
                                       ->  Nested Loop  (cost=0.03..13218.84 rows=29462 width=22) (actual time=0.115..9839.339 rows=1354883 loops=1)
                                             Buffers: shared hit=1996922 read=37600
                                             ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.091..3927.542 rows=459925 loops=1)
                                                   Join Filter: (it.id = miidx.info_type_id)
                                                   Rows Removed by Join Filter: 920110
                                                   Buffers: shared hit=13573 read=12220
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.033..2590.274 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                                         Buffers: shared hit=2
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=2
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.006..0.011 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                       ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1354883)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.037..0.038 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'production companies'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.025..0.025 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.110..0.110 rows=1 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=954639 read=40227
                     ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=248554)
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.052..0.054 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'movie'::text)
                                 Buffers: shared hit=1 read=1
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=0.077..0.617 rows=49 loops=87293)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=1271696 read=122188
 Planning Time: 4970.478 ms
 Execution Time: 112631.393 ms
(63 rows)


                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1749.69..1749.69 rows=1 width=96) (actual time=112949.460..112949.460 rows=1 loops=1)
   Buffers: shared hit=6547192 read=200108
   ->  Nested Loop  (cost=0.10..1749.68 rows=47 width=42) (actual time=19181.752..112358.133 rows=670390 loops=1)
         Join Filter: (mi.info_type_id = it2.id)
         Rows Removed by Join Filter: 3646194
         Buffers: shared hit=6547192 read=200108
         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=2.811..2.849 rows=1 loops=1)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.10..1748.84 rows=5352 width=46) (actual time=19150.610..111229.953 rows=4316584 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=6547192 read=200107
               ->  Nested Loop  (cost=0.09..1652.28 rows=380 width=54) (actual time=19109.464..55281.323 rows=87293 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 161261
                     Buffers: shared hit=5275499 read=77916
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=6.670..6.675 rows=1 loops=1)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.09..1651.86 rows=2659 width=58) (actual time=150.713..55169.320 rows=248554 loops=1)
                           Buffers: shared hit=5275499 read=77915
                           ->  Nested Loop  (cost=0.07..1481.96 rows=2659 width=33) (actual time=104.534..24257.007 rows=248554 loops=1)
                                 Buffers: shared hit=4320864 read=37684
                                 ->  Nested Loop  (cost=0.06..1350.76 rows=7365 width=18) (actual time=56.033..9335.133 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1983345 read=33842
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.122..0.125 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.06..1346.40 rows=29462 width=22) (actual time=50.061..8871.813 rows=1354883 loops=1)
                                             Buffers: shared hit=1983345 read=33841
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=10.832..1107.707 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=4 read=8453
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=10.676..379.950 rows=1380035 loops=1)
                                                         Buffers: shared read=8453
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.068..0.068 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.053..0.059 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.010..0.015 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983341 read=25388
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.025..0.025 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337519 read=3842
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.123..0.123 rows=1 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=954635 read=40231
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=0.097..0.611 rows=49 loops=87293)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=1271693 read=122191
 Planning Time: 4483.527 ms
 Execution Time: 113064.471 ms
(63 rows)


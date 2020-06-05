                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1749.69..1749.69 rows=1 width=96) (actual time=119183.270..119183.270 rows=1 loops=1)
   Buffers: shared hit=6547219 read=200081
   ->  Nested Loop  (cost=0.10..1749.68 rows=47 width=42) (actual time=19059.078..118593.102 rows=670390 loops=1)
         Join Filter: (mi.info_type_id = it2.id)
         Rows Removed by Join Filter: 3646194
         Buffers: shared hit=6547219 read=200081
         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.046..0.064 rows=1 loops=1)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 112
               Buffers: shared hit=1
         ->  Nested Loop  (cost=0.10..1748.84 rows=5362 width=46) (actual time=19030.697..117468.642 rows=4316584 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=6547218 read=200081
               ->  Nested Loop  (cost=0.09..1652.28 rows=380 width=54) (actual time=18981.181..57064.166 rows=87293 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 161261
                     Buffers: shared hit=5275522 read=77893
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.009 rows=1 loops=1)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.09..1651.86 rows=2659 width=58) (actual time=120.798..56957.546 rows=248554 loops=1)
                           Buffers: shared hit=5275521 read=77893
                           ->  Nested Loop  (cost=0.07..1481.96 rows=2659 width=33) (actual time=66.276..25367.203 rows=248554 loops=1)
                                 Buffers: shared hit=4320882 read=37666
                                 ->  Nested Loop  (cost=0.06..1350.76 rows=7365 width=18) (actual time=26.098..9865.017 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1983356 read=33831
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.06..1346.40 rows=29462 width=22) (actual time=0.172..9393.580 rows=1354883 loops=1)
                                             Buffers: shared hit=1983355 read=33831
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.144..1149.658 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=6 read=8451
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.013..396.629 rows=1380035 loops=1)
                                                         Buffers: shared hit=2 read=8451
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.063..0.063 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.044..0.049 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.011..0.016 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.026..0.026 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.126..0.126 rows=1 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=954639 read=40227
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=0.110..0.662 rows=49 loops=87293)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=1271696 read=122188
 Planning Time: 4744.574 ms
 Execution Time: 119251.557 ms
(63 rows)


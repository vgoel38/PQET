                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1652.82..1652.82 rows=1 width=96) (actual time=36428.739..36428.739 rows=1 loops=1)
   Buffers: shared hit=5276653 read=78300
   ->  Nested Loop  (cost=0.10..1652.82 rows=1 width=42) (actual time=18387.225..36428.038 rows=372 loops=1)
         Join Filter: (mi.info_type_id = it2.id)
         Rows Removed by Join Filter: 1750
         Buffers: shared hit=5276653 read=78300
         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.055..0.068 rows=1 loops=1)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 112
               Buffers: shared hit=1
         ->  Nested Loop  (cost=0.10..1652.77 rows=5 width=46) (actual time=18380.967..36426.836 rows=2122 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5276652 read=78300
               ->  Nested Loop  (cost=0.09..1652.51 rows=1 width=54) (actual time=18332.581..32696.454 rows=61 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 151
                     Buffers: shared hit=5276157 read=77896
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.013 rows=1 loops=1)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.09..1652.48 rows=2 width=58) (actual time=448.594..32696.261 rows=212 loops=1)
                           Buffers: shared hit=5276156 read=77896
                           ->  Nested Loop  (cost=0.07..1481.96 rows=2659 width=33) (actual time=63.938..14736.115 rows=248554 loops=1)
                                 Buffers: shared hit=4320882 read=37666
                                 ->  Nested Loop  (cost=0.06..1350.76 rows=7365 width=18) (actual time=23.772..6630.986 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1983356 read=33831
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.06..1346.40 rows=29462 width=22) (actual time=0.175..6303.220 rows=1354883 loops=1)
                                             Buffers: shared hit=1983355 read=33831
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.149..803.093 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=6 read=8451
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.010..295.348 rows=1380035 loops=1)
                                                         Buffers: shared hit=2 read=8451
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.064..0.065 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.043..0.048 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.007..0.010 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.013..0.013 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.072..0.072 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955274 read=40230
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=21.795..61.107 rows=35 loops=61)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=495 read=404
 Planning Time: 4788.957 ms
 Execution Time: 36463.277 ms
(65 rows)


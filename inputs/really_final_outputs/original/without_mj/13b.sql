                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1652.82..1652.82 rows=1 width=96) (actual time=36538.944..36538.945 rows=1 loops=1)
   Buffers: shared hit=5276628 read=78325
   ->  Nested Loop  (cost=0.10..1652.82 rows=1 width=42) (actual time=19378.831..36538.291 rows=372 loops=1)
         Join Filter: (mi.info_type_id = it2.id)
         Rows Removed by Join Filter: 1750
         Buffers: shared hit=5276628 read=78325
         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=2.811..2.823 rows=1 loops=1)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.10..1652.77 rows=5 width=46) (actual time=19369.817..36534.410 rows=2122 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5276628 read=78324
               ->  Nested Loop  (cost=0.09..1652.51 rows=1 width=54) (actual time=19288.699..33271.811 rows=61 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 151
                     Buffers: shared hit=5276134 read=77919
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=6.736..6.739 rows=1 loops=1)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.09..1652.48 rows=2 width=58) (actual time=672.422..33264.885 rows=212 loops=1)
                           Buffers: shared hit=5276134 read=77918
                           ->  Nested Loop  (cost=0.07..1481.96 rows=2659 width=33) (actual time=121.137..14694.100 rows=248554 loops=1)
                                 Buffers: shared hit=4320864 read=37684
                                 ->  Nested Loop  (cost=0.06..1350.76 rows=7365 width=18) (actual time=64.300..6574.431 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1983345 read=33842
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=7.119..7.120 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.06..1346.40 rows=29462 width=22) (actual time=51.392..6227.542 rows=1354883 loops=1)
                                             Buffers: shared hit=1983345 read=33841
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=12.111..858.842 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=4 read=8453
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=11.959..329.548 rows=1380035 loops=1)
                                                         Buffers: shared read=8453
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.066..0.067 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.053..0.058 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.007..0.010 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983341 read=25388
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.013..0.013 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337519 read=3842
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.074..0.074 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955270 read=40234
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=19.085..53.441 rows=35 loops=61)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=494 read=405
 Planning Time: 4572.265 ms
 Execution Time: 36548.552 ms
(65 rows)


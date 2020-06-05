                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1652.82..1652.82 rows=1 width=96) (actual time=32382.232..32382.232 rows=1 loops=1)
   Buffers: shared hit=5276525 read=77944
   ->  Nested Loop  (cost=0.10..1652.82 rows=1 width=42) (actual time=21259.869..32382.095 rows=53 loops=1)
         Join Filter: (mi.info_type_id = it2.id)
         Rows Removed by Join Filter: 165
         Buffers: shared hit=5276525 read=77944
         ->  Nested Loop  (cost=0.10..1652.77 rows=1 width=46) (actual time=21239.193..32375.038 rows=218 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5276307 read=77944
               ->  Nested Loop  (cost=0.09..1652.51 rows=1 width=54) (actual time=21183.839..32018.344 rows=14 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 18
                     Buffers: shared hit=5276188 read=77896
                     ->  Nested Loop  (cost=0.09..1652.48 rows=1 width=58) (actual time=2386.813..32018.137 rows=32 loops=1)
                           Buffers: shared hit=5276156 read=77896
                           ->  Nested Loop  (cost=0.07..1481.96 rows=2659 width=33) (actual time=52.427..14163.696 rows=248554 loops=1)
                                 Buffers: shared hit=4320882 read=37666
                                 ->  Nested Loop  (cost=0.06..1350.76 rows=7365 width=18) (actual time=12.250..6124.186 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1983356 read=33831
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.037..0.038 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.06..1346.40 rows=29462 width=22) (actual time=0.175..5798.397 rows=1354883 loops=1)
                                             Buffers: shared hit=1983355 read=33831
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.146..799.942 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=6 read=8451
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.012..282.567 rows=1380035 loops=1)
                                                         Buffers: shared hit=2 read=8451
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.065..0.065 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.052 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.006..0.009 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.013..0.013 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.071..0.071 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955274 read=40230
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.003 rows=1 loops=32)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 3
                           Buffers: shared hit=32
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=7.158..25.454 rows=16 loops=14)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=119 read=48
         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.029 rows=1 loops=218)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 88
               Buffers: shared hit=218
 Planning Time: 4850.941 ms
 Execution Time: 32383.059 ms
(65 rows)


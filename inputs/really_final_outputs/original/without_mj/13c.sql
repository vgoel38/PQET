                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1652.82..1652.82 rows=1 width=96) (actual time=32227.638..32227.638 rows=1 loops=1)
   Buffers: shared hit=5276500 read=77969
   ->  Nested Loop  (cost=0.10..1652.82 rows=1 width=42) (actual time=21729.783..32227.517 rows=53 loops=1)
         Join Filter: (mi.info_type_id = it.id)
         Rows Removed by Join Filter: 165
         Buffers: shared hit=5276500 read=77969
         ->  Nested Loop  (cost=0.10..1652.77 rows=1 width=46) (actual time=21709.095..32220.557 rows=218 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5276282 read=77969
               ->  Nested Loop  (cost=0.09..1652.51 rows=1 width=54) (actual time=21670.667..31878.128 rows=14 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 18
                     Buffers: shared hit=5276164 read=77920
                     ->  Nested Loop  (cost=0.09..1652.48 rows=1 width=58) (actual time=2045.022..31855.163 rows=32 loops=1)
                           Buffers: shared hit=5276133 read=77919
                           ->  Nested Loop  (cost=0.07..1481.96 rows=2659 width=33) (actual time=172.354..14099.456 rows=248554 loops=1)
                                 Buffers: shared hit=4320863 read=37685
                                 ->  Nested Loop  (cost=0.06..1350.76 rows=7365 width=18) (actual time=123.834..6271.721 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1983344 read=33843
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=49.551..49.553 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.06..1346.40 rows=29462 width=22) (actual time=68.506..5892.485 rows=1354883 loops=1)
                                             Buffers: shared hit=1983344 read=33842
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=36.630..886.965 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=3 read=8454
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=29.060..346.343 rows=1380035 loops=1)
                                                         Buffers: shared read=8453
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.478..7.478 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.453..7.460 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.006..0.009 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983341 read=25388
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.013..0.013 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337519 read=3842
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.071..0.071 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955270 read=40234
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.713..0.714 rows=1 loops=32)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 3
                           Buffers: shared hit=31 read=1
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=6.234..24.437 rows=16 loops=14)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=118 read=49
         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.029 rows=1 loops=218)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 88
               Buffers: shared hit=218
 Planning Time: 4524.071 ms
 Execution Time: 32260.418 ms
(65 rows)


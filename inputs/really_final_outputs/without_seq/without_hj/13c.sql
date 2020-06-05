                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13533.62..13533.62 rows=1 width=96) (actual time=31484.576..31484.576 rows=1 loops=1)
   Buffers: shared hit=5290341 read=81715
   ->  Nested Loop  (cost=0.08..13533.62 rows=1 width=42) (actual time=20596.474..31484.382 rows=53 loops=1)
         Buffers: shared hit=5290341 read=81715
         ->  Nested Loop  (cost=0.08..13533.61 rows=1 width=46) (actual time=20575.813..31482.523 rows=218 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5289905 read=81715
               ->  Nested Loop  (cost=0.07..13533.36 rows=1 width=54) (actual time=20544.826..31142.126 rows=14 loops=1)
                     Buffers: shared hit=5289786 read=81667
                     ->  Nested Loop  (cost=0.06..13533.31 rows=1 width=58) (actual time=2482.836..31141.877 rows=32 loops=1)
                           Buffers: shared hit=5289722 read=81667
                           ->  Nested Loop  (cost=0.05..13362.78 rows=2659 width=33) (actual time=63.985..15788.713 rows=248554 loops=1)
                                 Buffers: shared hit=4334448 read=41437
                                 ->  Nested Loop  (cost=0.04..13231.58 rows=7365 width=18) (actual time=23.826..7292.123 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996922 read=37602
                                       ->  Nested Loop  (cost=0.03..13218.84 rows=29462 width=22) (actual time=0.142..6418.951 rows=1354883 loops=1)
                                             Buffers: shared hit=1996921 read=37601
                                             ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.114..2230.517 rows=459925 loops=1)
                                                   Join Filter: (it.id = miidx.info_type_id)
                                                   Rows Removed by Join Filter: 920110
                                                   Buffers: shared hit=13572 read=12221
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.028..1261.394 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.040..0.042 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.005..0.008 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                       ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1354883)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'production companies'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.014..0.014 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.061..0.061 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955274 read=40230
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=32)
                           Index Cond: (id = t.kind_id)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=64
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=5.766..24.285 rows=16 loops=14)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=119 read=48
         ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=0 loops=218)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=436
 Planning Time: 5082.812 ms
 Execution Time: 31516.929 ms
(63 rows)


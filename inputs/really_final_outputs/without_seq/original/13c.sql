                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13335.39..13335.39 rows=1 width=96) (actual time=30522.994..30522.994 rows=1 loops=1)
   Buffers: shared hit=5290344 read=81715
   ->  Nested Loop  (cost=6.20..13335.39 rows=1 width=42) (actual time=19238.239..30522.829 rows=53 loops=1)
         Buffers: shared hit=5290344 read=81715
         ->  Nested Loop  (cost=6.20..13335.39 rows=1 width=46) (actual time=19217.570..30520.939 rows=218 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5289908 read=81715
               ->  Nested Loop  (cost=6.19..13335.13 rows=1 width=54) (actual time=19186.095..30180.580 rows=14 loops=1)
                     Buffers: shared hit=5289789 read=81667
                     ->  Nested Loop  (cost=6.18..13335.08 rows=1 width=58) (actual time=2243.871..30180.365 rows=32 loops=1)
                           Buffers: shared hit=5289725 read=81667
                           ->  Nested Loop  (cost=6.17..13164.56 rows=2659 width=33) (actual time=64.006..14713.107 rows=248554 loops=1)
                                 Buffers: shared hit=4334451 read=41437
                                 ->  Nested Loop  (cost=6.16..13033.36 rows=7365 width=18) (actual time=23.838..6634.759 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996925 read=37602
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                                       ->  Nested Loop  (cost=6.15..13022.91 rows=29462 width=22) (actual time=0.227..6296.883 rows=1354883 loops=1)
                                             Buffers: shared hit=1996924 read=37601
                                             ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=0.202..2026.546 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=13575 read=12221
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.029..1496.744 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.062..0.062 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.041..0.043 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.005..0.008 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.013..0.013 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.062..0.062 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955274 read=40230
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=32)
                           Index Cond: (id = t.kind_id)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=64
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=5.771..24.286 rows=16 loops=14)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=119 read=48
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=0 loops=218)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=436
 Planning Time: 5045.693 ms
 Execution Time: 30542.476 ms
(61 rows)


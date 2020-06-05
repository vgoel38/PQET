                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13335.38..13335.38 rows=1 width=96) (actual time=35237.317..35237.317 rows=1 loops=1)
   Buffers: shared hit=5294888 read=82071
   ->  Nested Loop  (cost=6.20..13335.38 rows=1 width=42) (actual time=17428.909..35236.658 rows=372 loops=1)
         Buffers: shared hit=5294888 read=82071
         ->  Nested Loop  (cost=6.20..13335.36 rows=5 width=46) (actual time=17422.723..35221.428 rows=2122 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5290644 read=82071
               ->  Nested Loop  (cost=6.19..13335.10 rows=1 width=54) (actual time=17389.606..31972.797 rows=61 loops=1)
                     Buffers: shared hit=5290149 read=81667
                     ->  Nested Loop  (cost=6.18..13335.08 rows=2 width=58) (actual time=490.328..31971.496 rows=212 loops=1)
                           Buffers: shared hit=5289725 read=81667
                           ->  Nested Loop  (cost=6.17..13164.56 rows=2659 width=33) (actual time=64.007..16248.771 rows=248554 loops=1)
                                 Buffers: shared hit=4334451 read=41437
                                 ->  Nested Loop  (cost=6.16..13033.36 rows=7365 width=18) (actual time=23.842..7362.957 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996925 read=37602
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                                       ->  Nested Loop  (cost=6.15..13022.91 rows=29462 width=22) (actual time=0.227..6998.965 rows=1354883 loops=1)
                                             Buffers: shared hit=1996924 read=37601
                                             ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=0.202..2217.084 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=13575 read=12221
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.029..1654.574 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.062..0.062 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.040..0.042 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.005..0.009 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.014..0.014 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.063..0.063 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955274 read=40230
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.01 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=212)
                           Index Cond: (id = t.kind_id)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=424
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=17.079..53.208 rows=35 loops=61)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=495 read=404
         ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=2122)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=4244
 Planning Time: 5071.700 ms
 Execution Time: 35322.455 ms
(61 rows)


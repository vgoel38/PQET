                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13533.60..13533.60 rows=1 width=96) (actual time=37389.549..37389.550 rows=1 loops=1)
   Buffers: shared hit=5294885 read=82071
   ->  Nested Loop  (cost=0.08..13533.60 rows=1 width=42) (actual time=18287.199..37388.818 rows=372 loops=1)
         Buffers: shared hit=5294885 read=82071
         ->  Nested Loop  (cost=0.08..13533.58 rows=5 width=46) (actual time=18280.972..37373.796 rows=2122 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=5290641 read=82071
               ->  Nested Loop  (cost=0.07..13533.33 rows=1 width=54) (actual time=18233.865..34155.628 rows=61 loops=1)
                     Buffers: shared hit=5290146 read=81667
                     ->  Nested Loop  (cost=0.06..13533.31 rows=2 width=58) (actual time=557.053..34154.273 rows=212 loops=1)
                           Buffers: shared hit=5289722 read=81667
                           ->  Nested Loop  (cost=0.05..13362.78 rows=2659 width=33) (actual time=63.984..17078.271 rows=248554 loops=1)
                                 Buffers: shared hit=4334448 read=41437
                                 ->  Nested Loop  (cost=0.04..13231.58 rows=7365 width=18) (actual time=23.809..8219.686 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996922 read=37602
                                       ->  Nested Loop  (cost=0.03..13218.84 rows=29462 width=22) (actual time=0.148..7279.593 rows=1354883 loops=1)
                                             Buffers: shared hit=1996921 read=37601
                                             ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.120..2686.269 rows=459925 loops=1)
                                                   Join Filter: (it.id = miidx.info_type_id)
                                                   Rows Removed by Join Filter: 920110
                                                   Buffers: shared hit=13572 read=12221
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.027..1634.590 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.048..0.049 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.005..0.008 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                       ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1354883)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.033..0.034 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'production companies'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.014..0.014 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2337526 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.068..0.068 rows=0 loops=248554)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=955274 read=40230
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.01 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=212)
                           Index Cond: (id = t.kind_id)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=424
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=17.352..52.709 rows=35 loops=61)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=495 read=404
         ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=2122)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=4244
 Planning Time: 4995.473 ms
 Execution Time: 37425.932 ms
(63 rows)


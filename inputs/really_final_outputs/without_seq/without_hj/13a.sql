                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13397.76..13397.76 rows=1 width=96) (actual time=113277.329..113277.330 rows=1 loops=1)
   Buffers: shared hit=5716348 read=109631
   ->  Nested Loop  (cost=0.08..13397.76 rows=5 width=65) (actual time=14515.368..113143.864 rows=111101 loops=1)
         Buffers: shared hit=5716348 read=109631
         ->  Nested Loop  (cost=0.08..13394.86 rows=617 width=69) (actual time=14503.633..111211.656 rows=516327 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=4683694 read=109631
               ->  Nested Loop  (cost=0.07..13383.68 rows=44 width=35) (actual time=14472.465..54586.733 rows=16470 loops=1)
                     Buffers: shared hit=4509114 read=56904
                     ->  Nested Loop  (cost=0.06..13382.34 rows=306 width=39) (actual time=404.699..54403.272 rows=31510 loops=1)
                           Buffers: shared hit=4446094 read=56904
                           ->  Nested Loop  (cost=0.05..13362.78 rows=306 width=14) (actual time=355.103..22158.813 rows=31510 loops=1)
                                 Buffers: shared hit=4335446 read=41437
                                 ->  Nested Loop  (cost=0.04..13231.58 rows=7365 width=18) (actual time=40.473..10476.669 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1996922 read=37602
                                       ->  Nested Loop  (cost=0.03..13218.84 rows=29462 width=22) (actual time=0.149..9359.495 rows=1354883 loops=1)
                                             Buffers: shared hit=1996921 read=37601
                                             ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.124..3757.773 rows=459925 loops=1)
                                                   Join Filter: (it.id = miidx.info_type_id)
                                                   Rows Removed by Join Filter: 920110
                                                   Buffers: shared hit=13572 read=12221
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.028..2485.621 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                                   ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.050..0.051 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.006..0.010 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983349 read=25380
                                       ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1354883)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'production companies'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.019..0.019 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[de]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2338524 read=3835
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=1.021..1.021 rows=1 loops=31510)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=110648 read=15467
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=31510)
                           Index Cond: (id = t.kind_id)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=63020
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=50) (actual time=0.755..3.416 rows=31 loops=16470)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=174580 read=52727
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=516327)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=1032654
 Planning Time: 5127.202 ms
 Execution Time: 113340.312 ms
(61 rows)


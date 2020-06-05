                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17200.15..17200.15 rows=1 width=96) (actual time=1491496.132..1491496.132 rows=1 loops=1)
   Buffers: shared hit=8714637 read=509586
   ->  Nested Loop  (cost=0.08..17200.15 rows=2 width=65) (actual time=21344.800..1491480.402 rows=410 loops=1)
         Buffers: shared hit=8714637 read=509586
         ->  Nested Loop  (cost=0.07..16993.42 rows=1969 width=69) (actual time=154.417..1265999.560 rows=107339 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=8317103 read=476923
               ->  Nested Loop  (cost=0.05..16894.64 rows=1025 width=77) (actual time=107.766..153582.104 rows=45431 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 6884903
                     Buffers: shared hit=6585598 read=247667
                     ->  Nested Loop  (cost=0.04..16862.52 rows=115821 width=81) (actual time=27.281..146259.907 rows=6930334 loops=1)
                           Buffers: shared hit=6585596 read=247667
                           ->  Nested Loop  (cost=0.03..13674.94 rows=12213 width=31) (actual time=20.893..62252.099 rows=459925 loops=1)
                                 Buffers: shared hit=1812189 read=54578
                                 ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.092..5186.284 rows=459925 loops=1)
                                       Join Filter: (it2.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 920110
                                       Buffers: shared hit=13572 read=12221
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.026..3492.037 rows=1380035 loops=1)
                                             Buffers: shared hit=13571 read=12220
                                       ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.043..0.045 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'votes'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.122..0.122 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798617 read=42357
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=9 width=50) (actual time=0.017..0.172 rows=15 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=4773407 read=193089
                     ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=6930334)
                           Buffers: shared hit=2
                           ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=0.026..0.028 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'budget'::text)
                                 Buffers: shared hit=2
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.10 rows=1 width=8) (actual time=15.804..24.480 rows=2 loops=45431)
                     Index Cond: (movie_id = mi.movie_id)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 38
                     Buffers: shared hit=1731505 read=229256
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.10 rows=1 width=4) (actual time=2.098..2.098 rows=0 loops=107339)
               Index Cond: (id = ci.person_id)
               Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=397534 read=32663
 Planning Time: 5815.945 ms
 Execution Time: 1491517.596 ms
(49 rows)


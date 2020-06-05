                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16896.15..16896.15 rows=1 width=96) (actual time=1456131.615..1456131.615 rows=1 loops=1)
   Buffers: shared hit=10856923 read=516276
   ->  Nested Loop  (cost=0.08..16896.14 rows=5 width=65) (actual time=9742.240..1455989.983 rows=28073 loops=1)
         Buffers: shared hit=10856923 read=516276
         ->  Nested Loop  (cost=0.07..16893.71 rows=13 width=69) (actual time=5415.221..1269079.479 rows=54155 loops=1)
               Buffers: shared hit=10663647 read=492679
               ->  Nested Loop  (cost=0.05..16887.83 rows=13 width=77) (actual time=313.655..146177.453 rows=102516 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 2376
                     Buffers: shared hit=6585598 read=247667
                     ->  Nested Loop  (cost=0.04..16881.37 rows=1477 width=81) (actual time=313.636..145963.932 rows=104892 loops=1)
                           Buffers: shared hit=6585596 read=247667
                           ->  Nested Loop  (cost=0.03..13674.94 rows=12213 width=31) (actual time=20.927..63897.504 rows=459925 loops=1)
                                 Buffers: shared hit=1812189 read=54578
                                 ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.095..5410.133 rows=459925 loops=1)
                                       Join Filter: (it.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 920110
                                       Buffers: shared hit=13572 read=12221
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.025..3429.262 rows=1380035 loops=1)
                                             Buffers: shared hit=13571 read=12220
                                       ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.047..0.049 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'votes'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.125..0.125 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798617 read=42357
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=0.176..0.177 rows=0 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 15
                                 Buffers: shared hit=4773407 read=193089
                     ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=104892)
                           Buffers: shared hit=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'genres'::text)
                                 Buffers: shared hit=2
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=9.759..10.951 rows=1 loops=102516)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 39
                     Buffers: shared hit=4078049 read=245012
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=3.448..3.448 rows=1 loops=54155)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=193276 read=23597
 Planning Time: 5810.888 ms
 Execution Time: 1456217.037 ms
(50 rows)


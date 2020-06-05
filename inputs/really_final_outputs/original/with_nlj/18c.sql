 Aggregate  (cost=5106.30..5106.30 rows=1 width=96) (actual time=1465919.331..1465919.332 rows=1 loops=1)
   Buffers: shared hit=10843329 read=512530
   ->  Nested Loop  (cost=0.06..5106.30 rows=5 width=65) (actual time=10225.608..1465782.519 rows=28073 loops=1)
         Buffers: shared hit=10843329 read=512530
         ->  Nested Loop  (cost=0.04..5103.86 rows=13 width=69) (actual time=5665.267..1282099.623 rows=54155 loops=1)
               Buffers: shared hit=10650056 read=488930
               ->  Nested Loop  (cost=0.03..5097.98 rows=13 width=77) (actual time=430.373..153573.514 rows=102516 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 2376
                     Buffers: shared hit=6572016 read=243909
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=13.585..13.607 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.03..5097.72 rows=1477 width=81) (actual time=416.783..153440.594 rows=104892 loops=1)
                           Buffers: shared hit=6572016 read=243908
                           ->  Nested Loop  (cost=0.01..1891.28 rows=12213 width=31) (actual time=40.729..64782.476 rows=459925 loops=1)
                                 Buffers: shared hit=1798614 read=50814
                                 ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=10) (actual time=9.176..1424.744 rows=459925 loops=1)
                                       Join Filter: (it2.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 920110
                                       Buffers: shared hit=1 read=8453
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.052 rows=1 loops=1)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=9.119..560.241 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.136..0.136 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798613 read=42361
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=0.190..0.191 rows=0 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 15
                                 Buffers: shared hit=4773402 read=193094
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=9.812..11.006 rows=1 loops=102516)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 39
                     Buffers: shared hit=4078040 read=245021
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=3.388..3.388 rows=1 loops=54155)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=193273 read=23600
 Planning Time: 3916.214 ms
 Execution Time: 1465941.191 ms

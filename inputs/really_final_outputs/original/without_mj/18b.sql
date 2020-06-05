                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1614.22..1614.22 rows=1 width=96) (actual time=159523.539..159523.539 rows=1 loops=1)
   Buffers: shared hit=100594 read=56424
   ->  Nested Loop  (cost=0.06..1614.22 rows=1 width=65) (actual time=41167.033..159523.395 rows=11 loops=1)
         Buffers: shared hit=100594 read=56424
         ->  Nested Loop  (cost=0.04..1614.04 rows=1 width=69) (actual time=10998.128..156795.408 rows=268 loops=1)
               Buffers: shared hit=99966 read=55978
               ->  Nested Loop  (cost=0.03..1612.64 rows=1 width=77) (actual time=1733.284..98759.554 rows=358 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Buffers: shared hit=96907 read=46137
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.801..2.823 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.03..1612.59 rows=6 width=81) (actual time=1730.472..98755.920 rows=358 loops=1)
                           Buffers: shared hit=96907 read=46136
                           ->  Nested Loop  (cost=0.01..1495.69 rows=145 width=31) (actual time=370.246..37365.677 rows=6152 loops=1)
                                 Buffers: shared hit=48040 read=23883
                                 ->  Nested Loop  (cost=0.00..475.52 rows=468 width=10) (actual time=9.226..895.284 rows=15849 loops=1)
                                       Join Filter: (it.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 37013
                                       Buffers: shared hit=1 read=8453
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.051 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=9.173..865.979 rows=52862 loops=1)
                                             Filter: (info > '8.0'::text)
                                             Rows Removed by Filter: 1327173
                                             Buffers: shared read=8453
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..2.18 rows=1 width=21) (actual time=2.298..2.298 rows=0 loops=15849)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Filter: ((production_year >= 2008) AND (production_year <= 2014))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=48039 read=15430
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.81 rows=1 width=50) (actual time=9.970..9.976 rows=0 loops=6152)
                                 Index Cond: (movie_id = t.id)
                                 Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                 Rows Removed by Filter: 18
                                 Buffers: shared hit=48867 read=22253
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..1.40 rows=1 width=8) (actual time=131.271..162.103 rows=1 loops=358)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34
                     Buffers: shared hit=3059 read=9841
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=10.172..10.172 rows=0 loops=268)
               Index Cond: (id = ci.person_id)
               Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=628 read=446
 Planning Time: 4363.396 ms
 Execution Time: 159549.703 ms
(51 rows)


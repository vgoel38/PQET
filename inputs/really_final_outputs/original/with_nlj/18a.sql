 Aggregate  (cost=5401.42..5401.42 rows=1 width=96) (actual time=1497624.941..1497624.941 rows=1 loops=1)
   Buffers: shared hit=8701044 read=505839
   ->  Nested Loop  (cost=0.06..5401.42 rows=2 width=65) (actual time=22053.165..1497609.091 rows=410 loops=1)
         Buffers: shared hit=8701044 read=505839
         ->  Nested Loop  (cost=0.04..5194.70 rows=1969 width=69) (actual time=287.854..1272842.842 rows=107339 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=8303513 read=473173
               ->  Nested Loop  (cost=0.03..5095.92 rows=1025 width=77) (actual time=199.525..155804.310 rows=45431 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 6884903
                     Buffers: shared hit=6572016 read=243909
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=13.629..13.631 rows=1 loops=1)
                           Filter: ((info)::text = 'budget'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.03..5078.87 rows=115821 width=81) (actual time=97.075..153808.194 rows=6930334 loops=1)
                           Buffers: shared hit=6572016 read=243908
                           ->  Nested Loop  (cost=0.01..1891.28 rows=12213 width=31) (actual time=40.687..61811.722 rows=459925 loops=1)
                                 Buffers: shared hit=1798614 read=50814
                                 ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=10) (actual time=9.158..1299.484 rows=459925 loops=1)
                                       Join Filter: (it2.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 920110
                                       Buffers: shared hit=1 read=8453
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.045..0.049 rows=1 loops=1)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=9.102..578.546 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.130..0.130 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798613 read=42361
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=9 width=50) (actual time=0.035..0.190 rows=15 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=4773402 read=193094
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.10 rows=1 width=8) (actual time=15.905..24.582 rows=2 loops=45431)
                     Index Cond: (movie_id = mi.movie_id)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 38
                     Buffers: shared hit=1731497 read=229264
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.10 rows=1 width=4) (actual time=2.091..2.091 rows=0 loops=107339)
               Index Cond: (id = ci.person_id)
               Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=397531 read=32666
 Planning Time: 3711.380 ms
 Execution Time: 1497684.322 ms

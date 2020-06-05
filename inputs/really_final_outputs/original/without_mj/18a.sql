                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=5312.64..5312.64 rows=1 width=96) (actual time=1504550.432..1504550.432 rows=1 loops=1)
   Buffers: shared hit=8701047 read=505839
   ->  Nested Loop  (cost=0.11..5312.63 rows=2 width=65) (actual time=22278.265..1504534.796 rows=410 loops=1)
         Buffers: shared hit=8701047 read=505839
         ->  Nested Loop  (cost=0.09..5105.91 rows=1969 width=69) (actual time=479.621..1278398.092 rows=107339 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=8303516 read=473173
               ->  Nested Loop  (cost=0.07..5007.13 rows=1025 width=77) (actual time=391.309..159325.609 rows=45431 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 6884903
                     Buffers: shared hit=6572019 read=243909
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=13.736..13.739 rows=1 loops=1)
                           Filter: ((info)::text = 'budget'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.07..4990.08 rows=115821 width=81) (actual time=288.741..157319.900 rows=6930334 loops=1)
                           Buffers: shared hit=6572019 read=243908
                           ->  Nested Loop  (cost=0.06..1802.50 rows=12213 width=31) (actual time=232.349..64734.581 rows=459925 loops=1)
                                 Buffers: shared hit=1798617 read=50814
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=92.627..1750.307 rows=459925 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=4 read=8453
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=92.469..641.424 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.075..0.075 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.053..0.059 rows=1 loops=1)
                                                   Filter: ((info)::text = 'votes'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.135..0.135 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798613 read=42361
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=9 width=50) (actual time=0.035..0.191 rows=15 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=4773402 read=193094
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.10 rows=1 width=8) (actual time=15.963..24.627 rows=2 loops=45431)
                     Index Cond: (movie_id = mi.movie_id)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 38
                     Buffers: shared hit=1731497 read=229264
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.10 rows=1 width=4) (actual time=2.104..2.104 rows=0 loops=107339)
               Index Cond: (id = ci.person_id)
               Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=397531 read=32666
 Planning Time: 4413.740 ms
 Execution Time: 1504550.830 ms
(49 rows)


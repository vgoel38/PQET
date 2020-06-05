                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16995.22..16995.22 rows=1 width=96) (actual time=1489297.752..1489297.752 rows=1 loops=1)
   Buffers: shared hit=8714640 read=509586
   ->  Nested Loop  (cost=6.20..16995.22 rows=2 width=65) (actual time=21324.455..1489282.145 rows=410 loops=1)
         Buffers: shared hit=8714640 read=509586
         ->  Nested Loop  (cost=6.19..16788.50 rows=1969 width=69) (actual time=184.106..1262955.959 rows=107339 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=8317106 read=476923
               ->  Nested Loop  (cost=6.17..16689.71 rows=1025 width=77) (actual time=137.437..146491.600 rows=45431 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 6884903
                     Buffers: shared hit=6585601 read=247667
                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                           Index Cond: ((info)::text = 'budget'::text)
                           Buffers: shared hit=1 read=1
                     ->  Nested Loop  (cost=6.17..16666.59 rows=115821 width=81) (actual time=56.951..144522.014 rows=6930334 loops=1)
                           Buffers: shared hit=6585600 read=247666
                           ->  Nested Loop  (cost=6.15..13479.00 rows=12213 width=31) (actual time=50.549..60818.903 rows=459925 loops=1)
                                 Buffers: shared hit=1812193 read=54577
                                 ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=0.042..4514.436 rows=459925 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=13576 read=12220
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.008..3436.563 rows=1380035 loops=1)
                                             Buffers: shared hit=13571 read=12220
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.010..0.011 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'votes'::text)
                                                   Buffers: shared hit=2
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.120..0.120 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798617 read=42357
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=9 width=50) (actual time=0.017..0.172 rows=15 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=4773407 read=193089
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.10 rows=1 width=8) (actual time=15.866..24.570 rows=2 loops=45431)
                     Index Cond: (movie_id = mi.movie_id)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 38
                     Buffers: shared hit=1731505 read=229256
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.10 rows=1 width=4) (actual time=2.106..2.106 rows=0 loops=107339)
               Index Cond: (id = ci.person_id)
               Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=397534 read=32663
 Planning Time: 5758.795 ms
 Execution Time: 1489298.531 ms
(47 rows)


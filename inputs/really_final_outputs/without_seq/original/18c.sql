                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16700.10..16700.10 rows=1 width=96) (actual time=1458350.711..1458350.711 rows=1 loops=1)
   Buffers: shared hit=10856926 read=516276
   ->  Nested Loop  (cost=6.20..16700.10 rows=5 width=65) (actual time=9686.522..1458209.477 rows=28073 loops=1)
         Buffers: shared hit=10856926 read=516276
         ->  Nested Loop  (cost=6.19..16697.66 rows=13 width=69) (actual time=5367.833..1270619.327 rows=54155 loops=1)
               Buffers: shared hit=10663650 read=492679
               ->  Nested Loop  (cost=6.17..16691.78 rows=13 width=77) (actual time=299.616..144262.976 rows=102516 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 2376
                     Buffers: shared hit=6585601 read=247667
                     ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=0.014..0.016 rows=1 loops=1)
                           Index Cond: ((info)::text = 'genres'::text)
                           Buffers: shared hit=1 read=1
                     ->  Nested Loop  (cost=6.17..16685.44 rows=1477 width=81) (actual time=299.597..144148.912 rows=104892 loops=1)
                           Buffers: shared hit=6585600 read=247666
                           ->  Nested Loop  (cost=6.15..13479.00 rows=12213 width=31) (actual time=15.184..62623.246 rows=459925 loops=1)
                                 Buffers: shared hit=1812193 read=54577
                                 ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=0.052..4539.244 rows=459925 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it2.id)
                                       Buffers: shared hit=13576 read=12220
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.011..3380.792 rows=1380035 loops=1)
                                             Buffers: shared hit=13571 read=12220
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2
                                             ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'votes'::text)
                                                   Buffers: shared hit=2
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.124..0.124 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798617 read=42357
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=0.174..0.176 rows=0 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 15
                                 Buffers: shared hit=4773407 read=193089
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=9.793..10.985 rows=1 loops=102516)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 39
                     Buffers: shared hit=4078049 read=245012
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=3.461..3.461 rows=1 loops=54155)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=193276 read=23597
 Planning Time: 5793.020 ms
 Execution Time: 1458351.174 ms
(48 rows)


                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=5017.51..5017.51 rows=1 width=96) (actual time=1466450.300..1466450.300 rows=1 loops=1)
   Buffers: shared hit=10843332 read=512530
   ->  Nested Loop  (cost=0.11..5017.51 rows=5 width=65) (actual time=10073.146..1466311.102 rows=28073 loops=1)
         Buffers: shared hit=10843332 read=512530
         ->  Nested Loop  (cost=0.09..5015.07 rows=13 width=69) (actual time=5537.817..1283043.984 rows=54155 loops=1)
               Buffers: shared hit=10650059 read=488930
               ->  Nested Loop  (cost=0.07..5009.19 rows=13 width=77) (actual time=394.552..153692.523 rows=102516 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 2376
                     Buffers: shared hit=6572019 read=243909
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.781..2.804 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.07..5008.93 rows=1477 width=81) (actual time=391.762..153568.927 rows=104892 loops=1)
                           Buffers: shared hit=6572019 read=243908
                           ->  Nested Loop  (cost=0.06..1802.50 rows=12213 width=31) (actual time=40.671..64654.609 rows=459925 loops=1)
                                 Buffers: shared hit=1798617 read=50814
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=9.337..1758.551 rows=459925 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=4 read=8453
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=9.168..567.817 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.078..0.078 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.050..0.056 rows=1 loops=1)
                                                   Filter: ((info)::text = 'votes'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.135..0.135 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798613 read=42361
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=0.190..0.192 rows=0 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 15
                                 Buffers: shared hit=4773402 read=193094
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=9.818..11.014 rows=1 loops=102516)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 39
                     Buffers: shared hit=4078040 read=245021
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=3.381..3.381 rows=1 loops=54155)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=193273 read=23600
 Planning Time: 4397.435 ms
 Execution Time: 1466476.701 ms
(50 rows)


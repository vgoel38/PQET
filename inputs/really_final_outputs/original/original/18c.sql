                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=5017.51..5017.51 rows=1 width=96) (actual time=1522172.330..1522172.331 rows=1 loops=1)
   Buffers: shared hit=10843356 read=512506
   ->  Nested Loop  (cost=0.11..5017.51 rows=5 width=65) (actual time=10340.337..1522034.241 rows=28073 loops=1)
         Buffers: shared hit=10843356 read=512506
         ->  Nested Loop  (cost=0.09..5015.07 rows=13 width=69) (actual time=5738.322..1329708.413 rows=54155 loops=1)
               Buffers: shared hit=10650080 read=488909
               ->  Nested Loop  (cost=0.07..5009.19 rows=13 width=77) (actual time=336.740..163613.433 rows=102516 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 2376
                     Buffers: shared hit=6572031 read=243897
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.006..0.034 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.07..5008.93 rows=1479 width=81) (actual time=336.727..163497.101 rows=104892 loops=1)
                           Buffers: shared hit=6572030 read=243897
                           ->  Nested Loop  (cost=0.06..1802.50 rows=12213 width=31) (actual time=10.724..67740.022 rows=459925 loops=1)
                                 Buffers: shared hit=1798623 read=50808
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.044..1806.595 rows=459925 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=6 read=8451
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.003..578.796 rows=1380035 loops=1)
                                             Buffers: shared hit=2 read=8451
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                                   Filter: ((info)::text = 'votes'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.141..0.141 rows=1 loops=459925)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Buffers: shared hit=1798617 read=42357
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=0.205..0.207 rows=0 loops=459925)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                 Rows Removed by Filter: 15
                                 Buffers: shared hit=4773407 read=193089
               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=10.175..11.372 rows=1 loops=102516)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 39
                     Buffers: shared hit=4078049 read=245012
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=3.548..3.548 rows=1 loops=54155)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=193276 read=23597
 Planning Time: 5264.260 ms
 Execution Time: 1522172.731 ms
(50 rows)


                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1614.22..1614.22 rows=1 width=96) (actual time=169258.172..169258.173 rows=1 loops=1)
   Buffers: shared hit=100609 read=56409
   ->  Nested Loop  (cost=0.06..1614.22 rows=1 width=65) (actual time=43694.341..169258.037 rows=11 loops=1)
         Buffers: shared hit=100609 read=56409
         ->  Nested Loop  (cost=0.04..1614.04 rows=1 width=69) (actual time=11683.852..166546.841 rows=268 loops=1)
               Buffers: shared hit=99979 read=55965
               ->  Nested Loop  (cost=0.03..1612.64 rows=1 width=77) (actual time=1785.928..106967.572 rows=358 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Buffers: shared hit=96916 read=46128
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.058 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.03..1612.59 rows=6 width=81) (actual time=1785.900..106966.735 rows=358 loops=1)
                           Buffers: shared hit=96915 read=46128
                           ->  Nested Loop  (cost=0.01..1495.69 rows=145 width=31) (actual time=358.985..38966.672 rows=6152 loops=1)
                                 Buffers: shared hit=48045 read=23878
                                 ->  Nested Loop  (cost=0.00..475.52 rows=468 width=10) (actual time=0.129..900.200 rows=15849 loops=1)
                                       Join Filter: (it.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 37013
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.045..0.052 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=0.079..870.630 rows=52862 loops=1)
                                             Filter: (info > '8.0'::text)
                                             Rows Removed by Filter: 1327173
                                             Buffers: shared hit=2 read=8451
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..2.18 rows=1 width=21) (actual time=2.399..2.399 rows=0 loops=15849)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Filter: ((production_year >= 2008) AND (production_year <= 2014))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=48042 read=15427
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.81 rows=1 width=50) (actual time=11.049..11.050 rows=0 loops=6152)
                                 Index Cond: (movie_id = t.id)
                                 Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                 Rows Removed by Filter: 18
                                 Buffers: shared hit=48870 read=22250
               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..1.40 rows=1 width=8) (actual time=135.466..166.415 rows=1 loops=358)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34
                     Buffers: shared hit=3063 read=9837
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=10.110..10.110 rows=0 loops=268)
               Index Cond: (id = ci.person_id)
               Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=630 read=444
 Planning Time: 5245.690 ms
 Execution Time: 169325.636 ms
(51 rows)


                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13294.82..13294.82 rows=1 width=96) (actual time=164630.817..164630.818 rows=1 loops=1)
   Buffers: shared hit=114893 read=60179
   ->  Nested Loop  (cost=0.08..13294.82 rows=1 width=65) (actual time=42727.679..164630.665 rows=11 loops=1)
         Buffers: shared hit=114893 read=60179
         ->  Nested Loop  (cost=0.07..13294.63 rows=1 width=69) (actual time=11475.458..161811.240 rows=268 loops=1)
               Buffers: shared hit=114263 read=59735
               ->  Nested Loop  (cost=0.05..13293.23 rows=1 width=77) (actual time=1794.106..103433.884 rows=358 loops=1)
                     Buffers: shared hit=111200 read=49898
                     ->  Nested Loop  (cost=0.04..13293.20 rows=6 width=81) (actual time=1794.064..103427.020 rows=358 loops=1)
                           Buffers: shared hit=110484 read=49898
                           ->  Nested Loop  (cost=0.03..13176.30 rows=145 width=31) (actual time=388.922..41305.980 rows=6152 loops=1)
                                 Buffers: shared hit=61614 read=27648
                                 ->  Nested Loop  (cost=0.02..12156.13 rows=468 width=10) (actual time=0.177..3244.254 rows=15849 loops=1)
                                       Join Filter: (it2.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 37013
                                       Buffers: shared hit=13572 read=12221
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=0.122..3166.197 rows=52862 loops=1)
                                             Filter: (info > '8.0'::text)
                                             Rows Removed by Filter: 1327173
                                             Buffers: shared hit=13571 read=12220
                                       ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=52862)
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.041..0.042 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'rating'::text)
                                                   Buffers: shared hit=1 read=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..2.18 rows=1 width=21) (actual time=2.399..2.399 rows=0 loops=15849)
                                       Index Cond: (id = mi_idx.movie_id)
                                       Filter: ((production_year >= 2008) AND (production_year <= 2014))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=48042 read=15427
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.81 rows=1 width=50) (actual time=10.086..10.095 rows=0 loops=6152)
                                 Index Cond: (movie_id = t.id)
                                 Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                 Rows Removed by Filter: 18
                                 Buffers: shared hit=48870 read=22250
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=358)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'genres'::text)
                           Buffers: shared hit=716
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..1.40 rows=1 width=8) (actual time=131.231..163.060 rows=1 loops=358)
                     Index Cond: (movie_id = t.id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34
                     Buffers: shared hit=3063 read=9837
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=4) (actual time=10.513..10.513 rows=0 loops=268)
               Index Cond: (id = ci.person_id)
               Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 1
               Buffers: shared hit=630 read=444
 Planning Time: 5593.423 ms
 Execution Time: 164649.562 ms
(51 rows)


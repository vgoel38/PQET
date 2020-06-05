                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=143.14..143.14 rows=1 width=64) (actual time=456182.255..456182.255 rows=1 loops=1)
   Buffers: shared hit=1995705 read=97800
   ->  Nested Loop  (cost=0.11..143.11 rows=188 width=33) (actual time=467.262..455842.888 rows=249455 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=1995705 read=97800
         ->  Nested Loop  (cost=0.10..139.42 rows=188 width=41) (actual time=440.616..324448.391 rows=249455 loops=1)
               Buffers: shared hit=1016083 read=78834
               ->  Nested Loop  (cost=0.08..136.20 rows=216 width=21) (actual time=403.371..262292.498 rows=169273 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=359343 read=68996
                     ->  Nested Loop  (cost=0.07..131.20 rows=19 width=29) (actual time=357.964..65737.090 rows=6766 loops=1)
                           Buffers: shared hit=196081 read=40150
                           ->  Nested Loop  (cost=0.05..130.27 rows=52 width=33) (actual time=165.634..56856.481 rows=8661 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=162218 read=39358
                                 ->  Nested Loop  (cost=0.04..129.99 rows=9 width=25) (actual time=99.784..49381.656 rows=5385 loops=1)
                                       Buffers: shared hit=141697 read=37537
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=59.306..3192.039 rows=41840 loops=1)
                                             Buffers: shared read=11662
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.645..22.646 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.617..3141.901 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared read=11658
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.102..1.102 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: ((episode_nr >= 5) AND (episode_nr < 100))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141697 read=25875
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=1.079..1.382 rows=2 loops=5385)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=20521 read=1821
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=1.022..1.022 rows=1 loops=8661)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=33863 read=792
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.927..29.014 rows=25 loops=6766)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=163262 read=28846
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.323..0.364 rows=1 loops=169273)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=656740 read=9838
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=0.524..0.524 rows=1 loops=249455)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=979622 read=18966
 Planning Time: 6491.319 ms
 Execution Time: 456197.692 ms
(49 rows)


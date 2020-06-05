                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=131.33..131.33 rows=1 width=64) (actual time=25581.874..25581.875 rows=1 loops=1)
   Buffers: shared hit=144732 read=38366
   ->  Nested Loop  (cost=0.11..131.32 rows=19 width=33) (actual time=1105.982..25580.641 rows=385 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=144732 read=38366
         ->  Nested Loop  (cost=0.10..130.95 rows=19 width=41) (actual time=1037.371..24175.253 rows=385 loops=1)
               Buffers: shared hit=143403 read=38155
               ->  Nested Loop  (cost=0.08..130.64 rows=21 width=21) (actual time=1005.232..21036.499 rows=323 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=142453 read=37868
                     ->  Nested Loop  (cost=0.07..130.11 rows=2 width=29) (actual time=950.804..19047.613 rows=25 loops=1)
                           Buffers: shared hit=142297 read=37648
                           ->  Nested Loop  (cost=0.05..130.02 rows=5 width=33) (actual time=835.196..18295.919 rows=54 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=142127 read=37602
                                 ->  Nested Loop  (cost=0.04..129.99 rows=1 width=25) (actual time=770.255..17574.744 rows=146 loops=1)
                                       Buffers: shared hit=141709 read=37537
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=59.307..2487.594 rows=41840 loops=1)
                                             Buffers: shared read=11662
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.646..22.650 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.614..2444.844 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared read=11658
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.360..0.360 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141709 read=25875
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=4.322..4.937 rows=0 loops=146)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=418 read=65
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=13.913..13.913 rows=0 loops=54)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=170 read=46
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=19.014..79.508 rows=13 loops=25)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=156 read=220
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=9.029..9.711 rows=1 loops=323)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=950 read=287
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=3.645..3.645 rows=1 loops=385)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=1329 read=211
 Planning Time: 6476.960 ms
 Execution Time: 25603.355 ms
(49 rows)


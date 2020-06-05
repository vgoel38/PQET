                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=147.62..147.62 rows=1 width=64) (actual time=551274.006..551274.007 rows=1 loops=1)
   Buffers: shared hit=2543946 read=109106
   ->  Nested Loop  (cost=0.11..147.58 rows=253 width=33) (actual time=286.431..550848.575 rows=319932 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=2543946 read=109106
         ->  Nested Loop  (cost=0.10..142.60 rows=253 width=41) (actual time=268.125..397153.242 rows=319932 loops=1)
               Buffers: shared hit=1285252 read=87047
               ->  Nested Loop  (cost=0.08..138.24 rows=293 width=21) (actual time=214.185..322743.941 rows=221609 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=427226 read=76523
                     ->  Nested Loop  (cost=0.07..131.66 rows=25 width=29) (actual time=210.459..70599.974 rows=8538 loops=1)
                           Buffers: shared hit=212895 read=40604
                           ->  Nested Loop  (cost=0.05..130.40 rows=71 width=33) (actual time=101.466..60080.991 rows=11406 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=168182 read=39682
                                 ->  Nested Loop  (cost=0.04..129.99 rows=13 width=25) (actual time=77.285..51046.330 rows=6926 loops=1)
                                       Buffers: shared hit=141700 read=37529
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=52.180..2762.685 rows=41840 loops=1)
                                             Buffers: shared hit=3 read=11659
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=40.586..40.588 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=11.558..2696.291 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=3 read=11655
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.152..1.152 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (episode_nr < 100)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141697 read=25870
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=1.038..1.298 rows=2 loops=6926)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=26482 read=2153
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.919..0.919 rows=1 loops=11406)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=44713 read=922
                     ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=3.267..29.497 rows=26 loops=8538)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=214331 read=35919
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.302..0.333 rows=1 loops=221609)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=858026 read=10524
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=0.478..0.478 rows=1 loops=319932)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=1258694 read=22059
 Planning Time: 7545.411 ms
 Execution Time: 551274.482 ms
(49 rows)


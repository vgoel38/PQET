                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=147.73..147.73 rows=1 width=64) (actual time=528055.308..528055.308 rows=1 loops=1)
   Buffers: shared hit=2543922 read=109130
   ->  Nested Loop  (cost=0.11..147.69 rows=257 width=33) (actual time=467.254..527628.061 rows=319932 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=2543922 read=109130
         ->  Nested Loop  (cost=0.10..142.64 rows=257 width=41) (actual time=440.604..375389.304 rows=319932 loops=1)
               Buffers: shared hit=1285231 read=87068
               ->  Nested Loop  (cost=0.08..138.25 rows=295 width=21) (actual time=403.357..310177.591 rows=221609 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=427209 read=76540
                     ->  Nested Loop  (cost=0.07..131.66 rows=25 width=29) (actual time=357.953..68592.874 rows=8538 loops=1)
                           Buffers: shared hit=212881 read=40618
                           ->  Nested Loop  (cost=0.05..130.40 rows=71 width=33) (actual time=157.295..58058.957 rows=11406 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=168172 read=39692
                                 ->  Nested Loop  (cost=0.04..129.99 rows=13 width=25) (actual time=99.787..50661.542 rows=6926 loops=1)
                                       Buffers: shared hit=141693 read=37536
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=59.311..2887.921 rows=41840 loops=1)
                                             Buffers: shared read=11662
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.660..22.662 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.607..2839.356 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared read=11658
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.140..1.140 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (episode_nr < 100)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141693 read=25874
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.802..1.062 rows=2 loops=6926)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=26479 read=2156
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.921..0.921 rows=1 loops=11406)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=44709 read=926
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.629..28.260 rows=26 loops=8538)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=214328 read=35922
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.261..0.291 rows=1 loops=221609)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=858022 read=10528
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=0.474..0.474 rows=1 loops=319932)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=1258691 read=22062
 Planning Time: 6489.313 ms
 Execution Time: 528089.452 ms
(49 rows)


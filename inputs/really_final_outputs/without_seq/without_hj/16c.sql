                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=146.52..146.52 rows=1 width=64) (actual time=424868.758..424868.759 rows=1 loops=1)
   Buffers: shared hit=2275045 read=95599
   ->  Nested Loop  (cost=0.11..146.48 rows=257 width=33) (actual time=308.352..424468.746 rows=319932 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=2275045 read=95599
         ->  Nested Loop  (cost=0.10..142.64 rows=257 width=41) (actual time=273.897..364415.268 rows=319932 loops=1)
               Buffers: shared hit=1285252 read=87047
               ->  Nested Loop  (cost=0.08..138.25 rows=295 width=21) (actual time=244.996..301287.825 rows=221609 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=427226 read=76523
                     ->  Nested Loop  (cost=0.07..131.66 rows=25 width=29) (actual time=216.232..65875.992 rows=8538 loops=1)
                           Buffers: shared hit=212895 read=40604
                           ->  Nested Loop  (cost=0.05..130.40 rows=71 width=33) (actual time=73.919..55598.958 rows=11406 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=168182 read=39682
                                 ->  Nested Loop  (cost=0.04..129.99 rows=13 width=25) (actual time=49.737..48602.254 rows=6926 loops=1)
                                       Buffers: shared hit=141700 read=37529
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=31.948..2632.515 rows=41840 loops=1)
                                             Buffers: shared hit=3 read=11659
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=13.106..13.108 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.809..2593.278 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=3 read=11655
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.097..1.097 rows=0 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (episode_nr < 100)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=141697 read=25870
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.762..1.004 rows=2 loops=6926)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=26482 read=2153
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.898..0.898 rows=1 loops=11406)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=44713 read=922
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.588..27.536 rows=26 loops=8538)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=214331 read=35919
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.253..0.282 rows=1 loops=221609)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=858026 read=10524
         ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=0.186..0.186 rows=1 loops=319932)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=989793 read=8552
 Planning Time: 7725.263 ms
 Execution Time: 424916.865 ms
(50 rows)


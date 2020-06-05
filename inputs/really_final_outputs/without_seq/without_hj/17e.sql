                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=166.98..166.98 rows=1 width=32) (actual time=1432482.180..1432482.180 rows=1 loops=1)
   Buffers: shared hit=14993180 read=293293
   ->  Nested Loop  (cost=0.10..166.92 rows=789 width=15) (actual time=242.033..1430247.145 rows=2832555 loops=1)
         Buffers: shared hit=14993180 read=293293
         ->  Nested Loop  (cost=0.08..151.52 rows=789 width=4) (actual time=226.803..1082599.604 rows=2832555 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=3721548 read=224832
               ->  Nested Loop  (cost=0.07..133.62 rows=68 width=12) (actual time=89.763..50644.318 rows=68316 loops=1)
                     Buffers: shared hit=882293 read=39342
                     ->  Nested Loop  (cost=0.05..130.23 rows=190 width=16) (actual time=66.693..21280.993 rows=148552 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=291292 read=35535
                           ->  Nested Loop  (cost=0.04..129.16 rows=34 width=8) (actual time=65.977..12148.063 rows=41840 loops=1)
                                 Buffers: shared hit=121541 read=16468
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=48.653..6507.192 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.965..30.968 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.641..6441.874 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=0.132..0.132 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=121538 read=4809
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.175..0.213 rows=4 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=169751 read=19067
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.196..0.196 rows=0 loops=148552)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=591001 read=3807
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=1.373..15.070 rows=41 loops=68316)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=2839255 read=185490
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.121..0.121 rows=1 loops=2832555)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=11271632 read=68461
 Planning Time: 5757.678 ms
 Execution Time: 1432555.234 ms
(42 rows)


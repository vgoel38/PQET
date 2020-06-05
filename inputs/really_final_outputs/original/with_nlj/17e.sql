 Aggregate  (cost=167.81..167.81 rows=1 width=32) (actual time=1514119.151..1514119.151 rows=1 loops=1)
   Buffers: shared hit=15013211 read=314382
   ->  Nested Loop  (cost=0.10..167.75 rows=789 width=15) (actual time=458.708..1511921.396 rows=2832555 loops=1)
         Buffers: shared hit=15013211 read=314382
         ->  Nested Loop  (cost=0.08..152.35 rows=789 width=4) (actual time=443.480..1164522.896 rows=2832555 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=3741583 read=245917
               ->  Nested Loop  (cost=0.07..134.44 rows=68 width=12) (actual time=214.790..138462.865 rows=68316 loops=1)
                     Buffers: shared hit=902335 read=60420
                     ->  Nested Loop  (cost=0.05..131.06 rows=190 width=16) (actual time=151.485..109029.823 rows=148552 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=311340 read=56607
                           ->  Nested Loop  (cost=0.04..129.99 rows=34 width=8) (actual time=99.773..100049.860 rows=41840 loops=1)
                                 Buffers: shared hit=141595 read=37534
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=59.317..6369.316 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.642..22.643 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.651..6308.385 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=4) (actual time=2.236..2.236 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Buffers: shared hit=141595 read=25872
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.170..0.208 rows=4 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=169745 read=19073
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.196..0.196 rows=0 loops=148552)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=590995 read=3813
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=1.311..14.984 rows=41 loops=68316)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=2839248 read=185497
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.121..0.121 rows=1 loops=2832555)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=11271628 read=68465
 Planning Time: 3887.654 ms
 Execution Time: 1514195.726 ms

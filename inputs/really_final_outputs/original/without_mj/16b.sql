                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=177.68..177.68 rows=1 width=64) (actual time=1624429.848..1624429.849 rows=1 loops=1)
   Buffers: shared hit=29135713 read=320963
   ->  Nested Loop  (cost=0.11..177.58 rows=686 width=33) (actual time=500.366..1621109.854 rows=3710592 loops=1)
         Join Filter: (an.person_id = n.id)
         Buffers: shared hit=29135713 read=320963
         ->  Nested Loop  (cost=0.10..164.09 rows=686 width=41) (actual time=477.942..1258279.691 rows=3710592 loops=1)
               Buffers: shared hit=14342713 read=259416
               ->  Nested Loop  (cost=0.08..152.35 rows=789 width=21) (actual time=435.180..1161138.084 rows=2832555 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=3741583 read=245917
                     ->  Nested Loop  (cost=0.07..134.44 rows=68 width=29) (actual time=206.479..138574.947 rows=68316 loops=1)
                           Buffers: shared hit=902335 read=60420
                           ->  Nested Loop  (cost=0.05..131.06 rows=190 width=33) (actual time=143.147..108809.432 rows=148552 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=311340 read=56607
                                 ->  Nested Loop  (cost=0.04..129.99 rows=34 width=25) (actual time=99.804..99879.591 rows=41840 loops=1)
                                       Buffers: shared hit=141595 read=37534
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=59.328..6532.401 rows=41840 loops=1)
                                             Buffers: shared read=11662
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.667..22.669 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.639..6466.041 rows=41840 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared read=11658
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.227..2.227 rows=1 loops=41840)
                                             Index Cond: (id = mk.movie_id)
                                             Buffers: shared hit=141595 read=25872
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.167..0.206 rows=4 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=169745 read=19073
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.199..0.199 rows=0 loops=148552)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=590995 read=3813
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=1.311..14.931 rows=41 loops=68316)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=2839248 read=185497
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=2 width=20) (actual time=0.029..0.032 rows=1 loops=2832555)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=10601130 read=13499
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=0.096..0.096 rows=1 loops=3710592)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=14793000 read=61547
 Planning Time: 6424.050 ms
 Execution Time: 1624454.203 ms
(47 rows)


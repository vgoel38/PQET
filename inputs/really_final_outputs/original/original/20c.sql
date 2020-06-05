                                                                                                     QUERY PLAN                                                                                                     
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1281.64..1281.64 rows=1 width=64) (actual time=669697.576..669697.577 rows=1 loops=1)
   Buffers: shared hit=612948 read=119396
   ->  Nested Loop  (cost=0.10..1281.64 rows=1 width=32) (actual time=2098.629..669656.606 rows=5406 loops=1)
         Buffers: shared hit=612948 read=119396
         ->  Nested Loop  (cost=0.08..1281.62 rows=1 width=21) (actual time=2082.210..627403.115 rows=5406 loops=1)
               Buffers: shared hit=597450 read=113246
               ->  Nested Loop  (cost=0.07..1281.53 rows=5 width=25) (actual time=1841.911..462386.937 rows=189844 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=328833 read=84711
                     ->  Nested Loop  (cost=0.05..1281.27 rows=1 width=29) (actual time=1792.113..65092.653 rows=1267 loops=1)
                           Join Filter: (t.kind_id = kt.id)
                           Rows Removed by Join Filter: 328
                           Buffers: shared hit=203444 read=20279
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.013 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared hit=1
                           ->  Nested Loop  (cost=0.05..1281.24 rows=3 width=33) (actual time=819.333..65089.978 rows=1595 loops=1)
                                 Buffers: shared hit=203443 read=20279
                                 ->  Nested Loop  (cost=0.04..1280.98 rows=6 width=8) (actual time=94.556..19416.250 rows=6396 loops=1)
                                       Join Filter: (cc.status_id = cct.id)
                                       Rows Removed by Join Filter: 6396
                                       Buffers: shared hit=184319 read=13799
                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.009 rows=2 loops=1)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Rows Removed by Filter: 2
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.04..1280.94 rows=25 width=12) (actual time=47.381..9702.555 rows=6396 loops=2)
                                             Join Filter: (cc.subject_id = cct.id)
                                             Rows Removed by Join Filter: 2996
                                             Buffers: shared hit=184318 read=13799
                                             ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.011 rows=1 loops=2)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Nested Loop  (cost=0.04..1280.90 rows=102 width=16) (actual time=47.362..9693.561 rows=9392 loops=2)
                                                   Buffers: shared hit=184316 read=13799
                                                   ->  Nested Loop  (cost=0.03..1276.16 rows=337 width=4) (actual time=28.279..8131.257 rows=24091 loops=2)
                                                         Buffers: shared hit=21768 read=12761
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=23.473..163.014 rows=10 loops=2)
                                                               Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                               Buffers: shared hit=60 read=23
                                                         ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..121.48 rows=39 width=8) (actual time=12.492..794.979 rows=2409 loops=20)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=21708 read=12738
                                                   ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.044..0.063 rows=0 loops=48182)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=162548 read=1038
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=7.138..7.138 rows=0 loops=6396)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=19124 read=6480
                     ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=24.150..313.251 rows=150 loops=1267)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=125389 read=64432
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.866..0.866 rows=0 loops=189844)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=268617 read=28535
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=7.810..7.810 rows=1 loops=5406)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=15498 read=6150
 Planning Time: 5995.325 ms
 Execution Time: 669698.380 ms
(66 rows)


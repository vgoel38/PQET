                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1282.29..1282.29 rows=1 width=96) (actual time=657940.648..657940.649 rows=1 loops=1)
   Buffers: shared hit=601031 read=117416
   ->  Nested Loop  (cost=0.13..1282.29 rows=1 width=39) (actual time=3521.031..657900.721 rows=5400 loops=1)
         Buffers: shared hit=601031 read=117416
         ->  Nested Loop  (cost=0.12..1282.29 rows=1 width=43) (actual time=3520.956..657780.734 rows=16596 loops=1)
               Join Filter: (t.id = mi_idx.movie_id)
               Buffers: shared hit=567839 read=117416
               ->  Nested Loop  (cost=0.11..1282.27 rows=1 width=49) (actual time=3483.203..639002.255 rows=5406 loops=1)
                     Buffers: shared hit=547062 read=116117
                     ->  Nested Loop  (cost=0.10..1282.26 rows=1 width=53) (actual time=3454.871..617222.148 rows=5406 loops=1)
                           Buffers: shared hit=533156 read=113246
                           ->  Nested Loop  (cost=0.08..1282.01 rows=14 width=41) (actual time=1887.294..451614.948 rows=189844 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=264539 read=84711
                                 ->  Nested Loop  (cost=0.07..1281.74 rows=1 width=29) (actual time=1859.311..60035.863 rows=1267 loops=1)
                                       Buffers: shared hit=139150 read=20279
                                       ->  Nested Loop  (cost=0.06..1281.73 rows=3 width=33) (actual time=875.359..60007.968 rows=1595 loops=1)
                                             Buffers: shared hit=135960 read=20279
                                             ->  Nested Loop  (cost=0.05..1281.48 rows=6 width=8) (actual time=155.020..20547.246 rows=6396 loops=1)
                                                   Buffers: shared hit=116836 read=13799
                                                   ->  Nested Loop  (cost=0.04..1281.36 rows=26 width=12) (actual time=155.001..20500.471 rows=6396 loops=1)
                                                         Buffers: shared hit=104044 read=13799
                                                         ->  Nested Loop  (cost=0.04..1280.91 rows=102 width=16) (actual time=154.964..20409.310 rows=9392 loops=1)
                                                               Buffers: shared hit=85260 read=13799
                                                               ->  Nested Loop  (cost=0.03..1276.18 rows=337 width=4) (actual time=59.401..16933.777 rows=24091 loops=1)
                                                                     Buffers: shared hit=4505 read=12761
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=19.623..309.239 rows=10 loops=1)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                                           Buffers: shared hit=20 read=23
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.48 rows=39 width=8) (actual time=34.322..1660.049 rows=2409 loops=10)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=4485 read=12738
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.097..0.142 rows=0 loops=24091)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=80755 read=1038
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=9392)
                                                               Index Cond: (id = cc.subject_id)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=18784
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=6396)
                                                         Index Cond: (id = cc.status_id)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Buffers: shared hit=12792
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=6.167..6.167 rows=0 loops=6396)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=19124 read=6480
                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1595)
                                             Index Cond: (id = t.kind_id)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=3190
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=16.079..308.733 rows=150 loops=1267)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=125389 read=64432
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=0.869..0.869 rows=0 loops=189844)
                                 Index Cond: (id = ci.person_role_id)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=268617 read=28535
                     ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=4.024..4.024 rows=1 loops=5406)
                           Index Cond: (id = ci.person_id)
                           Heap Fetches: 0
                           Buffers: shared hit=13906 read=2871
               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.01 rows=3 width=14) (actual time=3.457..3.466 rows=3 loops=5406)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=20777 read=1299
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=16596)
               Index Cond: (id = mi_idx.info_type_id)
               Filter: ((info)::text = 'rating'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=33192
 Planning Time: 10370.408 ms
 Execution Time: 657976.834 ms
(76 rows)


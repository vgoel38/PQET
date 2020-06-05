                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1282.12..1282.12 rows=1 width=64) (actual time=650968.388..650968.388 rows=1 loops=1)
   Buffers: shared hit=548654 read=119396
   ->  Nested Loop  (cost=0.11..1282.12 rows=1 width=32) (actual time=3348.577..650930.921 rows=5406 loops=1)
         Buffers: shared hit=548654 read=119396
         ->  Nested Loop  (cost=0.10..1282.10 rows=1 width=21) (actual time=3332.172..608952.238 rows=5406 loops=1)
               Buffers: shared hit=533156 read=113246
               ->  Nested Loop  (cost=0.08..1282.01 rows=5 width=25) (actual time=1772.936..443820.417 rows=189844 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=264539 read=84711
                     ->  Nested Loop  (cost=0.07..1281.74 rows=1 width=29) (actual time=1744.941..60166.933 rows=1267 loops=1)
                           Buffers: shared hit=139150 read=20279
                           ->  Nested Loop  (cost=0.06..1281.73 rows=3 width=33) (actual time=794.306..60138.821 rows=1595 loops=1)
                                 Buffers: shared hit=135960 read=20279
                                 ->  Nested Loop  (cost=0.05..1281.48 rows=6 width=8) (actual time=115.458..20443.949 rows=6396 loops=1)
                                       Buffers: shared hit=116836 read=13799
                                       ->  Nested Loop  (cost=0.04..1281.36 rows=26 width=12) (actual time=115.439..20396.628 rows=6396 loops=1)
                                             Buffers: shared hit=104044 read=13799
                                             ->  Nested Loop  (cost=0.04..1280.91 rows=102 width=16) (actual time=115.402..20303.707 rows=9392 loops=1)
                                                   Buffers: shared hit=85260 read=13799
                                                   ->  Nested Loop  (cost=0.03..1276.18 rows=337 width=4) (actual time=47.778..16841.426 rows=24091 loops=1)
                                                         Buffers: shared hit=4505 read=12761
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=20.735..305.725 rows=10 loops=1)
                                                               Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                               Buffers: shared hit=20 read=23
                                                         ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.48 rows=39 width=8) (actual time=33.054..1651.086 rows=2409 loops=10)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=4485 read=12738
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.094..0.141 rows=0 loops=24091)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=80755 read=1038
                                             ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=9392)
                                                   Index Cond: (id = cc.subject_id)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=18784
                                       ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=6396)
                                             Index Cond: (id = cc.status_id)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Buffers: shared hit=12792
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=6.204..6.204 rows=0 loops=6396)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=19124 read=6480
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1595)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=3190
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=16.048..302.486 rows=150 loops=1267)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=125389 read=64432
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.867..0.867 rows=0 loops=189844)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=268617 read=28535
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=7.759..7.759 rows=1 loops=5406)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=15498 read=6150
 Planning Time: 6184.748 ms
 Execution Time: 650989.514 ms
(62 rows)


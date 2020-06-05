                                                                                                   QUERY PLAN                                                                                                    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1030.09..1030.09 rows=1 width=32) (actual time=1036194.626..1036194.627 rows=1 loops=1)
   Buffers: shared hit=1606949 read=195384
   ->  Nested Loop  (cost=0.11..1030.09 rows=1 width=17) (actual time=64690.454..1036194.457 rows=33 loops=1)
         Buffers: shared hit=1606949 read=195384
         ->  Nested Loop  (cost=0.10..1030.07 rows=1 width=21) (actual time=64650.989..1036129.513 rows=33 loops=1)
               Buffers: shared hit=1606859 read=195374
               ->  Nested Loop  (cost=0.08..1029.97 rows=6 width=25) (actual time=1806.321..819329.616 rows=532809 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=628635 read=151414
                     ->  Nested Loop  (cost=0.07..1029.70 rows=1 width=29) (actual time=1778.340..73635.043 rows=6016 loops=1)
                           Buffers: shared hit=212579 read=23645
                           ->  Nested Loop  (cost=0.06..1029.68 rows=5 width=33) (actual time=177.998..73516.275 rows=7363 loops=1)
                                 Buffers: shared hit=197853 read=23645
                                 ->  Nested Loop  (cost=0.05..1029.47 rows=5 width=8) (actual time=132.202..23939.070 rows=8765 loops=1)
                                       Buffers: shared hit=170466 read=15952
                                       ->  Nested Loop  (cost=0.04..1029.38 rows=20 width=12) (actual time=132.183..23875.973 rows=8765 loops=1)
                                             Buffers: shared hit=152936 read=15952
                                             ->  Nested Loop  (cost=0.04..1029.02 rows=82 width=16) (actual time=132.146..23753.848 rows=12810 loops=1)
                                                   Buffers: shared hit=127316 read=15952
                                                   ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=4) (actual time=64.499..19586.548 rows=35548 loops=1)
                                                         Buffers: shared hit=8737 read=14908
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=38.641..278.335 rows=8 loops=1)
                                                               Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                               Buffers: shared hit=15 read=20
                                                         ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=28.558..2409.456 rows=4444 loops=8)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=8722 read=14888
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.075..0.115 rows=0 loops=35548)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=118579 read=1044
                                             ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=12810)
                                                   Index Cond: (id = cc.subject_id)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=25620
                                       ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=8765)
                                             Index Cond: (id = cc.status_id)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Buffers: shared hit=17530
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=5.653..5.653 rows=1 loops=8765)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 1950)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=27387 read=7693
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=7363)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=14726
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=9.020..123.808 rows=89 loops=6016)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=416056 read=127769
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.405..0.405 rows=0 loops=532809)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=978224 read=43960
         ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=1.964..1.964 rows=1 loops=33)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=90 read=10
 Planning Time: 6234.951 ms
 Execution Time: 1036215.523 ms
(63 rows)


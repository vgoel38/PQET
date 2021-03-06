                                                                                                   QUERY PLAN                                                                                                    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1030.05..1030.05 rows=1 width=32) (actual time=639664.210..639664.211 rows=1 loops=1)
   Buffers: shared hit=675311 read=121791
   ->  Nested Loop  (cost=0.11..1030.05 rows=1 width=17) (actual time=38523.232..639664.101 rows=17 loops=1)
         Buffers: shared hit=675311 read=121791
         ->  Nested Loop  (cost=0.10..1030.03 rows=1 width=21) (actual time=38500.061..639594.186 rows=33 loops=1)
               Buffers: shared hit=675193 read=121777
               ->  Nested Loop  (cost=0.08..1029.96 rows=4 width=25) (actual time=1945.529..468160.311 rows=222518 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=355779 read=91722
                     ->  Nested Loop  (cost=0.07..1029.69 rows=1 width=29) (actual time=1917.532..63993.661 rows=1472 loops=1)
                           Buffers: shared hit=201610 read=23646
                           ->  Nested Loop  (cost=0.06..1029.68 rows=3 width=33) (actual time=808.628..63963.008 rows=1872 loops=1)
                                 Buffers: shared hit=197866 read=23646
                                 ->  Nested Loop  (cost=0.05..1029.47 rows=5 width=8) (actual time=129.719..20917.075 rows=8765 loops=1)
                                       Buffers: shared hit=170466 read=15952
                                       ->  Nested Loop  (cost=0.04..1029.38 rows=20 width=12) (actual time=129.712..20857.487 rows=8765 loops=1)
                                             Buffers: shared hit=152936 read=15952
                                             ->  Nested Loop  (cost=0.04..1029.02 rows=82 width=16) (actual time=129.695..20742.209 rows=12810 loops=1)
                                                   Buffers: shared hit=127316 read=15952
                                                   ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=4) (actual time=62.082..17551.609 rows=35548 loops=1)
                                                         Buffers: shared hit=8737 read=14908
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=36.222..257.664 rows=8 loops=1)
                                                               Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                               Buffers: shared hit=15 read=20
                                                         ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=28.546..2157.838 rows=4444 loops=8)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=8722 read=14888
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.057..0.087 rows=0 loops=35548)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=118579 read=1044
                                             ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=12810)
                                                   Index Cond: (id = cc.subject_id)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=25620
                                       ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=8765)
                                             Index Cond: (id = cc.status_id)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Buffers: shared hit=17530
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=4.909..4.909 rows=0 loops=8765)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=27400 read=7694
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1872)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=3744
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=14.939..274.262 rows=151 loops=1472)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=154169 read=68076
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.768..0.768 rows=0 loops=222518)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=319414 read=30055
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=2.115..2.115 rows=1 loops=33)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=118 read=14
 Planning Time: 6070.664 ms
 Execution Time: 639664.673 ms
(64 rows)


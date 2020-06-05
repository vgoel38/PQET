                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1282.30..1282.30 rows=1 width=128) (actual time=313645.873..313645.874 rows=1 loops=1)
   Buffers: shared hit=259916 read=63170
   ->  Nested Loop  (cost=0.13..1282.30 rows=1 width=54) (actual time=2720.699..313624.380 rows=1728 loops=1)
         Buffers: shared hit=259916 read=63170
         ->  Nested Loop  (cost=0.11..1282.28 rows=1 width=43) (actual time=2706.769..300642.534 rows=1728 loops=1)
               Buffers: shared hit=254934 read=61237
               ->  Nested Loop  (cost=0.10..1282.04 rows=14 width=31) (actual time=2008.228..222823.628 rows=58947 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=175749 read=48367
                     ->  Nested Loop  (cost=0.08..1281.77 rows=1 width=39) (actual time=1967.752..68347.959 rows=326 loops=1)
                           Buffers: shared hit=143772 read=21803
                           ->  Nested Loop  (cost=0.08..1281.77 rows=1 width=43) (actual time=1781.222..68340.223 rows=507 loops=1)
                                 Join Filter: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=142758 read=21803
                                 ->  Nested Loop  (cost=0.07..1281.74 rows=1 width=29) (actual time=1744.982..54829.040 rows=1267 loops=1)
                                       Buffers: shared hit=139150 read=20279
                                       ->  Nested Loop  (cost=0.06..1281.73 rows=3 width=33) (actual time=786.037..54804.315 rows=1595 loops=1)
                                             Buffers: shared hit=135960 read=20279
                                             ->  Nested Loop  (cost=0.05..1281.48 rows=6 width=8) (actual time=115.509..19787.840 rows=6396 loops=1)
                                                   Buffers: shared hit=116836 read=13799
                                                   ->  Nested Loop  (cost=0.04..1281.36 rows=26 width=12) (actual time=115.488..19745.162 rows=6396 loops=1)
                                                         Buffers: shared hit=104044 read=13799
                                                         ->  Nested Loop  (cost=0.04..1280.91 rows=102 width=16) (actual time=115.445..19661.941 rows=9392 loops=1)
                                                               Buffers: shared hit=85260 read=13799
                                                               ->  Nested Loop  (cost=0.03..1276.18 rows=337 width=4) (actual time=47.812..17055.685 rows=24091 loops=1)
                                                                     Buffers: shared hit=4505 read=12761
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=20.765..303.372 rows=10 loops=1)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                                           Buffers: shared hit=20 read=23
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.48 rows=39 width=8) (actual time=33.893..1672.954 rows=2409 loops=10)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=4485 read=12738
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.073..0.106 rows=0 loops=24091)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=80755 read=1038
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=9392)
                                                               Index Cond: (id = cc.subject_id)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=18784
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=6396)
                                                         Index Cond: (id = cc.status_id)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Buffers: shared hit=12792
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=5.472..5.472 rows=0 loops=6396)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=19124 read=6480
                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1595)
                                             Index Cond: (id = t.kind_id)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=3190
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=10.626..10.661 rows=0 loops=1267)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info > '7.0'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=3608 read=1524
                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=507)
                                 Index Cond: (id = mi_idx.info_type_id)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=1014
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=21.837..473.415 rows=181 loops=326)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=31977 read=26564
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=1.317..1.317 rows=0 loops=58947)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=79185 read=12870
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=7.506..7.506 rows=1 loops=1728)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=4982 read=1933
 Planning Time: 10403.628 ms
 Execution Time: 313661.008 ms
(77 rows)


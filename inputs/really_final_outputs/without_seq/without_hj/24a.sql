                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=393.42..393.42 rows=1 width=96) (actual time=199349.509..199349.510 rows=1 loops=1)
   Buffers: shared hit=258457 read=37360
   ->  Nested Loop  (cost=0.15..393.42 rows=1 width=48) (actual time=13851.677..199349.030 rows=275 loops=1)
         Buffers: shared hit=258457 read=37360
         ->  Nested Loop  (cost=0.13..393.40 rows=1 width=52) (actual time=13752.556..198568.084 rows=892 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=254952 read=37295
               ->  Nested Loop  (cost=0.12..393.37 rows=1 width=64) (actual time=13714.110..198343.151 rows=65 loops=1)
                     Buffers: shared hit=254656 read=37276
                     ->  Nested Loop  (cost=0.12..393.37 rows=1 width=68) (actual time=13714.067..198342.614 rows=65 loops=1)
                           Join Filter: (ci.person_id = n.id)
                           Buffers: shared hit=254526 read=37276
                           ->  Nested Loop  (cost=0.10..393.11 rows=1 width=61) (actual time=5152.636..190146.269 rows=12691 loops=1)
                                 Buffers: shared hit=204962 read=36041
                                 ->  Nested Loop  (cost=0.10..393.11 rows=1 width=65) (actual time=5152.585..190071.086 rows=12691 loops=1)
                                       Buffers: shared hit=179580 read=36041
                                       ->  Nested Loop  (cost=0.08..392.93 rows=1 width=53) (actual time=5122.008..180127.964 rows=12761 loops=1)
                                             Buffers: shared hit=130060 read=34696
                                             ->  Nested Loop  (cost=0.07..392.90 rows=1 width=49) (actual time=5074.924..174501.356 rows=4439 loops=1)
                                                   Join Filter: (t.id = ci.movie_id)
                                                   Buffers: shared hit=117407 read=33973
                                                   ->  Nested Loop  (cost=0.05..392.38 rows=2 width=33) (actual time=148.224..73567.052 rows=738 loops=1)
                                                         Join Filter: (t.id = mi.movie_id)
                                                         Buffers: shared hit=38295 read=16080
                                                         ->  Nested Loop  (cost=0.04..389.92 rows=16 width=25) (actual time=96.193..41677.629 rows=495 loops=1)
                                                               Buffers: shared hit=34647 read=11704
                                                               ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=56.243..11193.850 rows=9696 loops=1)
                                                                     Buffers: shared hit=2985 read=4512
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=14.176..61.359 rows=3 loops=1)
                                                                           Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                           Buffers: shared hit=7 read=8
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=27.782..3706.385 rows=3232 loops=3)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=2978 read=4504
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.140..3.140 rows=0 loops=9696)
                                                                     Index Cond: (id = mk.movie_id)
                                                                     Filter: (production_year > 2010)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=31662 read=7192
                                                         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=34.540..64.416 rows=1 loops=495)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                               Rows Removed by Filter: 70
                                                               Buffers: shared hit=3648 read=4376
                                                   ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=94.545..136.753 rows=6 loops=738)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 128
                                                         Buffers: shared hit=79112 read=17893
                                             ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=1.262..1.263 rows=3 loops=4439)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=12653 read=723
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.777..0.777 rows=1 loops=12761)
                                             Index Cond: (id = ci.person_role_id)
                                             Buffers: shared hit=49520 read=1345
                                 ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=12691)
                                       Index Cond: (id = mi.info_type_id)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Buffers: shared hit=25382
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.645..0.645 rows=0 loops=12691)
                                 Index Cond: (id = an.person_id)
                                 Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=49564 read=1235
                     ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=65)
                           Index Cond: (id = ci.role_id)
                           Filter: ((role)::text = 'actress'::text)
                           Buffers: shared hit=130
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=2.785..3.448 rows=14 loops=65)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=296 read=19
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.874..0.874 rows=0 loops=892)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=3505 read=65
 Planning Time: 11403.113 ms
 Execution Time: 199377.854 ms
(79 rows)


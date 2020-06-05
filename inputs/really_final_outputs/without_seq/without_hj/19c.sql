                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=41938.43..41938.43 rows=1 width=64) (actual time=142729.112..142729.112 rows=1 loops=1)
   Buffers: shared hit=3669324 read=95738
   ->  Nested Loop  (cost=0.12..41938.43 rows=1 width=32) (actual time=1764.748..142712.416 rows=3575 loops=1)
         Buffers: shared hit=3669324 read=95738
         ->  Nested Loop  (cost=0.11..41938.12 rows=64 width=36) (actual time=1764.703..142688.439 rows=3575 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=3662174 read=95738
               ->  Nested Loop  (cost=0.10..41911.67 rows=104 width=44) (actual time=1697.925..113990.819 rows=4111 loops=1)
                     Buffers: shared hit=3610073 read=91915
                     ->  Nested Loop  (cost=0.09..41899.46 rows=191 width=23) (actual time=1656.540..92479.141 rows=8144 loops=1)
                           Buffers: shared hit=3578836 read=90537
                           ->  Nested Loop  (cost=0.07..41890.03 rows=529 width=27) (actual time=1056.728..77619.939 rows=18345 loops=1)
                                 Buffers: shared hit=3507066 read=88894
                                 ->  Nested Loop  (cost=0.06..41860.99 rows=275 width=19) (actual time=1015.327..50570.472 rows=7726 loops=1)
                                       Join Filter: (ci.person_id = n.id)
                                       Buffers: shared hit=3479172 read=86820
                                       ->  Nested Loop  (cost=0.05..34129.44 rows=30437 width=12) (actual time=185.556..39441.143 rows=483319 loops=1)
                                             Buffers: shared hit=1548768 read=77887
                                             ->  Nested Loop  (cost=0.04..33343.32 rows=35008 width=8) (actual time=90.373..37664.501 rows=255651 loops=1)
                                                   Buffers: shared hit=781605 read=77335
                                                   ->  Nested Loop  (cost=0.02..29509.08 rows=72136 width=12) (actual time=55.220..6207.076 rows=276166 loops=1)
                                                         Buffers: shared hit=2 read=69446
                                                         ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                                               Index Cond: ((role)::text = 'actress'::text)
                                                               Buffers: shared hit=1 read=1
                                                         ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29497.51 rows=78694 width=16) (actual time=55.179..6101.895 rows=276166 loops=1)
                                                               Index Cond: (role_id = rt.id)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 7175807
                                                               Buffers: shared hit=1 read=69445
                                                   ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..0.05 rows=1 width=4) (actual time=0.113..0.113 rows=1 loops=276166)
                                                         Index Cond: (id = ci.person_role_id)
                                                         Heap Fetches: 0
                                                         Buffers: shared hit=781603 read=7889
                                             ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=0.005..0.006 rows=2 loops=255651)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=767163 read=552
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.022..0.022 rows=0 loops=483319)
                                             Index Cond: (id = an.person_id)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=1930404 read=8933
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=2.739..3.498 rows=2 loops=7726)
                                       Index Cond: (movie_id = ci.movie_id)
                                       Buffers: shared hit=27894 read=2074
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.808..0.808 rows=0 loops=18345)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=71770 read=1643
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=2.640..2.640 rows=1 loops=8144)
                           Index Cond: (id = mc.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=31237 read=1378
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=4.382..6.978 rows=1 loops=4111)
                     Index Cond: (movie_id = mc.movie_id)
                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                     Rows Removed by Filter: 55
                     Buffers: shared hit=52101 read=3823
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=3575)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Buffers: shared hit=7150
 Planning Time: 7272.797 ms
 Execution Time: 142745.479 ms
(67 rows)


                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23796.55..23796.55 rows=1 width=64) (actual time=13522.453..13522.453 rows=1 loops=1)
   Buffers: shared hit=2501664 read=43325
   ->  Nested Loop  (cost=0.12..23796.55 rows=1 width=32) (actual time=9829.932..13522.409 rows=15 loops=1)
         Buffers: shared hit=2501664 read=43325
         ->  Nested Loop  (cost=0.12..23796.54 rows=1 width=36) (actual time=9829.888..13522.296 rows=15 loops=1)
               Join Filter: (ci.person_id = n.id)
               Buffers: shared hit=2501634 read=43325
               ->  Nested Loop  (cost=0.10..23796.29 rows=1 width=29) (actual time=8853.609..13165.127 rows=275 loops=1)
                     Buffers: shared hit=2500595 read=43264
                     ->  Nested Loop  (cost=0.10..23796.28 rows=1 width=33) (actual time=8853.566..13163.552 rows=275 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=2500045 read=43264
                           ->  Nested Loop  (cost=0.08..23795.39 rows=1 width=41) (actual time=8790.457..12880.836 rows=275 loops=1)
                                 Buffers: shared hit=2492422 read=43230
                                 ->  Nested Loop  (cost=0.07..23795.26 rows=1 width=45) (actual time=8745.010..12753.888 rows=275 loops=1)
                                       Buffers: shared hit=2491327 read=43225
                                       ->  Nested Loop  (cost=0.06..23795.20 rows=1 width=49) (actual time=8715.160..12372.441 rows=275 loops=1)
                                             Buffers: shared hit=2490540 read=43185
                                             ->  Nested Loop  (cost=0.04..23795.17 rows=1 width=45) (actual time=8677.798..11931.069 rows=100 loops=1)
                                                   Join Filter: (t.id = ci.movie_id)
                                                   Buffers: shared hit=2490282 read=43142
                                                   ->  Nested Loop  (cost=0.03..23785.07 rows=1 width=29) (actual time=8646.433..10578.164 rows=4 loops=1)
                                                         Buffers: shared hit=2489889 read=42917
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=18 width=21) (actual time=759.379..10400.462 rows=7 loops=1)
                                                               Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                               Rows Removed by Filter: 2528305
                                                               Buffers: shared hit=2489874 read=42904
                                                         ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..8.56 rows=1 width=8) (actual time=24.250..25.375 rows=1 loops=7)
                                                               Index Cond: (movie_id = t.id)
                                                               Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                               Rows Removed by Filter: 6
                                                               Buffers: shared hit=15 read=13
                                                   ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..10.10 rows=1 width=16) (actual time=7.873..338.167 rows=25 loops=4)
                                                         Index Cond: (movie_id = mc.movie_id)
                                                         Filter: (note = '(voice)'::text)
                                                         Rows Removed by Filter: 127
                                                         Buffers: shared hit=393 read=225
                                             ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=4.406..4.408 rows=3 loops=100)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=258 read=43
                                       ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..0.06 rows=1 width=4) (actual time=1.384..1.384 rows=1 loops=275)
                                             Index Cond: (id = ci.person_role_id)
                                             Heap Fetches: 0
                                             Buffers: shared hit=787 read=40
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.14 rows=1 width=4) (actual time=0.459..0.459 rows=1 loops=275)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Buffers: shared hit=1095 read=5
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.89 rows=1 width=8) (actual time=0.273..1.026 rows=1 loops=275)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                 Rows Removed by Filter: 295
                                 Buffers: shared hit=7623 read=34
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=275)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'release dates'::text)
                           Buffers: shared hit=550
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=1.298..1.298 rows=0 loops=275)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=1039 read=61
         ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=15)
               Index Cond: (id = ci.role_id)
               Filter: ((role)::text = 'actress'::text)
               Buffers: shared hit=30
 Planning Time: 7481.373 ms
 Execution Time: 13522.966 ms
(69 rows)


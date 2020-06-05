                                                                                                                    QUERY PLAN                                                                                                                     
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13.68..13.68 rows=1 width=96) (actual time=2671.853..2671.853 rows=1 loops=1)
   Buffers: shared hit=15656 read=526
   ->  Nested Loop  (cost=0.18..13.68 rows=1 width=48) (actual time=1456.154..2671.770 rows=15 loops=1)
         Buffers: shared hit=15656 read=526
         ->  Nested Loop  (cost=0.18..13.68 rows=1 width=52) (actual time=1452.851..2663.706 rows=2445 loops=1)
               Join Filter: (n.id = pi.person_id)
               Buffers: shared hit=10766 read=526
               ->  Nested Loop  (cost=0.17..13.46 rows=1 width=60) (actual time=1421.862..2627.478 rows=15 loops=1)
                     Buffers: shared hit=10583 read=514
                     ->  Nested Loop  (cost=0.16..13.46 rows=1 width=64) (actual time=1421.796..2627.357 rows=15 loops=1)
                           Buffers: shared hit=10553 read=514
                           ->  Nested Loop  (cost=0.15..13.09 rows=1 width=52) (actual time=1382.916..2588.375 rows=15 loops=1)
                                 Buffers: shared hit=10496 read=511
                                 ->  Nested Loop  (cost=0.15..13.09 rows=1 width=56) (actual time=1382.890..2588.287 rows=15 loops=1)
                                       Buffers: shared hit=10466 read=511
                                       ->  Nested Loop  (cost=0.14..13.09 rows=1 width=60) (actual time=1382.863..2588.198 rows=15 loops=1)
                                             Buffers: shared hit=10436 read=511
                                             ->  Nested Loop  (cost=0.14..13.08 rows=1 width=64) (actual time=1382.819..2588.096 rows=15 loops=1)
                                                   Join Filter: (t.id = cc.movie_id)
                                                   Buffers: shared hit=10406 read=511
                                                   ->  Nested Loop  (cost=0.12..13.07 rows=1 width=76) (actual time=1342.177..2547.343 rows=15 loops=1)
                                                         Join Filter: (ci.person_id = n.id)
                                                         Buffers: shared hit=10348 read=509
                                                         ->  Nested Loop  (cost=0.11..12.81 rows=1 width=57) (actual time=360.917..2236.569 rows=330 loops=1)
                                                               Buffers: shared hit=9070 read=467
                                                               ->  Nested Loop  (cost=0.10..12.79 rows=1 width=61) (actual time=351.945..1910.082 rows=1452 loops=1)
                                                                     Join Filter: (t.id = mc.movie_id)
                                                                     Buffers: shared hit=3296 read=433
                                                                     ->  Nested Loop  (cost=0.08..12.76 rows=1 width=53) (actual time=312.601..1860.320 rows=66 loops=1)
                                                                           Join Filter: (t.id = mi.movie_id)
                                                                           Buffers: shared hit=2970 read=429
                                                                           ->  Nested Loop  (cost=0.07..12.61 rows=1 width=45) (actual time=247.274..1646.152 rows=66 loops=1)
                                                                                 Buffers: shared hit=499 read=392
                                                                                 ->  Nested Loop  (cost=0.06..12.59 rows=1 width=41) (actual time=178.607..1398.082 rows=38 loops=1)
                                                                                       Join Filter: (t.id = ci.movie_id)
                                                                                       Buffers: shared hit=415 read=360
                                                                                       ->  Nested Loop  (cost=0.04..12.32 rows=1 width=25) (actual time=140.580..299.453 rows=1 loops=1)
                                                                                             Buffers: shared hit=413 read=145
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=87.712..112.871 rows=136 loops=1)
                                                                                                   Buffers: shared hit=5 read=9
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=43.708..68.609 rows=2 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                                         Rows Removed by Filter: 1
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=22.010..22.063 rows=68 loops=2)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=5 read=3
                                                                                             ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.370..1.370 rows=0 loops=136)
                                                                                                   Index Cond: (id = mk.keyword_id)
                                                                                                   Filter: (keyword = 'computer-animation'::text)
                                                                                                   Rows Removed by Filter: 1
                                                                                                   Buffers: shared hit=408 read=136
                                                                                       ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=38.015..1098.498 rows=38 loops=1)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                             Rows Removed by Filter: 191
                                                                                             Buffers: shared hit=2 read=215
                                                                                 ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=6.514..6.521 rows=2 loops=38)
                                                                                       Index Cond: (person_id = ci.person_id)
                                                                                       Heap Fetches: 0
                                                                                       Buffers: shared hit=84 read=32
                                                                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=1.045..3.241 rows=1 loops=66)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: (info ~~ 'USA:%200%'::text)
                                                                                 Rows Removed by Filter: 456
                                                                                 Buffers: shared hit=2471 read=37
                                                                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.606..0.729 rows=22 loops=66)
                                                                           Index Cond: (movie_id = mk.movie_id)
                                                                           Buffers: shared hit=326 read=4
                                                               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.224..0.224 rows=0 loops=1452)
                                                                     Index Cond: (id = mc.company_id)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=5774 read=34
                                                         ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.940..0.940 rows=0 loops=330)
                                                               Index Cond: (id = an.person_id)
                                                               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=1278 read=42
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=2.714..2.714 rows=1 loops=15)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=58 read=2
                                             ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=15)
                                                   Index Cond: (id = cc.status_id)
                                                   Filter: ((kind)::text = 'complete+verified'::text)
                                                   Buffers: shared hit=30
                                       ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=15)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Buffers: shared hit=30
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=15)
                                       Index Cond: (id = ci.role_id)
                                       Filter: ((role)::text = 'actress'::text)
                                       Buffers: shared hit=30
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=2.597..2.597 rows=1 loops=15)
                                 Index Cond: (id = ci.person_role_id)
                                 Filter: (name = 'Queen'::text)
                                 Buffers: shared hit=57 read=3
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=15)
                           Index Cond: (id = cc.subject_id)
                           Filter: ((kind)::text = 'cast'::text)
                           Buffers: shared hit=30
               ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=2.070..2.322 rows=163 loops=15)
                     Index Cond: (person_id = an.person_id)
                     Buffers: shared hit=183 read=12
         ->  Index Scan using info_type_pkey on info_type it3  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=2445)
               Index Cond: (id = pi.info_type_id)
               Filter: ((info)::text = 'height'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=4890
 Planning Time: 20210.686 ms
 Execution Time: 2700.409 ms
(113 rows)


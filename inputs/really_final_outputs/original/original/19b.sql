                                                                                                QUERY PLAN                                                                                                
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2058.74..2058.74 rows=1 width=64) (actual time=5845.633..5845.634 rows=1 loops=1)
   Buffers: shared hit=11816 read=36480
   ->  Nested Loop  (cost=0.10..2058.73 rows=1 width=32) (actual time=3370.300..5845.581 rows=15 loops=1)
         Join Filter: (ci.role_id = rt.id)
         Buffers: shared hit=11816 read=36480
         ->  Nested Loop  (cost=0.10..2058.70 rows=1 width=36) (actual time=3370.274..5845.500 rows=15 loops=1)
               Join Filter: (ci.person_id = n.id)
               Buffers: shared hit=11801 read=36480
               ->  Nested Loop  (cost=0.08..2058.45 rows=1 width=29) (actual time=1944.018..5475.259 rows=275 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Buffers: shared hit=10762 read=36419
                     ->  Nested Loop  (cost=0.08..2058.40 rows=1 width=33) (actual time=1943.982..5471.737 rows=275 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=10487 read=36419
                           ->  Nested Loop  (cost=0.07..2057.51 rows=1 width=41) (actual time=1864.217..5162.125 rows=275 loops=1)
                                 Buffers: shared hit=2864 read=36385
                                 ->  Nested Loop  (cost=0.06..2057.38 rows=1 width=45) (actual time=1820.820..5047.615 rows=275 loops=1)
                                       Buffers: shared hit=1769 read=36380
                                       ->  Nested Loop  (cost=0.04..2057.16 rows=1 width=49) (actual time=1795.693..4624.657 rows=275 loops=1)
                                             Buffers: shared hit=732 read=36317
                                             ->  Nested Loop  (cost=0.03..2057.08 rows=1 width=45) (actual time=1743.215..3421.815 rows=100 loops=1)
                                                   Join Filter: (t.id = ci.movie_id)
                                                   Buffers: shared hit=409 read=36235
                                                   ->  Nested Loop  (cost=0.01..2046.98 rows=1 width=29) (actual time=1686.849..2014.765 rows=4 loops=1)
                                                         Buffers: shared hit=16 read=36010
                                                         ->  Seq Scan on title t  (cost=0.00..1892.85 rows=18 width=21) (actual time=161.747..1806.844 rows=7 loops=1)
                                                               Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                               Rows Removed by Filter: 2528305
                                                               Buffers: shared hit=1 read=35997
                                                         ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..8.56 rows=1 width=8) (actual time=29.686..29.691 rows=1 loops=7)
                                                               Index Cond: (movie_id = t.id)
                                                               Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                               Rows Removed by Filter: 6
                                                               Buffers: shared hit=15 read=13
                                                   ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..10.10 rows=1 width=16) (actual time=14.114..351.706 rows=25 loops=4)
                                                         Index Cond: (movie_id = mc.movie_id)
                                                         Filter: (note = '(voice)'::text)
                                                         Rows Removed by Filter: 127
                                                         Buffers: shared hit=393 read=225
                                             ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.07 rows=2 width=4) (actual time=10.715..12.022 rows=3 loops=100)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Buffers: shared hit=323 read=82
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.22 rows=1 width=4) (actual time=1.535..1.535 rows=1 loops=275)
                                             Index Cond: (id = ci.person_role_id)
                                             Buffers: shared hit=1037 read=63
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.14 rows=1 width=4) (actual time=0.414..0.414 rows=1 loops=275)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Buffers: shared hit=1095 read=5
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.89 rows=1 width=8) (actual time=0.340..1.124 rows=1 loops=275)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                 Rows Removed by Filter: 295
                                 Buffers: shared hit=7623 read=34
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=275)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 15
                           Buffers: shared hit=275
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=1.345..1.345 rows=0 loops=275)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=1039 read=61
         ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=15)
               Filter: ((role)::text = 'actress'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=15
 Planning Time: 7164.209 ms
 Execution Time: 5871.521 ms
(69 rows)


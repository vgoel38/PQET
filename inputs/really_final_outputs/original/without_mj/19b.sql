                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2058.73..2058.73 rows=1 width=64) (actual time=5482.542..5482.542 rows=1 loops=1)
   Buffers: shared hit=11801 read=36495
   ->  Nested Loop  (cost=0.10..2058.73 rows=1 width=32) (actual time=3160.496..5482.493 rows=15 loops=1)
         Join Filter: (ci.role_id = rt.id)
         Buffers: shared hit=11801 read=36495
         ->  Nested Loop  (cost=0.10..2058.70 rows=1 width=36) (actual time=3140.587..5462.522 rows=15 loops=1)
               Join Filter: (ci.person_id = n.id)
               Buffers: shared hit=11787 read=36494
               ->  Nested Loop  (cost=0.08..2058.45 rows=1 width=29) (actual time=1914.683..5067.786 rows=275 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Buffers: shared hit=10749 read=36432
                     ->  Nested Loop  (cost=0.08..2058.40 rows=1 width=33) (actual time=1889.285..5038.849 rows=275 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=10475 read=36431
                           ->  Nested Loop  (cost=0.07..2057.51 rows=1 width=41) (actual time=1826.191..4746.668 rows=275 loops=1)
                                 Buffers: shared hit=2853 read=36396
                                 ->  Nested Loop  (cost=0.06..2057.38 rows=1 width=45) (actual time=1766.116..4605.714 rows=275 loops=1)
                                       Buffers: shared hit=1760 read=36389
                                       ->  Nested Loop  (cost=0.04..2057.16 rows=1 width=49) (actual time=1732.653..4157.369 rows=275 loops=1)
                                             Buffers: shared hit=725 read=36324
                                             ->  Nested Loop  (cost=0.03..2057.08 rows=1 width=45) (actual time=1688.508..3278.763 rows=100 loops=1)
                                                   Join Filter: (t.id = ci.movie_id)
                                                   Buffers: shared hit=404 read=36240
                                                   ->  Nested Loop  (cost=0.01..2046.98 rows=1 width=29) (actual time=1632.085..1959.039 rows=4 loops=1)
                                                         Buffers: shared hit=13 read=36013
                                                         ->  Seq Scan on title t  (cost=0.00..1892.85 rows=18 width=21) (actual time=148.697..1791.072 rows=7 loops=1)
                                                               Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                               Rows Removed by Filter: 2528305
                                                               Buffers: shared read=35998
                                                         ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..8.56 rows=1 width=8) (actual time=23.977..23.983 rows=1 loops=7)
                                                               Index Cond: (movie_id = t.id)
                                                               Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                               Rows Removed by Filter: 6
                                                               Buffers: shared hit=13 read=15
                                                   ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..10.10 rows=1 width=16) (actual time=14.127..329.875 rows=25 loops=4)
                                                         Index Cond: (movie_id = mc.movie_id)
                                                         Filter: (note = '(voice)'::text)
                                                         Rows Removed by Filter: 127
                                                         Buffers: shared hit=391 read=227
                                             ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.07 rows=2 width=4) (actual time=7.323..8.779 rows=3 loops=100)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Buffers: shared hit=321 read=84
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.22 rows=1 width=4) (actual time=1.627..1.627 rows=1 loops=275)
                                             Index Cond: (id = ci.person_role_id)
                                             Buffers: shared hit=1035 read=65
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.14 rows=1 width=4) (actual time=0.510..0.510 rows=1 loops=275)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Buffers: shared hit=1093 read=7
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.89 rows=1 width=8) (actual time=0.279..1.060 rows=1 loops=275)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                 Rows Removed by Filter: 295
                                 Buffers: shared hit=7622 read=35
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.101..0.101 rows=1 loops=275)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 15
                           Buffers: shared hit=274 read=1
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=1.434..1.434 rows=0 loops=275)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=1038 read=62
         ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=1.328..1.328 rows=1 loops=15)
               Filter: ((role)::text = 'actress'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=14 read=1
 Planning Time: 6279.634 ms
 Execution Time: 5483.604 ms
(69 rows)


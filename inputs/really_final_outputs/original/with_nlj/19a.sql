 Aggregate  (cost=9745.50..9745.50 rows=1 width=64) (actual time=1224938.917..1224938.917 rows=1 loops=1)
   Buffers: shared hit=8893315 read=450218
   ->  Nested Loop  (cost=0.10..9745.50 rows=1 width=32) (actual time=296720.870..1224938.462 rows=184 loops=1)
         Buffers: shared hit=8893315 read=450218
         ->  Nested Loop  (cost=0.08..9745.32 rows=1 width=36) (actual time=296695.722..1224594.205 rows=189 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=8892627 read=450170
               ->  Nested Loop  (cost=0.07..9745.25 rows=1 width=44) (actual time=296661.252..1224014.560 rows=170 loops=1)
                     Buffers: shared hit=8892036 read=450127
                     ->  Nested Loop  (cost=0.06..9743.41 rows=7 width=25) (actual time=4045.398..1186610.218 rows=40272 loops=1)
                           Join Filter: (ci.role_id = rt.id)
                           Rows Removed by Join Filter: 89805
                           Buffers: shared hit=8736277 read=444549
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=9.316..9.320 rows=1 loops=1)
                                 Filter: ((role)::text = 'actress'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.06..9743.36 rows=83 width=29) (actual time=3313.351..1186540.259 rows=130077 loops=1)
                                 Buffers: shared hit=8736277 read=444548
                                 ->  Nested Loop  (cost=0.04..9494.39 rows=131 width=29) (actual time=1861.397..144587.842 rows=116277 loops=1)
                                       Buffers: shared hit=3220089 read=223725
                                       ->  Nested Loop  (cost=0.03..9317.45 rows=577 width=8) (actual time=1807.519..43435.480 rows=188295 loops=1)
                                             Buffers: shared hit=2502083 read=187957
                                             ->  Nested Loop  (cost=0.01..9232.09 rows=1597 width=12) (actual time=1760.944..20971.813 rows=200967 loops=1)
                                                   Buffers: shared hit=1699024 read=186276
                                                   ->  Nested Loop  (cost=0.00..8473.39 rows=3969 width=4) (actual time=1727.342..11214.549 rows=451039 loops=1)
                                                         Join Filter: (it.id = mi.info_type_id)
                                                         Rows Removed by Join Filter: 65
                                                         Buffers: shared hit=6670 read=162314
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=4.088..4.112 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=887.508..10917.257 rows=451104 loops=1)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                               Rows Removed by Filter: 14384616
                                                               Buffers: shared hit=6670 read=162313
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.19 rows=1 width=8) (actual time=0.017..0.020 rows=0 loops=451039)
                                                         Index Cond: (movie_id = mi.movie_id)
                                                         Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=1692354 read=23962
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.05 rows=1 width=4) (actual time=0.110..0.110 rows=1 loops=200967)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=803059 read=1681
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.31 rows=1 width=21) (actual time=0.535..0.535 rows=1 loops=188295)
                                             Index Cond: (id = mi.movie_id)
                                             Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=718006 read=35768
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..1.90 rows=1 width=16) (actual time=8.080..8.958 rows=1 loops=116277)
                                       Index Cond: (movie_id = t.id)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 46
                                       Buffers: shared hit=5516188 read=220823
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.927..0.927 rows=0 loops=40272)
                           Index Cond: (id = ci.person_id)
                           Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=155759 read=5578
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=3.323..3.406 rows=1 loops=170)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=591 read=43
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=1.819..1.819 rows=1 loops=189)
               Index Cond: (id = ci.person_role_id)
               Buffers: shared hit=688 read=48
 Planning Time: 4454.564 ms
 Execution Time: 1224966.631 ms

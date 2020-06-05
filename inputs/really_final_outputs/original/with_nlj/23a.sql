 Aggregate  (cost=5690.40..5690.40 rows=1 width=64) (actual time=147773.372..147773.372 rows=1 loops=1)
   Buffers: shared hit=1070270 read=62163
   ->  Nested Loop  (cost=0.08..5690.40 rows=1 width=27) (actual time=110160.955..147772.594 rows=618 loops=1)
         Buffers: shared hit=1070270 read=62163
         ->  Nested Loop  (cost=0.07..5690.38 rows=1 width=31) (actual time=110128.275..147478.286 rows=618 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=1068019 read=61938
               ->  Nested Loop  (cost=0.05..5690.32 rows=1 width=43) (actual time=110071.534..147392.567 rows=6 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Buffers: shared hit=1067995 read=61930
                     ->  Nested Loop  (cost=0.05..5690.27 rows=1 width=47) (actual time=110046.506..147367.453 rows=6 loops=1)
                           Join Filter: (mc.company_type_id = ct.id)
                           Rows Removed by Join Filter: 5
                           Buffers: shared hit=1067990 read=61929
                           ->  Nested Loop  (cost=0.05..5690.24 rows=1 width=51) (actual time=110046.366..147367.247 rows=6 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=1067985 read=61928
                                 ->  Nested Loop  (cost=0.04..5112.10 rows=2267 width=43) (actual time=1419.657..54640.949 rows=5763 loops=1)
                                       Buffers: shared hit=924088 read=42216
                                       ->  Nested Loop  (cost=0.03..5000.26 rows=6278 width=47) (actual time=1284.291..36050.271 rows=23883 loops=1)
                                             Buffers: shared hit=830846 read=39659
                                             ->  Nested Loop  (cost=0.01..4812.20 rows=2636 width=35) (actual time=1236.921..6006.378 rows=1033 loops=1)
                                                   Join Filter: (cc.status_id = cct1.id)
                                                   Rows Removed by Join Filter: 5201
                                                   Buffers: shared hit=828222 read=36870
                                                   ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.199..0.200 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'completeverified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.01..4810.62 rows=10544 width=39) (actual time=1227.761..6002.552 rows=6234 loops=1)
                                                         Buffers: shared hit=828222 read=36869
                                                         ->  Nested Loop  (cost=0.00..1703.06 rows=197350 width=31) (actual time=92.000..2542.878 rows=274015 loops=1)
                                                               Join Filter: (kt.id = t.kind_id)
                                                               Rows Removed by Join Filter: 1107438
                                                               Buffers: shared read=35999
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=9.302..9.305 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared read=1
                                                               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=20.385..2197.387 rows=1381453 loops=1)
                                                                     Filter: (production_year > 2000)
                                                                     Rows Removed by Filter: 1146859
                                                                     Buffers: shared read=35998
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.02 rows=1 width=8) (actual time=0.009..0.012 rows=0 loops=274015)
                                                               Index Cond: (movie_id = t.id)
                                                               Buffers: shared hit=828222 read=870
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=18.953..29.058 rows=23 loops=1033)
                                                   Index Cond: (movie_id = t.id)
                                                   Buffers: shared hit=2624 read=2789
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.776..0.776 rows=0 loops=23883)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=93242 read=2557
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=16.067..16.088 rows=0 loops=5763)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                       Rows Removed by Filter: 245
                                       Buffers: shared hit=143897 read=19712
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.024..0.025 rows=2 loops=6)
                                 Buffers: shared hit=5 read=1
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=4.180..4.180 rows=1 loops=6)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 15
                           Buffers: shared hit=5 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=14.082..14.193 rows=103 loops=6)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=24 read=8
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.474..0.474 rows=1 loops=618)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=2251 read=225
 Planning Time: 6370.835 ms
 Execution Time: 147792.595 ms

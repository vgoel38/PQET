                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9578.03..9578.03 rows=1 width=64) (actual time=34593.878..34593.879 rows=1 loops=1)
   Buffers: shared hit=20449 read=166701
   ->  Nested Loop  (cost=0.08..9578.03 rows=10 width=59) (actual time=1720.903..34589.844 rows=2271 loops=1)
         Buffers: shared hit=20449 read=166701
         ->  Nested Loop  (cost=0.07..9577.89 rows=10 width=63) (actual time=1701.027..32819.277 rows=2271 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=11807 read=166257
               ->  Nested Loop  (cost=0.05..9577.83 rows=1 width=75) (actual time=1655.914..30248.492 rows=284 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 119
                     Buffers: shared hit=10879 read=166091
                     ->  Nested Loop  (cost=0.05..9577.80 rows=1 width=79) (actual time=1655.889..30244.990 rows=284 loops=1)
                           Buffers: shared hit=10595 read=166091
                           ->  Nested Loop  (cost=0.04..9577.76 rows=2 width=83) (actual time=1651.040..26564.717 rows=400 loops=1)
                                 Buffers: shared hit=9258 read=165819
                                 ->  Nested Loop  (cost=0.03..9577.70 rows=1 width=71) (actual time=1604.957..23096.514 rows=120 loops=1)
                                       Buffers: shared hit=8919 read=165580
                                       ->  Nested Loop  (cost=0.01..9577.65 rows=2 width=67) (actual time=1524.781..21862.849 rows=1782 loops=1)
                                             Buffers: shared hit=4175 read=164855
                                             ->  Nested Loop  (cost=0.00..9559.45 rows=3 width=46) (actual time=1513.552..10402.353 rows=1783 loops=1)
                                                   Join Filter: (it.id = mi.info_type_id)
                                                   Buffers: shared hit=3 read=161890
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.038 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=314 width=50) (actual time=1513.524..10399.799 rows=1783 loops=1)
                                                         Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                         Rows Removed by Filter: 14833937
                                                         Buffers: shared hit=2 read=161890
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..6.07 rows=1 width=21) (actual time=6.424..6.424 rows=1 loops=1783)
                                                   Index Cond: (id = mi.movie_id)
                                                   Filter: (production_year > 1990)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=4172 read=2965
                                       ->  Index Scan using aka_title_idx_movieid on aka_title at  (cost=0.01..0.03 rows=2 width=4) (actual time=0.500..0.688 rows=0 loops=1782)
                                             Index Cond: (movie_id = t.id)
                                             Buffers: shared hit=4744 read=725
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=23.108..28.889 rows=3 loops=120)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=339 read=239
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=9.196..9.196 rows=1 loops=400)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=1337 read=272
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.004..0.004 rows=1 loops=284)
                           Buffers: shared hit=284
               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=9.028..9.039 rows=8 loops=284)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=928 read=166
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.777..0.777 rows=1 loops=2271)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=8642 read=444
 Planning Time: 9057.851 ms
 Execution Time: 34594.346 ms
(56 rows)


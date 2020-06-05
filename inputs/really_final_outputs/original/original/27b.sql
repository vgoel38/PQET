                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.28..129.28 rows=1 width=96) (actual time=2465.409..2465.409 rows=1 loops=1)
   Buffers: shared hit=51934 read=5729
   ->  Nested Loop  (cost=0.10..129.28 rows=1 width=48) (actual time=790.876..2449.945 rows=247 loops=1)
         Buffers: shared hit=51934 read=5729
         ->  Nested Loop  (cost=0.09..129.26 rows=1 width=33) (actual time=772.102..2334.093 rows=532 loops=1)
               Join Filter: (ct.id = mc.company_type_id)
               Buffers: shared hit=49819 read=5716
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
               ->  Nested Loop  (cost=0.09..129.23 rows=1 width=37) (actual time=772.091..2333.657 rows=532 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=49818 read=5716
                     ->  Nested Loop  (cost=0.08..129.20 rows=1 width=49) (actual time=740.829..2300.133 rows=95 loops=1)
                           Join Filter: (ml.movie_id = mi.movie_id)
                           Buffers: shared hit=49346 read=5713
                           ->  Nested Loop  (cost=0.06..129.04 rows=1 width=45) (actual time=660.760..2164.678 rows=38 loops=1)
                                 Join Filter: (cct.id = cc.status_id)
                                 Rows Removed by Join Filter: 19
                                 Buffers: shared hit=48904 read=5699
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.004 rows=1 loops=1)
                                       Filter: ((kind)::text = 'complete'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
                                 ->  Nested Loop  (cost=0.06..129.01 rows=1 width=49) (actual time=660.753..2164.621 rows=57 loops=1)
                                       Join Filter: (cct.id = cc.subject_id)
                                       Rows Removed by Join Filter: 19
                                       Buffers: shared hit=48903 read=5699
                                       ->  Nested Loop  (cost=0.06..128.98 rows=1 width=53) (actual time=660.723..2164.241 rows=57 loops=1)
                                             Join Filter: (ml.movie_id = cc.movie_id)
                                             Buffers: shared hit=48846 read=5699
                                             ->  Nested Loop  (cost=0.05..128.97 rows=1 width=41) (actual time=300.205..2109.174 rows=77 loops=1)
                                                   Join Filter: (ml.movie_id = t.id)
                                                   Buffers: shared hit=48562 read=5695
                                                   ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=53.256..1477.246 rows=199 loops=1)
                                                         Join Filter: (lt.id = ml.link_type_id)
                                                         Rows Removed by Join Filter: 303
                                                         Buffers: shared hit=47817 read=5644
                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.003..0.017 rows=2 loops=1)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 16
                                                               Buffers: shared hit=1
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=3 width=12) (actual time=26.664..738.449 rows=251 loops=2)
                                                               Buffers: shared hit=47816 read=5644
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=26.639..640.401 rows=10544 loops=2)
                                                                     Buffers: shared hit=5608 read=5604
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=18.732..18.735 rows=1 loops=2)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared hit=4 read=4
                                                                     ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=7.901..617.536 rows=10544 loops=2)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=5604 read=5600
                                                               ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.008..0.008 rows=0 loops=21088)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=42208 read=40
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.173..3.173 rows=0 loops=199)
                                                         Index Cond: (id = mk.movie_id)
                                                         Filter: (production_year = 1998)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=745 read=51
                                             ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.636..0.712 rows=1 loops=77)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=284 read=4
                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.003 rows=1 loops=57)
                                             Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                             Buffers: shared hit=57
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=2.795..3.560 rows=2 loops=38)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                 Rows Removed by Filter: 10
                                 Buffers: shared hit=442 read=14
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.341..0.347 rows=6 loops=95)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NULL)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=472 read=3
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.216..0.216 rows=0 loops=532)
               Index Cond: (id = mc.company_id)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=2115 read=13
 Planning Time: 11033.735 ms
 Execution Time: 2465.881 ms
(84 rows)


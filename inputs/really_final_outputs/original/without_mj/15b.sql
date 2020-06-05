                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34.74..34.74 rows=1 width=64) (actual time=5423.417..5423.417 rows=1 loops=1)
   Buffers: shared hit=4859 read=1594
   ->  Nested Loop  (cost=0.09..34.74 rows=4 width=59) (actual time=4661.785..5423.266 rows=37 loops=1)
         Buffers: shared hit=4859 read=1594
         ->  Nested Loop  (cost=0.08..34.68 rows=4 width=63) (actual time=4628.057..5306.554 rows=37 loops=1)
               Join Filter: (mi.info_type_id = it1.id)
               Buffers: shared hit=4766 read=1539
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=7.736..7.752 rows=1 loops=1)
                     Filter: ((info)::text = 'release dates'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.08..34.63 rows=4 width=67) (actual time=4620.313..5298.756 rows=37 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=4766 read=1538
                     ->  Nested Loop  (cost=0.07..34.02 rows=4 width=37) (actual time=250.702..3476.345 rows=292 loops=1)
                           Buffers: shared hit=791 read=1332
                           ->  Nested Loop  (cost=0.05..33.84 rows=1 width=29) (actual time=202.949..2834.624 rows=26 loops=1)
                                 Buffers: shared hit=746 read=1276
                                 ->  Nested Loop  (cost=0.04..33.47 rows=1 width=8) (actual time=172.191..1952.590 rows=27 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=696 read=1218
                                       ->  Nested Loop  (cost=0.04..33.43 rows=1 width=12) (actual time=152.227..1932.212 rows=27 loops=1)
                                             Buffers: shared hit=670 read=1217
                                             ->  Nested Loop  (cost=0.03..32.15 rows=1 width=8) (actual time=75.207..1358.933 rows=278 loops=1)
                                                   Buffers: shared read=1025
                                                   ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=38.356..38.358 rows=1 loops=1)
                                                         Index Cond: (name = 'YouTube'::text)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Buffers: shared read=4
                                                   ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..26.02 rows=1 width=12) (actual time=36.841..1320.189 rows=278 loops=1)
                                                         Index Cond: (company_id = cn.id)
                                                         Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                         Rows Removed by Filter: 1180
                                                         Buffers: shared read=1021
                                             ->  Index Scan using movie_id_aka_title on aka_title at  (cost=0.01..1.28 rows=2 width=4) (actual time=1.799..2.058 rows=0 loops=278)
                                                   Index Cond: (movie_id = mc.movie_id)
                                                   Buffers: shared hit=670 read=192
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.744..0.744 rows=1 loops=27)
                                             Buffers: shared hit=26 read=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.38 rows=1 width=21) (actual time=32.660..32.660 rows=1 loops=27)
                                       Index Cond: (id = at.movie_id)
                                       Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=50 read=58
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.17 rows=11 width=8) (actual time=24.649..24.664 rows=11 loops=26)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=45 read=56
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=5.880..6.239 rows=0 loops=292)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 29
                           Buffers: shared hit=3975 read=206
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=3.151..3.151 rows=1 loops=37)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=93 read=55
 Planning Time: 7692.724 ms
 Execution Time: 5424.123 ms
(57 rows)


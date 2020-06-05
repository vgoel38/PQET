                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34.74..34.74 rows=1 width=64) (actual time=6545.573..6545.573 rows=1 loops=1)
   Buffers: shared hit=4876 read=1577
   ->  Nested Loop  (cost=0.09..34.74 rows=4 width=59) (actual time=5592.263..6545.392 rows=37 loops=1)
         Buffers: shared hit=4876 read=1577
         ->  Nested Loop  (cost=0.08..34.68 rows=4 width=63) (actual time=5566.859..6436.992 rows=37 loops=1)
               Join Filter: (mi.info_type_id = it.id)
               Buffers: shared hit=4778 read=1527
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.060 rows=1 loops=1)
                     Filter: ((info)::text = 'release dates'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared hit=1
               ->  Nested Loop  (cost=0.08..34.63 rows=4 width=67) (actual time=5566.837..6436.886 rows=37 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=4777 read=1527
                     ->  Nested Loop  (cost=0.07..34.02 rows=4 width=37) (actual time=205.616..4395.411 rows=292 loops=1)
                           Buffers: shared hit=801 read=1322
                           ->  Nested Loop  (cost=0.05..33.84 rows=1 width=29) (actual time=157.870..3525.153 rows=26 loops=1)
                                 Buffers: shared hit=755 read=1267
                                 ->  Nested Loop  (cost=0.04..33.47 rows=1 width=8) (actual time=115.486..2617.361 rows=27 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=704 read=1210
                                       ->  Nested Loop  (cost=0.04..33.43 rows=1 width=12) (actual time=115.468..2616.926 rows=27 loops=1)
                                             Buffers: shared hit=677 read=1210
                                             ->  Nested Loop  (cost=0.03..32.15 rows=1 width=8) (actual time=52.038..1728.557 rows=278 loops=1)
                                                   Buffers: shared hit=3 read=1022
                                                   ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=51.595..51.599 rows=1 loops=1)
                                                         Index Cond: (name = 'YouTube'::text)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Buffers: shared read=4
                                                   ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..26.02 rows=1 width=12) (actual time=0.435..1676.543 rows=278 loops=1)
                                                         Index Cond: (company_id = cn.id)
                                                         Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                         Rows Removed by Filter: 1180
                                                         Buffers: shared hit=3 read=1018
                                             ->  Index Scan using aka_title_idx_movieid on aka_title at  (cost=0.01..1.28 rows=2 width=4) (actual time=2.907..3.191 rows=0 loops=278)
                                                   Index Cond: (movie_id = mc.movie_id)
                                                   Buffers: shared hit=674 read=188
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.006 rows=1 loops=27)
                                             Buffers: shared hit=27
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.38 rows=1 width=21) (actual time=33.614..33.614 rows=1 loops=27)
                                       Index Cond: (id = at.movie_id)
                                       Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=51 read=57
                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.17 rows=11 width=8) (actual time=33.437..33.453 rows=11 loops=26)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=46 read=55
                     ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=6.630..6.989 rows=0 loops=292)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 29
                           Buffers: shared hit=3976 read=205
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=2.926..2.926 rows=1 loops=37)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=98 read=50
 Planning Time: 9212.319 ms
 Execution Time: 6546.035 ms
(57 rows)


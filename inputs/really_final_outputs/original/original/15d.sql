                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=7465.49..7465.49 rows=1 width=64) (actual time=43882.670..43882.670 rows=1 loops=1)
   Buffers: shared hit=91111 read=167063
   ->  Nested Loop  (cost=0.08..7465.43 rows=405 width=38) (actual time=1701.345..43848.339 rows=11347 loops=1)
         Buffers: shared hit=91111 read=167063
         ->  Nested Loop  (cost=0.07..7459.68 rows=405 width=42) (actual time=1681.489..41015.536 rows=11347 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=46442 read=166322
               ->  Nested Loop  (cost=0.05..7457.87 rows=30 width=54) (actual time=1638.019..35629.937 rows=875 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 382
                     Buffers: shared hit=43506 read=165890
                     ->  Nested Loop  (cost=0.05..7457.81 rows=30 width=58) (actual time=1637.984..35626.758 rows=875 loops=1)
                           Join Filter: (at.movie_id = t.id)
                           Buffers: shared hit=43505 read=165890
                           ->  Nested Loop  (cost=0.04..7455.05 rows=43 width=37) (actual time=1594.647..30124.412 rows=896 loops=1)
                                 Buffers: shared hit=40403 read=165406
                                 ->  Nested Loop  (cost=0.03..7452.93 rows=119 width=41) (actual time=1589.803..21414.251 rows=2130 loops=1)
                                       Buffers: shared hit=32904 read=164373
                                       ->  Nested Loop  (cost=0.01..7444.06 rows=38 width=29) (actual time=1537.299..14150.455 rows=591 loops=1)
                                             Buffers: shared hit=31175 read=163369
                                             ->  Nested Loop  (cost=0.00..7257.30 rows=95 width=4) (actual time=1526.006..10399.003 rows=10679 loops=1)
                                                   Join Filter: (it1.id = mi.info_type_id)
                                                   Rows Removed by Join Filter: 131
                                                   Buffers: shared hit=3 read=161890
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.059 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=10746 width=8) (actual time=130.665..10392.029 rows=10810 loops=1)
                                                         Filter: (note ~~ '%internet%'::text)
                                                         Rows Removed by Filter: 14824910
                                                         Buffers: shared hit=2 read=161890
                                             ->  Index Scan using aka_title_idx_movieid on aka_title at  (cost=0.01..1.97 rows=2 width=25) (actual time=0.284..0.350 rows=0 loops=10679)
                                                   Index Cond: (movie_id = mi.movie_id)
                                                   Buffers: shared hit=31172 read=1479
                                       ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.23 rows=2 width=12) (actual time=10.773..12.280 rows=4 loops=591)
                                             Index Cond: (movie_id = at.movie_id)
                                             Buffers: shared hit=1729 read=1004
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=4.086..4.086 rows=0 loops=2130)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=7499 read=1033
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=6.136..6.136 rows=1 loops=896)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: (production_year > 1990)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=3102 read=484
                     ->  Materialize  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=875)
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.014..0.017 rows=2 loops=1)
                                 Buffers: shared hit=1
               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=6.129..6.141 rows=13 loops=875)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=2936 read=432
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.248..0.248 rows=1 loops=11347)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=44669 read=741
 Planning Time: 8944.139 ms
 Execution Time: 43883.141 ms
(60 rows)


                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1512.91..1512.91 rows=1 width=96) (actual time=109061.747..109061.747 rows=1 loops=1)
   Buffers: shared hit=4607085 read=105885
   ->  Nested Loop  (cost=0.10..1512.91 rows=5 width=65) (actual time=13757.058..108934.266 rows=111101 loops=1)
         Join Filter: (mi.info_type_id = it.id)
         Rows Removed by Join Filter: 405226
         Buffers: shared hit=4607085 read=105885
         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.810..2.822 rows=1 loops=1)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.10..1512.77 rows=617 width=69) (actual time=13742.593..108777.344 rows=516327 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=4607085 read=105884
               ->  Nested Loop  (cost=0.09..1501.59 rows=44 width=35) (actual time=13677.898..51561.230 rows=16470 loops=1)
                     Join Filter: (t.kind_id = kt.id)
                     Rows Removed by Join Filter: 15040
                     Buffers: shared hit=4432508 read=53154
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=6.732..6.734 rows=1 loops=1)
                           Filter: ((kind)::text = 'movie'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.09..1501.51 rows=306 width=39) (actual time=470.196..51532.088 rows=31510 loops=1)
                           Buffers: shared hit=4432508 read=53153
                           ->  Nested Loop  (cost=0.07..1481.96 rows=306 width=14) (actual time=420.554..19834.300 rows=31510 loops=1)
                                 Buffers: shared hit=4321862 read=37684
                                 ->  Nested Loop  (cost=0.06..1350.76 rows=7365 width=18) (actual time=105.972..8343.256 rows=584222 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Rows Removed by Join Filter: 770661
                                       Buffers: shared hit=1983345 read=33842
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=7.017..7.019 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.06..1346.40 rows=29462 width=22) (actual time=93.174..7890.458 rows=1354883 loops=1)
                                             Buffers: shared hit=1983345 read=33841
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=12.218..1102.971 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=4 read=8453
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=12.069..382.769 rows=1380035 loops=1)
                                                         Buffers: shared read=8453
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.062..0.062 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.049..0.052 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=0.009..0.013 rows=3 loops=459925)
                                                   Index Cond: (movie_id = miidx.movie_id)
                                                   Buffers: shared hit=1983341 read=25388
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.019..0.019 rows=0 loops=584222)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[de]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2338517 read=3842
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=1.004..1.004 rows=1 loops=31510)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=110646 read=15469
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=50) (actual time=0.801..3.451 rows=31 loops=16470)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=174577 read=52730
 Planning Time: 4555.580 ms
 Execution Time: 109088.030 ms
(63 rows)


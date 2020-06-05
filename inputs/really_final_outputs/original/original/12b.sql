                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1806.84..1806.84 rows=1 width=64) (actual time=2088.492..2088.492 rows=1 loops=1)
   Buffers: shared hit=305 read=8572
   ->  Nested Loop  (cost=0.10..1806.84 rows=1 width=59) (actual time=1333.557..2088.414 rows=10 loops=1)
         Join Filter: (mi.info_type_id = it1.id)
         Rows Removed by Join Filter: 1200
         Buffers: shared hit=305 read=8572
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.077..0.084 rows=1 loops=1)
               Filter: ((info)::text = 'budget'::text)
               Rows Removed by Filter: 112
               Buffers: shared hit=1
         ->  Nested Loop  (cost=0.10..1806.78 rows=40 width=63) (actual time=1276.983..2087.878 rows=1210 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=304 read=8572
               ->  Nested Loop  (cost=0.09..1806.02 rows=3 width=29) (actual time=1220.412..1761.469 rows=10 loops=1)
                     Buffers: shared hit=112 read=8528
                     ->  Nested Loop  (cost=0.07..1805.88 rows=8 width=33) (actual time=1172.004..1354.568 rows=33 loops=1)
                           Join Filter: (mc.company_type_id = ct.id)
                           Rows Removed by Join Filter: 5
                           Buffers: shared hit=22 read=8486
                           ->  Nested Loop  (cost=0.07..1805.84 rows=16 width=37) (actual time=1171.959..1354.418 rows=33 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=21 read=8486
                                 ->  Nested Loop  (cost=0.06..1805.34 rows=7 width=25) (actual time=1119.674..1203.392 rows=2 loops=1)
                                       Buffers: shared hit=19 read=8478
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=780.828..780.900 rows=10 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=6 read=8451
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.009..511.877 rows=1380035 loops=1)
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.063..0.063 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.048 rows=1 loops=1)
                                                         Filter: ((info)::text = 'bottom 10 rank'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=42.243..42.243 rows=0 loops=10)
                                             Index Cond: (id = mi_idx.movie_id)
                                             Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=13 read=27
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=52.692..75.467 rows=16 loops=2)
                                       Index Cond: (movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=2 read=8
                           ->  Materialize  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.002 rows=1 loops=33)
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.023..0.028 rows=2 loops=1)
                                       Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                                       Buffers: shared hit=1
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=12.326..12.326 rows=0 loops=33)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=90 read=42
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.25 rows=9 width=50) (actual time=10.396..32.521 rows=121 loops=10)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=192 read=44
 Planning Time: 4699.342 ms
 Execution Time: 2152.019 ms
(59 rows)


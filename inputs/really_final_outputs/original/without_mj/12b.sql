                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1806.84..1806.84 rows=1 width=64) (actual time=1986.130..1986.130 rows=1 loops=1)
   Buffers: shared hit=295 read=8582
   ->  Nested Loop  (cost=0.10..1806.84 rows=1 width=59) (actual time=1339.535..1986.064 rows=10 loops=1)
         Join Filter: (mi.info_type_id = it1.id)
         Rows Removed by Join Filter: 1200
         Buffers: shared hit=295 read=8582
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=2.860..2.868 rows=1 loops=1)
               Filter: ((info)::text = 'budget'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.10..1806.78 rows=40 width=63) (actual time=1280.164..1982.752 rows=1210 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=295 read=8581
               ->  Nested Loop  (cost=0.09..1806.02 rows=3 width=29) (actual time=1248.593..1698.042 rows=10 loops=1)
                     Buffers: shared hit=104 read=8536
                     ->  Nested Loop  (cost=0.07..1805.88 rows=8 width=33) (actual time=1205.446..1379.545 rows=33 loops=1)
                           Join Filter: (mc.company_type_id = ct.id)
                           Rows Removed by Join Filter: 5
                           Buffers: shared hit=17 read=8491
                           ->  Nested Loop  (cost=0.07..1805.84 rows=16 width=37) (actual time=1183.476..1357.479 rows=33 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=17 read=8490
                                 ->  Nested Loop  (cost=0.06..1805.34 rows=7 width=25) (actual time=1139.521..1231.569 rows=2 loops=1)
                                       Buffers: shared hit=16 read=8481
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=784.214..784.284 rows=10 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=4 read=8453
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=9.102..493.526 rows=1380035 loops=1)
                                                   Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.071..0.071 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.055..0.056 rows=1 loops=1)
                                                         Filter: ((info)::text = 'bottom 10 rank'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=44.722..44.722 rows=0 loops=10)
                                             Index Cond: (id = mi_idx.movie_id)
                                             Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=12 read=28
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=40.196..62.906 rows=16 loops=2)
                                       Index Cond: (movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=1 read=9
                           ->  Materialize  (cost=0.00..0.03 rows=2 width=4) (actual time=0.666..0.666 rows=1 loops=33)
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=2 width=4) (actual time=21.944..21.949 rows=2 loops=1)
                                       Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                                       Buffers: shared read=1
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=9.648..9.648 rows=0 loops=33)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=87 read=45
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=50) (actual time=7.064..28.353 rows=121 loops=10)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=191 read=45
 Planning Time: 4547.713 ms
 Execution Time: 2011.962 ms
(59 rows)


                                                                                                        QUERY PLAN                                                                                                        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=614.57..614.57 rows=1 width=192) (actual time=2285.560..2285.561 rows=1 loops=1)
   Buffers: shared hit=350 read=8754
   ->  Nested Loop  (cost=564.52..614.57 rows=1 width=84) (actual time=1008.954..2285.487 rows=8 loops=1)
         Buffers: shared hit=350 read=8754
         ->  Nested Loop  (cost=564.52..614.56 rows=1 width=88) (actual time=1008.916..2285.381 rows=8 loops=1)
               Buffers: shared hit=334 read=8754
               ->  Nested Loop  (cost=564.50..614.54 rows=1 width=73) (actual time=1003.770..2150.326 rows=28 loops=1)
                     Buffers: shared hit=240 read=8736
                     ->  Nested Loop  (cost=564.49..614.50 rows=1 width=81) (actual time=996.026..2101.328 rows=10 loops=1)
                           Buffers: shared hit=204 read=8724
                           ->  Nested Loop  (cost=564.48..614.48 rows=1 width=66) (actual time=958.443..1999.768 rows=10 loops=1)
                                 Buffers: shared hit=178 read=8710
                                 ->  Nested Loop  (cost=564.47..614.48 rows=1 width=70) (actual time=935.424..1976.626 rows=10 loops=1)
                                       Join Filter: (ml.movie_id = t.id)
                                       Buffers: shared hit=160 read=8708
                                       ->  Nested Loop  (cost=564.46..614.37 rows=1 width=45) (actual time=917.168..1903.882 rows=10 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 20
                                             Buffers: shared hit=129 read=8699
                                             ->  Nested Loop  (cost=564.45..600.47 rows=11 width=39) (actual time=895.599..1832.325 rows=11 loops=1)
                                                   Join Filter: (t.id = mc.movie_id)
                                                   Buffers: shared hit=94 read=8691
                                                   ->  Nested Loop  (cost=564.43..598.99 rows=11 width=47) (actual time=863.415..1720.499 rows=6 loops=1)
                                                         Join Filter: (ml.linked_movie_id = t.id)
                                                         Buffers: shared hit=81 read=8677
                                                         ->  Hash Join  (cost=564.42..585.33 rows=64 width=22) (actual time=824.010..903.875 rows=34 loops=1)
                                                               Hash Cond: (ml.link_type_id = lt.id)
                                                               Buffers: shared hit=4 read=8618
                                                               ->  Nested Loop  (cost=564.39..585.27 rows=387 width=26) (actual time=809.856..903.318 rows=1085 loops=1)
                                                                     Buffers: shared hit=1 read=8617
                                                                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=26.688..26.700 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared read=1
                                                                     ->  Hash Join  (cost=564.39..585.19 rows=387 width=22) (actual time=783.164..876.073 rows=1085 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=1 read=8616
                                                                           ->  Hash Join  (cost=564.34..581.54 rows=43752 width=26) (actual time=783.039..864.383 rows=38117 loops=1)
                                                                                 Hash Cond: (ml.linked_movie_id = mi_idx.movie_id)
                                                                                 Buffers: shared read=8616
                                                                                 ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.194..39.397 rows=29997 loops=1)
                                                                                       Buffers: shared read=163
                                                                                 ->  Hash  (cost=467.71..467.71 rows=658313 width=14) (actual time=776.976..776.976 rows=658295 loops=1)
                                                                                       Buckets: 1048576  Batches: 1  Memory Usage: 39793kB
                                                                                       Buffers: shared read=8453
                                                                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=658313 width=14) (actual time=11.307..561.962 rows=658295 loops=1)
                                                                                             Filter: (info < '3.0'::text)
                                                                                             Rows Removed by Filter: 721740
                                                                                             Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.061..0.062 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.053 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                                                               ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.081..0.081 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=1
                                                                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=0.073..0.077 rows=2 loops=1)
                                                                           Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared read=1
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.21 rows=1 width=25) (actual time=24.013..24.013 rows=0 loops=34)
                                                               Index Cond: (id = mi_idx.movie_id)
                                                               Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=77 read=59
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.13 rows=2 width=8) (actual time=15.933..18.627 rows=2 loops=6)
                                                         Index Cond: (movie_id = mi_idx.movie_id)
                                                         Buffers: shared hit=13 read=14
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..1.26 rows=3 width=14) (actual time=6.494..6.497 rows=3 loops=11)
                                                   Index Cond: (movie_id = ml.movie_id)
                                                   Buffers: shared hit=35 read=8
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=7.267..7.267 rows=1 loops=10)
                                             Index Cond: (id = mi_idx.movie_id)
                                             Buffers: shared hit=31 read=9
                                 ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=2.309..2.309 rows=1 loops=10)
                                       Index Cond: (id = t.kind_id)
                                       Filter: ((kind)::text = 'tv series'::text)
                                       Buffers: shared hit=18 read=2
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=10.150..10.150 rows=1 loops=10)
                                 Index Cond: (id = mc.company_id)
                                 Buffers: shared hit=26 read=14
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.05 rows=2 width=8) (actual time=4.165..4.890 rows=3 loops=10)
                           Index Cond: (movie_id = t.id)
                           Buffers: shared hit=36 read=12
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=4.820..4.820 rows=0 loops=28)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=94 read=18
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=8)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = 'tv series'::text)
               Buffers: shared hit=16
 Planning Time: 5699.027 ms
 Execution Time: 2286.741 ms
(98 rows)


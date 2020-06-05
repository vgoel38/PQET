                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13483.51..13483.51 rows=1 width=64) (actual time=2977.887..2977.887 rows=1 loops=1)
   Buffers: shared hit=16358 read=12342
   ->  Nested Loop  (cost=6.20..13483.51 rows=1 width=59) (actual time=1064.554..2977.811 rows=10 loops=1)
         Buffers: shared hit=16358 read=12342
         ->  Nested Loop  (cost=6.20..13483.32 rows=40 width=63) (actual time=1008.036..2970.756 rows=1210 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=13938 read=12342
               ->  Nested Loop  (cost=6.18..13482.56 rows=3 width=29) (actual time=976.456..2679.227 rows=10 loops=1)
                     Buffers: shared hit=13746 read=12298
                     ->  Nested Loop  (cost=6.17..13482.42 rows=8 width=33) (actual time=928.046..2283.727 rows=33 loops=1)
                           Buffers: shared hit=13656 read=12256
                           ->  Nested Loop  (cost=6.17..13482.35 rows=16 width=37) (actual time=927.995..2283.256 rows=33 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=13590 read=12256
                                 ->  Nested Loop  (cost=6.15..13481.85 rows=7 width=25) (actual time=892.379..2183.537 rows=2 loops=1)
                                       Buffers: shared hit=13588 read=12248
                                       ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=752.446..1861.596 rows=10 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=13575 read=12221
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.026..1466.169 rows=1380035 loops=1)
                                                   Buffers: shared hit=13571 read=12220
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.064..0.064 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.047..0.049 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                                         Buffers: shared hit=1 read=1
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=32.185..32.185 rows=0 loops=10)
                                             Index Cond: (id = mi_idx.movie_id)
                                             Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=13 read=27
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=36.020..49.807 rows=16 loops=2)
                                       Index Cond: (movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=2 read=8
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=33)
                                 Index Cond: (id = mc.company_type_id)
                                 Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                                 Buffers: shared hit=66
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=11.982..11.982 rows=0 loops=33)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=90 read=42
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=50) (actual time=7.064..29.020 rows=121 loops=10)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=192 read=44
         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=1210)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'budget'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2420
 Planning Time: 4977.559 ms
 Execution Time: 2998.906 ms
(54 rows)


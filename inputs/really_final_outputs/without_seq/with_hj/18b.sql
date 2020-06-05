                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1410912.22..1410912.22 rows=1 width=96) (actual time=95484.819..95484.819 rows=1 loops=1)
   Buffers: shared hit=8381377 read=679937
   ->  Hash Join  (cost=699877.71..1410912.22 rows=1 width=65) (actual time=79810.130..95484.723 rows=11 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=8381377 read=679937
         ->  Hash Join  (cost=48903.91..759916.72 rows=186416 width=4) (actual time=48935.914..65006.944 rows=98503 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=5790358 read=422372
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=71.918..59893.280 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=48812.37..48812.37 rows=623581 width=4) (actual time=4690.148..4690.148 rows=961555 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 41997kB
                     Buffers: shared hit=3938598 read=70686
                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=623581 width=4) (actual time=1912.543..4385.344 rows=961555 loops=1)
                           Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 3205936
                           Buffers: shared hit=3938598 read=70686
         ->  Hash  (cost=650973.79..650973.79 rows=1 width=77) (actual time=30448.880..30448.880 rows=358 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 35kB
               Buffers: shared hit=2591019 read=257565
               ->  Hash Join  (cost=35680.87..650973.79 rows=1 width=77) (actual time=13995.112..30448.380 rows=358 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=2591019 read=257565
                     ->  Hash Join  (cost=6.14..615298.99 rows=587 width=46) (actual time=1953.060..18436.815 rows=72258 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=87582 read=202431
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=66310 width=50) (actual time=1941.435..18391.774 rows=73047 loops=1)
                                 Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                 Rows Removed by Filter: 14762673
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.571..11.571 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=11.551..11.555 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'genres'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=35674.71..35674.71 rows=145 width=31) (actual time=11987.962..11987.962 rows=6152 loops=1)
                           Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 436kB
                           Buffers: shared hit=2503437 read=55134
                           ->  Hash Join  (cost=12148.71..35674.71 rows=145 width=31) (actual time=3169.968..11984.272 rows=6152 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=2503437 read=55134
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=784488 width=21) (actual time=75.333..9778.138 rows=784488 loops=1)
                                       Filter: ((production_year >= 2008) AND (production_year <= 2014))
                                       Rows Removed by Filter: 1743824
                                       Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=12148.62..12148.62 rows=468 width=10) (actual time=2020.665..2020.665 rows=15849 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                                       Buffers: shared hit=13567 read=12226
                                       ->  Hash Join  (cost=6.14..12148.62 rows=468 width=10) (actual time=33.911..2010.274 rows=15849 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=13567 read=12226
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=33.817..1987.522 rows=52862 loops=1)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 1327173
                                                   Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.041..0.041 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.029..0.031 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared hit=2
 Planning Time: 5084.174 ms
 Execution Time: 95486.111 ms
(66 rows)


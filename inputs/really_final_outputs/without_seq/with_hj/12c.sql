                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=679887.11..679887.11 rows=1 width=96) (actual time=31083.981..31083.981 rows=1 loops=1)
   Buffers: shared hit=2822736 read=287327
   ->  Hash Join  (cost=63420.60..679887.11 rows=1 width=42) (actual time=15565.856..31058.267 rows=4711 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=2822736 read=287327
         ->  Hash Join  (cost=6.14..616472.31 rows=2892 width=4) (actual time=1906.404..17309.805 rows=325255 loops=1)
               Hash Cond: (mi.info_type_id = it1.id)
               Buffers: shared hit=87585 read=202431
               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=326846 width=8) (actual time=1894.753..17185.326 rows=327313 loops=1)
                     Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                     Rows Removed by Filter: 14508407
                     Buffers: shared hit=87582 read=202429
               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.533..11.533 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=11.506..11.510 rows=1 loops=1)
                           Index Cond: ((info)::text = 'genres'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=63414.44..63414.44 rows=153 width=54) (actual time=13659.357..13659.357 rows=42332 loops=1)
               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4268kB
               Buffers: shared hit=2735151 read=84896
               ->  Hash Join  (cost=39858.36..63414.44 rows=153 width=54) (actual time=4916.923..13639.999 rows=42332 loops=1)
                     Hash Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=2735151 read=84896
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=21) (actual time=40.658..8787.873 rows=1042800 loops=1)
                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                           Rows Removed by Filter: 1485512
                           Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=39858.29..39858.29 rows=372 width=33) (actual time=4548.925..4548.925 rows=91314 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 7033kB
                           Buffers: shared hit=245281 read=41988
                           ->  Hash Join  (cost=16776.22..39858.29 rows=372 width=33) (actual time=3593.691..4512.684 rows=91314 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=245281 read=41988
                                 ->  Hash Join  (cost=16770.09..39852.00 rows=1487 width=37) (actual time=2540.340..4443.985 rows=188040 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=245281 read=41986
                                       ->  Hash Join  (cost=12160.44..35242.01 rows=4120 width=22) (actual time=1810.540..3592.564 rows=383016 loops=1)
                                             Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=13567 read=38146
                                             ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=17.478..1059.712 rows=2609129 loops=1)
                                                   Buffers: shared read=25920
                                             ->  Hash  (cost=12160.17..12160.17 rows=1708 width=10) (actual time=1792.958..1792.958 rows=121572 loops=1)
                                                   Buckets: 131072 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 5773kB
                                                   Buffers: shared hit=13567 read=12226
                                                   ->  Hash Join  (cost=6.14..12160.17 rows=1708 width=10) (actual time=31.331..1735.215 rows=121572 loops=1)
                                                         Hash Cond: (mi_idx.info_type_id = it2.id)
                                                         Buffers: shared hit=13567 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=192955 width=14) (actual time=31.283..1649.164 rows=192967 loops=1)
                                                               Filter: (info > '7.0'::text)
                                                               Rows Removed by Filter: 1187068
                                                               Buffers: shared hit=13565 read=12226
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=2
                                                               ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.018..0.019 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                     Buffers: shared hit=2
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=23) (actual time=728.699..728.699 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=30.222..699.871 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=23.077..23.078 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=23.059..23.063 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared read=2
 Planning Time: 4669.559 ms
 Execution Time: 31084.695 ms
(73 rows)


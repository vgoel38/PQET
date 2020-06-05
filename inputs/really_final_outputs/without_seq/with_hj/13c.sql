                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=678844.18..678844.18 rows=1 width=96) (actual time=32889.332..32889.332 rows=1 loops=1)
   Buffers: shared hit=2822736 read=287329
   ->  Hash Join  (cost=63499.01..678844.18 rows=1 width=42) (actual time=27125.058..32889.287 rows=53 loops=1)
         Hash Cond: (mi.movie_id = mc.movie_id)
         Buffers: shared hit=2822736 read=287329
         ->  Hash Join  (cost=23643.26..638988.44 rows=3 width=25) (actual time=22289.552..28053.755 rows=127 loops=1)
               Hash Cond: (t.kind_id = kt.id)
               Buffers: shared hit=2577455 read=245341
               ->  Hash Join  (cost=23637.14..638982.31 rows=21 width=29) (actual time=20836.578..28044.081 rows=323 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=2577452 read=245339
                     ->  Hash Join  (cost=23631.01..638975.99 rows=2347 width=33) (actual time=10066.813..28033.496 rows=1800 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2577452 read=245337
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=8) (actual time=36.873..14730.882 rows=14835720 loops=1)
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=23630.94..23630.94 rows=400 width=25) (actual time=9939.688..9939.688 rows=294 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 27kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=400 width=25) (actual time=639.484..9939.373 rows=294 loops=1)
                                       Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                       Rows Removed by Filter: 2528018
                                       Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=9.889..9.889 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=9.867..9.871 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'release dates'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=9.499..9.499 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=9.477..9.481 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'movie'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=39855.35..39855.35 rows=2659 width=33) (actual time=4835.469..4835.469 rows=248554 loops=1)
               Buckets: 262144 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 18367kB
               Buffers: shared hit=245281 read=41988
               ->  Hash Join  (cost=16768.48..39855.35 rows=2659 width=33) (actual time=3557.766..4746.457 rows=248554 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=245281 read=41988
                     ->  Hash Join  (cost=16762.35..39848.08 rows=10637 width=37) (actual time=2272.374..4601.974 rows=580109 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=245281 read=41986
                           ->  Hash Join  (cost=12152.70..35236.03 rows=29462 width=22) (actual time=1509.694..3467.620 rows=1354883 loops=1)
                                 Hash Cond: (mc.movie_id = miidx.movie_id)
                                 Buffers: shared hit=13567 read=38146
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=17.999..961.548 rows=2609129 loops=1)
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1491.541..1491.541 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                       Buffers: shared hit=13567 read=12226
                                       ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=31.160..1323.074 rows=459925 loops=1)
                                             Hash Cond: (miidx.info_type_id = it.id)
                                             Buffers: shared hit=13567 read=12226
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=31.071..909.138 rows=1380035 loops=1)
                                                   Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.044..0.044 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.033..0.035 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared hit=2
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=23) (actual time=761.638..761.638 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared hit=231714 read=3840
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=30.272..732.534 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231714 read=3840
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=25.832..25.832 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=25.816..25.819 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'production companies'::text)
                                 Buffers: shared read=2
 Planning Time: 4730.140 ms
 Execution Time: 32908.571 ms
(78 rows)


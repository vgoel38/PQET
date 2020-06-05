                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=678564.86..678564.86 rows=1 width=96) (actual time=32797.886..32797.886 rows=1 loops=1)
   Buffers: shared hit=2822736 read=287329
   ->  Hash Join  (cost=63190.92..678564.85 rows=47 width=42) (actual time=26409.835..32559.012 rows=670390 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=2822736 read=287329
         ->  Hash Join  (cost=6.14..615364.78 rows=131290 width=4) (actual time=10913.188..17833.492 rows=3036719 loops=1)
               Hash Cond: (mi.info_type_id = it2.id)
               Buffers: shared hit=87585 read=202431
               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=8) (actual time=39.678..14188.257 rows=14835720 loops=1)
                     Buffers: shared hit=87582 read=202429
               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.357..21.357 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=21.335..21.339 rows=1 loops=1)
                           Index Cond: ((info)::text = 'release dates'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=63184.72..63184.72 rows=380 width=54) (actual time=14011.590..14011.590 rows=87293 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8689kB
               Buffers: shared hit=2735151 read=84898
               ->  Hash Join  (cost=40102.80..63184.72 rows=380 width=54) (actual time=13279.445..13974.209 rows=87293 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2735151 read=84898
                     ->  Hash Join  (cost=40096.67..63178.43 rows=1520 width=58) (actual time=12152.575..13904.619 rows=265239 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=2735151 read=84896
                           ->  Hash Join  (cost=35487.02..58568.44 rows=4209 width=43) (actual time=11435.781..12967.503 rows=773084 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=2503437 read=81056
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=13.842..1110.701 rows=2609129 loops=1)
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=35486.75..35486.75 rows=1745 width=31) (actual time=10960.351..10960.352 rows=209880 loops=1)
                                       Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 15015kB
                                       Buffers: shared hit=2503437 read=55136
                                       ->  Hash Join  (cost=12158.83..35486.75 rows=1745 width=31) (actual time=7506.015..10883.686 rows=209880 loops=1)
                                             Hash Cond: (t.id = miidx.movie_id)
                                             Buffers: shared hit=2503437 read=55136
                                             ->  Hash Join  (cost=6.14..23291.88 rows=361187 width=21) (actual time=883.208..9084.204 rows=662825 loops=1)
                                                   Hash Cond: (t.kind_id = kt.id)
                                                   Buffers: shared hit=2489870 read=42910
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=52.059..8521.938 rows=2528312 loops=1)
                                                         Buffers: shared hit=2489870 read=42908
                                                   ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=26.708..26.708 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=2
                                                         ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=26.693..26.696 rows=1 loops=1)
                                                               Index Cond: ((kind)::text = 'movie'::text)
                                                               Buffers: shared read=2
                                             ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1533.363..1533.363 rows=459925 loops=1)
                                                   Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                   Buffers: shared hit=13567 read=12226
                                                   ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=39.645..1362.022 rows=459925 loops=1)
                                                         Hash Cond: (miidx.info_type_id = it.id)
                                                         Buffers: shared hit=13567 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=39.557..936.980 rows=1380035 loops=1)
                                                               Buffers: shared hit=13565 read=12226
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=2
                                                               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.032..0.034 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                     Buffers: shared hit=2
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=23) (actual time=715.696..715.697 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared hit=231714 read=3840
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=30.199..687.428 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231714 read=3840
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=19.492..19.492 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=19.474..19.477 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'production companies'::text)
                                 Buffers: shared read=2
 Planning Time: 4518.876 ms
 Execution Time: 32836.810 ms
(76 rows)


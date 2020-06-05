                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15520.28..15520.28 rows=1 width=64) (actual time=12250.922..12250.922 rows=1 loops=1)
   Buffers: shared hit=22 read=230799
   ->  Hash Join  (cost=3598.07..15520.28 rows=1 width=23) (actual time=11134.443..12250.652 rows=761 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=22 read=230799
         ->  Hash Join  (cost=0.05..11921.52 rows=6273 width=4) (actual time=7244.299..8508.523 rows=614251 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=6 read=161890
               ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=708808 width=8) (actual time=19.524..8361.626 rows=706674 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 14129046
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.075..0.075 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.023..0.061 rows=1 loops=1)
                           Filter: ((info)::text = 'countries'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
         ->  Hash  (cost=3598.02..3598.02 rows=1 width=35) (actual time=3672.272..3672.272 rows=1147 loops=1)
               Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 90kB
               Buffers: shared hit=16 read=68909
               ->  Hash Join  (cost=2053.49..3598.02 rows=1 width=35) (actual time=3068.225..3671.358 rows=1147 loops=1)
                     Hash Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=16 read=68909
                     ->  Hash Join  (cost=0.03..1538.04 rows=55952 width=21) (actual time=84.192..1768.324 rows=98992 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=2 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=25) (actual time=22.751..1663.719 rows=391666 loops=1)
                                 Filter: (production_year > 2010)
                                 Rows Removed by Filter: 2136646
                                 Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.020 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                     ->  Hash  (cost=2053.46..2053.46 rows=3 width=14) (actual time=1868.408..1868.409 rows=31800 loops=1)
                           Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1623kB
                           Buffers: shared hit=14 read=32912
                           ->  Hash Join  (cost=604.80..2053.46 rows=3 width=14) (actual time=707.389..1858.889 rows=31800 loops=1)
                                 Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=14 read=32912
                                 ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=56.551..1188.451 rows=37091 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=11 read=24461
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..533.608 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=56.434..56.434 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=8 read=10
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=31.484..56.414 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                   Buffers: shared hit=8 read=10
                                 ->  Hash  (cost=578.52..578.52 rows=11890 width=10) (actual time=650.783..650.783 rows=454230 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Hash Join  (cost=0.05..578.52 rows=11890 width=10) (actual time=0.042..542.171 rows=454230 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.010..329.412 rows=1343555 loops=1)
                                                   Filter: (info < '8.5'::text)
                                                   Rows Removed by Filter: 36480
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.018 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
 Planning Time: 4844.291 ms
 Execution Time: 12251.417 ms
(75 rows)


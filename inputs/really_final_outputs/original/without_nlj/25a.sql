                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31034.78..31034.78 rows=1 width=128) (actual time=26924.192..26924.192 rows=1 loops=1)
   Buffers: shared hit=28 read=539064
   ->  Hash Join  (cost=13423.69..31034.78 rows=1 width=80) (actual time=22837.374..26909.512 rows=4407 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=28 read=539064
         ->  Hash Join  (cost=10812.25..28423.34 rows=1 width=69) (actual time=20210.083..24281.310 rows=7112 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=24 read=483452
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=359.733..11967.436 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=10812.25..10812.25 rows=1 width=81) (actual time=12116.593..12116.593 rows=11389 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1025kB
                     Buffers: shared hit=20 read=230802
                     ->  Hash Join  (cost=3553.96..10812.25 rows=1 width=81) (actual time=11311.417..12107.760 rows=11389 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=20 read=230802
                           ->  Hash Join  (cost=0.05..7258.30 rows=277 width=46) (actual time=7711.059..8487.398 rows=30413 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=31269 width=50) (actual time=4893.169..8471.860 rows=30801 loops=1)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 14804919
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.055..0.056 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.048 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=3553.91..3553.91 rows=4 width=35) (actual time=3600.213..3600.213 rows=50760 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3909kB
                                 Buffers: shared hit=17 read=68912
                                 ->  Hash Join  (cost=1955.51..3553.91 rows=4 width=35) (actual time=1888.457..3570.885 rows=50760 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=17 read=68912
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.212..961.031 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1955.51..1955.51 rows=4 width=14) (actual time=1859.119..1859.119 rows=50760 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2758kB
                                             Buffers: shared hit=16 read=32915
                                             ->  Hash Join  (cost=506.84..1955.51 rows=4 width=14) (actual time=696.325..1843.131 rows=50760 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=16 read=32915
                                                   ->  Hash Join  (cost=30.66..1479.31 rows=169 width=4) (actual time=74.922..1191.174 rows=62096 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=13 read=24464
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.017..506.933 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=30.66..30.66 rows=5 width=4) (actual time=74.748..74.748 rows=5 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=10 read=13
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=34.549..74.714 rows=5 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                                     Buffers: shared hit=10 read=13
                                                   ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=621.265..621.265 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.077..495.393 rows=459925 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=3 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.014..192.178 rows=1380035 loops=1)
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.031..0.034 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'votes'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2620.272..2620.272 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=14.821..2075.473 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 10043.334 ms
 Execution Time: 26926.864 ms
(81 rows)


                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31034.78..31034.78 rows=1 width=128) (actual time=27462.098..27462.098 rows=1 loops=1)
   Buffers: shared hit=14 read=539078
   ->  Hash Join  (cost=13423.69..31034.78 rows=1 width=80) (actual time=23115.951..27449.333 rows=4407 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=14 read=539078
         ->  Hash Join  (cost=10812.25..28423.34 rows=1 width=69) (actual time=20393.655..24725.996 rows=7112 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=11 read=483465
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=401.044..12264.814 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=10812.25..10812.25 rows=1 width=81) (actual time=12250.115..12250.115 rows=11389 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1025kB
                     Buffers: shared hit=11 read=230811
                     ->  Hash Join  (cost=3553.96..10812.25 rows=1 width=81) (actual time=11450.429..12242.029 rows=11389 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=11 read=230811
                           ->  Hash Join  (cost=0.05..7258.30 rows=277 width=46) (actual time=7811.674..8583.344 rows=30413 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=31269 width=50) (actual time=4953.723..8548.761 rows=30801 loops=1)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 14804919
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.069..19.069 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.003..19.043 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=3553.91..3553.91 rows=4 width=35) (actual time=3638.656..3638.656 rows=50760 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3909kB
                                 Buffers: shared hit=11 read=68918
                                 ->  Hash Join  (cost=1955.51..3553.91 rows=4 width=35) (actual time=1905.283..3610.588 rows=50760 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=11 read=68918
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.366..970.616 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=1955.51..1955.51 rows=4 width=14) (actual time=1872.797..1872.797 rows=50760 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2758kB
                                             Buffers: shared hit=11 read=32920
                                             ->  Hash Join  (cost=506.84..1955.51 rows=4 width=14) (actual time=717.824..1857.336 rows=50760 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=11 read=32920
                                                   ->  Hash Join  (cost=30.66..1479.31 rows=169 width=4) (actual time=83.275..1192.139 rows=62096 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=10 read=24467
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.355..504.994 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=30.66..30.66 rows=5 width=4) (actual time=78.757..78.757 rows=5 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=10 read=13
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=38.550..78.709 rows=5 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                                     Buffers: shared hit=10 read=13
                                                   ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=634.472..634.472 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                         Buffers: shared hit=1 read=8453
                                                         ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=7.130..508.590 rows=459925 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it.id)
                                                               Buffers: shared hit=1 read=8453
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=7.000..212.675 rows=1380035 loops=1)
                                                                     Buffers: shared read=8453
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.078..0.078 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.061..0.068 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'votes'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2705.080..2705.080 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=25.041..2166.633 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 9132.716 ms
 Execution Time: 27488.519 ms
(81 rows)


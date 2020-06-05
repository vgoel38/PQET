                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32161.28..32161.28 rows=1 width=128) (actual time=28382.141..28382.141 rows=1 loops=1)
   Buffers: shared hit=37 read=560846
   ->  Hash Join  (cost=14550.34..32161.28 rows=1 width=80) (actual time=24294.072..28381.403 rows=1273 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=37 read=560846
         ->  Hash Join  (cost=11938.89..29549.83 rows=1 width=69) (actual time=21675.256..25762.000 rows=1556 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=33 read=505234
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1244570 width=8) (actual time=360.057..12150.560 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=11938.89..11938.89 rows=1 width=85) (actual time=13449.222..13449.222 rows=1524 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 143kB
                     Buffers: shared hit=29 read=252584
                     ->  Hash Join  (cost=4677.14..11938.89 rows=1 width=85) (actual time=12729.802..13447.899 rows=1524 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=29 read=252584
                           ->  Hash Join  (cost=0.05..7261.72 rows=643 width=46) (actual time=7821.181..8602.229 rows=72258 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=72715 width=50) (actual time=4910.537..8569.977 rows=73047 loops=1)
                                       Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                       Rows Removed by Filter: 14762673
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.029 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.023 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=4677.09..4677.09 rows=1 width=39) (actual time=4828.135..4828.135 rows=1547 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 123kB
                                 Buffers: shared hit=26 read=90694
                                 ->  Hash Join  (cost=3078.68..4677.09 rows=1 width=39) (actual time=3126.569..4826.944 rows=1547 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=26 read=90694
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=19.689..1219.489 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=3078.68..3078.68 rows=1 width=18) (actual time=3012.853..3012.853 rows=1547 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 94kB
                                             Buffers: shared hit=25 read=54697
                                             ->  Hash Join  (cost=1630.01..3078.68 rows=1 width=18) (actual time=1911.657..3012.145 rows=1547 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=25 read=54697
                                                   ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=83.727..1216.434 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=17 read=24468
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.017..511.960 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=83.552..83.552 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=34.564..83.509 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=1587.08..1587.08 rows=4 width=14) (actual time=1783.899..1783.899 rows=1449 loops=1)
                                                         Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 82kB
                                                         Buffers: shared hit=8 read=30229
                                                         ->  Hash Join  (cost=604.59..1587.08 rows=4 width=14) (actual time=840.879..1783.067 rows=1449 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=8 read=30229
                                                               ->  Hash Join  (cost=128.41..1110.87 rows=333 width=4) (actual time=184.017..1149.374 rows=1814 loops=1)
                                                                     Hash Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared hit=5 read=21778
                                                                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.014..559.237 rows=2609129 loops=1)
                                                                           Buffers: shared hit=3 read=18786
                                                                     ->  Hash  (cost=128.41..128.41 rows=30 width=4) (actual time=159.293..159.293 rows=10 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=2 read=2992
                                                                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=27.121..159.249 rows=10 loops=1)
                                                                                 Filter: (name ~~ 'Lionsgate%'::text)
                                                                                 Rows Removed by Filter: 234987
                                                                                 Buffers: shared hit=2 read=2992
                                                               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=632.033..632.033 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.070..507.474 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.010..212.690 rows=1380035 loops=1)
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.029..0.033 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'votes'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739533 width=19) (actual time=2613.921..2613.921 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739533 width=19) (actual time=17.386..2072.510 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 15382.338 ms
 Execution Time: 28384.177 ms
(99 rows)


                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32161.48..32161.48 rows=1 width=128) (actual time=28260.758..28260.758 rows=1 loops=1)
   Buffers: shared hit=18 read=560865
   ->  Hash Join  (cost=14550.39..32161.48 rows=1 width=80) (actual time=24202.393..28260.002 rows=1273 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=18 read=560865
         ->  Hash Join  (cost=11938.95..29550.04 rows=1 width=69) (actual time=21558.059..25615.086 rows=1556 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=15 read=505252
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=360.800..12118.538 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=11938.95..11938.95 rows=1 width=85) (actual time=13331.620..13331.620 rows=1524 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 143kB
                     Buffers: shared hit=15 read=252598
                     ->  Hash Join  (cost=4677.14..11938.95 rows=1 width=85) (actual time=12608.827..13330.447 rows=1524 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=15 read=252598
                           ->  Hash Join  (cost=0.05..7261.78 rows=650 width=46) (actual time=7802.095..8583.914 rows=72258 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=4897.524..8527.205 rows=73047 loops=1)
                                       Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                       Rows Removed by Filter: 14762673
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.807..23.807 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=23.745..23.785 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=4677.09..4677.09 rows=1 width=39) (actual time=4728.802..4728.802 rows=1547 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 123kB
                                 Buffers: shared hit=15 read=90705
                                 ->  Hash Join  (cost=3078.68..4677.09 rows=1 width=39) (actual time=3111.080..4727.611 rows=1547 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=15 read=90705
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.160..1121.397 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=3078.68..3078.68 rows=1 width=18) (actual time=2988.411..2988.412 rows=1547 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 94kB
                                             Buffers: shared hit=15 read=54707
                                             ->  Hash Join  (cost=1630.01..3078.68 rows=1 width=18) (actual time=1888.163..2987.771 rows=1547 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=15 read=54707
                                                   ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=100.360..1232.858 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=14 read=24471
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.334..526.111 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=95.868..95.868 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=46.881..95.813 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=1587.08..1587.08 rows=4 width=14) (actual time=1743.023..1743.023 rows=1449 loops=1)
                                                         Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 82kB
                                                         Buffers: shared hit=1 read=30236
                                                         ->  Hash Join  (cost=604.59..1587.08 rows=4 width=14) (actual time=874.244..1742.180 rows=1449 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=1 read=30236
                                                               ->  Hash Join  (cost=128.41..1110.87 rows=333 width=4) (actual time=210.003..1103.429 rows=1814 loops=1)
                                                                     Hash Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared read=21783
                                                                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=21.018..496.137 rows=2609129 loops=1)
                                                                           Buffers: shared read=18789
                                                                     ->  Hash  (cost=128.41..128.41 rows=30 width=4) (actual time=163.823..163.823 rows=10 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=2994
                                                                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=6.162..163.781 rows=10 loops=1)
                                                                                 Filter: (name ~~ 'Lionsgate%'::text)
                                                                                 Rows Removed by Filter: 234987
                                                                                 Buffers: shared read=2994
                                                               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=637.049..637.049 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=21.604..512.267 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=1 read=8453
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=21.479..220.473 rows=1380035 loops=1)
                                                                                 Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.078..0.078 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.060..0.068 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'votes'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2639.253..2639.253 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=42.514..2094.831 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 14440.218 ms
 Execution Time: 28263.635 ms
(99 rows)


                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34507.65..34507.65 rows=1 width=128) (actual time=28295.068..28295.068 rows=1 loops=1)
   Buffers: shared hit=18 read=560865
   ->  Hash Join  (cost=16896.56..34507.65 rows=1 width=80) (actual time=24233.637..28293.674 rows=2825 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=18 read=560865
         ->  Hash Join  (cost=14252.29..31863.38 rows=1 width=69) (actual time=21487.711..25546.701 rows=2825 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=15 read=505252
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=359.855..12171.383 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=14252.29..14252.29 rows=1 width=85) (actual time=13210.222..13210.222 rows=2840 loops=1)
                     Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 264kB
                     Buffers: shared hit=15 read=252598
                     ->  Hash Join  (cost=4677.14..14252.29 rows=1 width=85) (actual time=12474.007..13208.675 rows=2840 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=15 read=252598
                           ->  Hash Join  (cost=0.05..9575.00 rows=1674 width=46) (actual time=7719.711..8492.544 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2715.094..8412.754 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.682..23.683 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.630..23.670 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=4677.09..4677.09 rows=1 width=39) (actual time=4687.161..4687.161 rows=1547 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 123kB
                                 Buffers: shared hit=15 read=90705
                                 ->  Hash Join  (cost=3078.68..4677.09 rows=1 width=39) (actual time=3069.511..4685.929 rows=1547 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=15 read=90705
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=20.889..1125.610 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=3078.68..3078.68 rows=1 width=18) (actual time=2953.084..2953.084 rows=1547 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 94kB
                                             Buffers: shared hit=15 read=54707
                                             ->  Hash Join  (cost=1630.01..3078.68 rows=1 width=18) (actual time=1836.384..2952.390 rows=1547 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=15 read=54707
                                                   ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=92.010..1222.928 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=14 read=24471
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.328..517.213 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=87.526..87.526 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=38.544..87.494 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=1587.08..1587.08 rows=4 width=14) (actual time=1717.332..1717.332 rows=1449 loops=1)
                                                         Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 82kB
                                                         Buffers: shared hit=1 read=30236
                                                         ->  Hash Join  (cost=604.59..1587.08 rows=4 width=14) (actual time=849.258..1716.531 rows=1449 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=1 read=30236
                                                               ->  Hash Join  (cost=128.41..1110.87 rows=333 width=4) (actual time=182.508..1069.479 rows=1814 loops=1)
                                                                     Hash Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared read=21783
                                                                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=21.024..506.949 rows=2609129 loops=1)
                                                                           Buffers: shared read=18789
                                                                     ->  Hash  (cost=128.41..128.41 rows=30 width=4) (actual time=138.917..138.917 rows=10 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=2994
                                                                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=5.779..138.891 rows=10 loops=1)
                                                                                 Filter: (name ~~ 'Lionsgate%'::text)
                                                                                 Rows Removed by Filter: 234987
                                                                                 Buffers: shared read=2994
                                                               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=645.406..645.406 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=24.104..518.891 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=1 read=8453
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=23.979..221.865 rows=1380035 loops=1)
                                                                                 Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.074..0.074 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.057..0.064 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'votes'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2735.688..2735.688 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=63.679..1358.760 rows=4167491 loops=1)
                     Buffers: shared read=55613
 Planning Time: 14222.089 ms
 Execution Time: 28298.345 ms
(97 rows)


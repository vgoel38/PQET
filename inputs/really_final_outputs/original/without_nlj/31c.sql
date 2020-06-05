                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34507.65..34507.65 rows=1 width=128) (actual time=28912.584..28912.584 rows=1 loops=1)
   Buffers: shared hit=37 read=560846
   ->  Hash Join  (cost=16896.56..34507.65 rows=1 width=80) (actual time=24849.851..28911.260 rows=2825 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=37 read=560846
         ->  Hash Join  (cost=14252.29..31863.38 rows=1 width=69) (actual time=22204.103..26264.536 rows=2825 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=33 read=505234
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=361.114..12990.667 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=14252.29..14252.29 rows=1 width=85) (actual time=13114.256..13114.256 rows=2840 loops=1)
                     Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 264kB
                     Buffers: shared hit=29 read=252584
                     ->  Hash Join  (cost=4677.14..14252.29 rows=1 width=85) (actual time=12379.202..13112.689 rows=2840 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=29 read=252584
                           ->  Hash Join  (cost=0.05..9575.00 rows=1674 width=46) (actual time=7634.692..8404.861 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2855.107..8348.773 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.026 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=4677.09..4677.09 rows=1 width=39) (actual time=4678.566..4678.566 rows=1547 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 123kB
                                 Buffers: shared hit=26 read=90694
                                 ->  Hash Join  (cost=3078.68..4677.09 rows=1 width=39) (actual time=3060.960..4677.311 rows=1547 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=26 read=90694
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.062..1130.934 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=3078.68..3078.68 rows=1 width=18) (actual time=2944.096..2944.096 rows=1547 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 94kB
                                             Buffers: shared hit=25 read=54697
                                             ->  Hash Join  (cost=1630.01..3078.68 rows=1 width=18) (actual time=1828.605..2943.385 rows=1547 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=25 read=54697
                                                   ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=75.338..1211.605 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=17 read=24468
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..509.641 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=75.200..75.200 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=34.555..75.164 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=1587.08..1587.08 rows=4 width=14) (actual time=1720.184..1720.184 rows=1449 loops=1)
                                                         Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 82kB
                                                         Buffers: shared hit=8 read=30229
                                                         ->  Hash Join  (cost=604.59..1587.08 rows=4 width=14) (actual time=849.313..1719.323 rows=1449 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=8 read=30229
                                                               ->  Hash Join  (cost=128.41..1110.87 rows=333 width=4) (actual time=180.679..1074.906 rows=1814 loops=1)
                                                                     Hash Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared hit=5 read=21778
                                                                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.011..470.788 rows=2609129 loops=1)
                                                                           Buffers: shared hit=3 read=18786
                                                                     ->  Hash  (cost=128.41..128.41 rows=30 width=4) (actual time=159.875..159.875 rows=10 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=2 read=2992
                                                                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=27.134..159.844 rows=10 loops=1)
                                                                                 Filter: (name ~~ 'Lionsgate%'::text)
                                                                                 Rows Removed by Filter: 234987
                                                                                 Buffers: shared hit=2 read=2992
                                                               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=642.800..642.800 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.053..517.346 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.007..233.544 rows=1380035 loops=1)
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.029 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.021..0.023 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'votes'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2620.590..2620.590 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=23.313..1246.519 rows=4167491 loops=1)
                     Buffers: shared hit=1 read=55612
 Planning Time: 15315.876 ms
 Execution Time: 28932.354 ms
(97 rows)


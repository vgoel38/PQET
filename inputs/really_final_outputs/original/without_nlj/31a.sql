                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32161.48..32161.48 rows=1 width=128) (actual time=28222.833..28222.833 rows=1 loops=1)
   Buffers: shared hit=37 read=560846
   ->  Hash Join  (cost=14550.39..32161.48 rows=1 width=80) (actual time=24164.832..28222.119 rows=1273 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=37 read=560846
         ->  Hash Join  (cost=11938.95..29550.04 rows=1 width=69) (actual time=21541.890..25598.616 rows=1556 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=33 read=505234
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=362.511..12137.597 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=11938.95..11938.95 rows=1 width=85) (actual time=13296.637..13296.637 rows=1524 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 143kB
                     Buffers: shared hit=29 read=252584
                     ->  Hash Join  (cost=4677.14..11938.95 rows=1 width=85) (actual time=12365.623..13295.462 rows=1524 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=29 read=252584
                           ->  Hash Join  (cost=0.05..7261.78 rows=650 width=46) (actual time=7617.315..8606.683 rows=72258 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=4906.342..8573.354 rows=73047 loops=1)
                                       Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                       Rows Removed by Filter: 14762673
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.051..0.051 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.037 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=4677.09..4677.09 rows=1 width=39) (actual time=4670.375..4670.375 rows=1547 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 123kB
                                 Buffers: shared hit=26 read=90694
                                 ->  Hash Join  (cost=3078.68..4677.09 rows=1 width=39) (actual time=3053.412..4669.086 rows=1547 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=26 read=90694
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.061..1117.494 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=3078.68..3078.68 rows=1 width=18) (actual time=2937.629..2937.629 rows=1547 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 94kB
                                             Buffers: shared hit=25 read=54697
                                             ->  Hash Join  (cost=1630.01..3078.68 rows=1 width=18) (actual time=1845.847..2936.964 rows=1547 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=25 read=54697
                                                   ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=83.703..1216.335 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=17 read=24468
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.017..517.582 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=83.528..83.528 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=34.536..83.481 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=1587.08..1587.08 rows=4 width=14) (actual time=1708.892..1708.892 rows=1449 loops=1)
                                                         Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 82kB
                                                         Buffers: shared hit=8 read=30229
                                                         ->  Hash Join  (cost=604.59..1587.08 rows=4 width=14) (actual time=840.927..1708.109 rows=1449 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=8 read=30229
                                                               ->  Hash Join  (cost=128.41..1110.87 rows=333 width=4) (actual time=180.174..1069.306 rows=1814 loops=1)
                                                                     Hash Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared hit=5 read=21778
                                                                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.013..511.032 rows=2609129 loops=1)
                                                                           Buffers: shared hit=3 read=18786
                                                                     ->  Hash  (cost=128.41..128.41 rows=30 width=4) (actual time=159.694..159.694 rows=10 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=2 read=2992
                                                                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=27.375..159.658 rows=10 loops=1)
                                                                                 Filter: (name ~~ 'Lionsgate%'::text)
                                                                                 Rows Removed by Filter: 234987
                                                                                 Buffers: shared hit=2 read=2992
                                                               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=637.259..637.259 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.045..514.842 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.008..222.993 rows=1380035 loops=1)
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.020 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'votes'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2618.042..2618.042 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=13.131..2079.797 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 15286.316 ms
 Execution Time: 28224.336 ms
(99 rows)


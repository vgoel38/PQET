                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33363.92..33363.92 rows=1 width=128) (actual time=27055.144..27055.144 rows=1 loops=1)
   Buffers: shared hit=32 read=539068
   ->  Hash Join  (cost=15752.83..33363.92 rows=1 width=80) (actual time=22557.548..27031.648 rows=26153 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=32 read=539068
         ->  Hash Join  (cost=13141.39..30752.48 rows=1 width=69) (actual time=19927.063..24387.608 rows=42900 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=28 read=483456
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=361.370..11947.199 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=13141.39..13141.39 rows=1 width=81) (actual time=12174.845..12174.845 rows=63386 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5544kB
                     Buffers: shared hit=24 read=230806
                     ->  Hash Join  (cost=3566.24..13141.39 rows=1 width=81) (actual time=11367.533..12147.884 rows=63386 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=24 read=230806
                           ->  Hash Join  (cost=0.05..9575.00 rows=1674 width=46) (actual time=7759.801..8474.395 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2839.314..8420.332 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.022 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=3566.19..3566.19 rows=6 width=35) (actual time=3607.692..3607.692 rows=63701 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4772kB
                                 Buffers: shared hit=21 read=68916
                                 ->  Hash Join  (cost=1967.78..3566.19 rows=6 width=35) (actual time=1896.999..3575.149 rows=63701 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=21 read=68916
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.409..959.050 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1967.78..1967.78 rows=6 width=14) (actual time=1863.967..1863.967 rows=63701 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3335kB
                                             Buffers: shared hit=20 read=32919
                                             ->  Hash Join  (cost=519.11..1967.78 rows=6 width=14) (actual time=708.682..1844.969 rows=63701 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=20 read=32919
                                                   ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=83.681..1183.840 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=17 read=24468
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.015..488.995 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=83.516..83.516 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=34.537..83.488 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=624.841..624.841 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.120..503.689 rows=459925 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=3 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.017..218.955 rows=1380035 loops=1)
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.059..0.059 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.053 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'votes'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2625.705..2625.705 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=20.835..2084.744 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 9887.465 ms
 Execution Time: 27057.883 ms
(81 rows)


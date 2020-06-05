                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33363.92..33363.92 rows=1 width=128) (actual time=27213.759..27213.759 rows=1 loops=1)
   Buffers: shared hit=18 read=539082
   ->  Hash Join  (cost=15752.83..33363.92 rows=1 width=80) (actual time=22700.211..27190.281 rows=26153 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=18 read=539082
         ->  Hash Join  (cost=13141.39..30752.48 rows=1 width=69) (actual time=20078.265..24554.895 rows=42900 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=15 read=483469
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=359.474..11959.079 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=13141.39..13141.39 rows=1 width=81) (actual time=12327.055..12327.055 rows=63386 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5544kB
                     Buffers: shared hit=15 read=230815
                     ->  Hash Join  (cost=3566.24..13141.39 rows=1 width=81) (actual time=11518.832..12299.540 rows=63386 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=15 read=230815
                           ->  Hash Join  (cost=0.05..9575.00 rows=1674 width=46) (actual time=7813.833..8528.739 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2832.237..8451.234 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=24.022..24.022 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.997..24.009 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=3566.19..3566.19 rows=6 width=35) (actual time=3704.950..3704.950 rows=63701 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4772kB
                                 Buffers: shared hit=15 read=68922
                                 ->  Hash Join  (cost=1967.78..3566.19 rows=6 width=35) (actual time=1994.795..3671.533 rows=63701 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=15 read=68922
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=19.276..938.321 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=1967.78..1967.78 rows=6 width=14) (actual time=1963.843..1963.844 rows=63701 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3335kB
                                             Buffers: shared hit=15 read=32924
                                             ->  Hash Join  (cost=519.11..1967.78 rows=6 width=14) (actual time=806.181..1944.429 rows=63701 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=15 read=32924
                                                   ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=92.033..1194.031 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=14 read=24471
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.346..494.610 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=87.512..87.512 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=38.524..87.467 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=713.988..713.988 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                         Buffers: shared hit=1 read=8453
                                                         ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=6.574..577.222 rows=459925 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it.id)
                                                               Buffers: shared hit=1 read=8453
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=6.455..262.023 rows=1380035 loops=1)
                                                                     Buffers: shared read=8453
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.072..0.072 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.057..0.064 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'votes'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2616.798..2616.798 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=20.254..2077.761 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 9079.360 ms
 Execution Time: 27216.613 ms
(81 rows)


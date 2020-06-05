                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31089.42..31089.42 rows=1 width=128) (actual time=27159.939..27159.939 rows=1 loops=1)
   Buffers: shared hit=28 read=539064
   ->  Hash Join  (cost=13521.85..31089.42 rows=1 width=80) (actual time=22664.543..27159.903 rows=6 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=28 read=539064
         ->  Hash Join  (cost=10910.41..28477.97 rows=1 width=69) (actual time=20012.366..24507.721 rows=6 loops=1)
               Hash Cond: (t.id = mi.movie_id)
               Buffers: shared hit=24 read=483452
               ->  Hash Join  (cost=1696.57..19264.13 rows=29 width=29) (actual time=9757.800..14381.159 rows=24 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=5 read=288647
                     ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=359.701..12456.293 rows=1244716 loops=1)
                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                           Rows Removed by Filter: 34999628
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=1696.56..1696.56 rows=59 width=21) (actual time=1765.623..1765.624 rows=73 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 13kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=59 width=21) (actual time=19.832..1765.353 rows=73 loops=1)
                                 Filter: ((production_year > 2010) AND (title ~~ 'Vampire%'::text))
                                 Rows Removed by Filter: 2528239
                                 Buffers: shared hit=1 read=35997
               ->  Hash  (cost=9213.84..9213.84 rows=1 width=60) (actual time=10126.509..10126.509 rows=11389 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 768kB
                     Buffers: shared hit=19 read=194805
                     ->  Hash Join  (cost=1955.55..9213.84 rows=1 width=60) (actual time=9323.040..10119.221 rows=11389 loops=1)
                           Hash Cond: (mi.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=19 read=194805
                           ->  Hash Join  (cost=0.05..7258.30 rows=277 width=46) (actual time=7488.060..8265.472 rows=30413 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=31269 width=50) (actual time=4788.074..8249.850 rows=30801 loops=1)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 14804919
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.058..0.058 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.049 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=1955.51..1955.51 rows=4 width=14) (actual time=1834.883..1834.883 rows=50760 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2758kB
                                 Buffers: shared hit=16 read=32915
                                 ->  Hash Join  (cost=506.84..1955.51 rows=4 width=14) (actual time=678.749..1818.759 rows=50760 loops=1)
                                       Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=16 read=32915
                                       ->  Hash Join  (cost=30.66..1479.31 rows=169 width=4) (actual time=62.585..1172.312 rows=62096 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=13 read=24464
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.014..503.221 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=30.66..30.66 rows=5 width=4) (actual time=62.418..62.418 rows=5 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=30.549..62.388 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=616.042..616.042 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                             Buffers: shared hit=3 read=8451
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.066..495.839 rows=459925 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it.id)
                                                   Buffers: shared hit=3 read=8451
                                                   ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.009..211.412 rows=1380035 loops=1)
                                                         Buffers: shared hit=2 read=8451
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.029..0.033 rows=1 loops=1)
                                                               Filter: ((info)::text = 'votes'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2647.396..2647.396 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=50.628..2100.143 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 9691.006 ms
 Execution Time: 27161.438 ms
(83 rows)


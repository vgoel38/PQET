                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31089.42..31089.42 rows=1 width=128) (actual time=27021.717..27021.717 rows=1 loops=1)
   Buffers: shared hit=14 read=539078
   ->  Hash Join  (cost=13521.85..31089.42 rows=1 width=80) (actual time=22659.554..27021.690 rows=6 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=14 read=539078
         ->  Hash Join  (cost=10910.41..28477.97 rows=1 width=69) (actual time=20037.457..24399.590 rows=6 loops=1)
               Hash Cond: (t.id = mi.movie_id)
               Buffers: shared hit=11 read=483465
               ->  Hash Join  (cost=1696.57..19264.13 rows=29 width=29) (actual time=9691.278..14181.624 rows=24 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared read=288652
                     ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=359.578..12310.219 rows=1244716 loops=1)
                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                           Rows Removed by Filter: 34999628
                           Buffers: shared read=252654
                     ->  Hash  (cost=1696.56..1696.56 rows=59 width=21) (actual time=1716.043..1716.043 rows=73 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 13kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=59 width=21) (actual time=20.032..1715.797 rows=73 loops=1)
                                 Filter: ((production_year > 2010) AND (title ~~ 'Vampire%'::text))
                                 Rows Removed by Filter: 2528239
                                 Buffers: shared read=35998
               ->  Hash  (cost=9213.84..9213.84 rows=1 width=60) (actual time=10217.919..10217.919 rows=11389 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 768kB
                     Buffers: shared hit=11 read=194813
                     ->  Hash Join  (cost=1955.55..9213.84 rows=1 width=60) (actual time=9415.206..10210.833 rows=11389 loops=1)
                           Hash Cond: (mi.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=11 read=194813
                           ->  Hash Join  (cost=0.05..7258.30 rows=277 width=46) (actual time=7529.128..8306.540 rows=30413 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=31269 width=50) (actual time=4786.167..8270.502 rows=30801 loops=1)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 14804919
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.958..20.958 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=20.905..20.945 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=1955.51..1955.51 rows=4 width=14) (actual time=1885.999..1885.999 rows=50760 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2758kB
                                 Buffers: shared hit=11 read=32920
                                 ->  Hash Join  (cost=506.84..1955.51 rows=4 width=14) (actual time=730.057..1870.055 rows=50760 loops=1)
                                       Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=11 read=32920
                                       ->  Hash Join  (cost=30.66..1479.31 rows=169 width=4) (actual time=104.907..1214.029 rows=62096 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=10 read=24467
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=26.005..528.256 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=30.66..30.66 rows=5 width=4) (actual time=78.741..78.741 rows=5 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=46.882..78.705 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=624.975..624.975 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                             Buffers: shared hit=1 read=8453
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=7.023..500.096 rows=459925 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=1 read=8453
                                                   ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=6.901..199.985 rows=1380035 loops=1)
                                                         Buffers: shared read=8453
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.075..0.075 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.059..0.065 rows=1 loops=1)
                                                               Filter: ((info)::text = 'votes'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2616.976..2616.976 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=20.378..2078.692 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 9254.206 ms
 Execution Time: 27024.583 ms
(83 rows)


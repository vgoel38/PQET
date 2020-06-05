                                                                                          QUERY PLAN                                                                                          
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32599.28..32599.28 rows=1 width=128) (actual time=28145.619..28145.620 rows=1 loops=1)
   Buffers: shared hit=18 read=560865
   ->  Hash Join  (cost=15031.69..32599.28 rows=1 width=80) (actual time=24143.975..28145.539 rows=84 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=18 read=560865
         ->  Hash Join  (cost=12420.25..29987.84 rows=1 width=69) (actual time=21447.454..25448.987 rows=84 loops=1)
               Hash Cond: (t.id = mi_idx.movie_id)
               Buffers: shared hit=15 read=505252
               ->  Hash Join  (cost=11944.07..29511.66 rows=1 width=83) (actual time=20793.998..24795.496 rows=84 loops=1)
                     Hash Cond: (t.id = mi.movie_id)
                     Buffers: shared hit=15 read=496798
                     ->  Hash Join  (cost=2089.23..19656.79 rows=254 width=29) (actual time=9609.074..13724.537 rows=637 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared read=288652
                           ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=376.512..11850.742 rows=1244716 loops=1)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 34999628
                                 Buffers: shared read=252654
                           ->  Hash  (cost=2089.15..2089.15 rows=516 width=21) (actual time=1713.861..1713.861 rows=533 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 43kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..2089.15 rows=516 width=21) (actual time=11.193..1713.071 rows=533 loops=1)
                                       Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                       Rows Removed by Filter: 2527779
                                       Buffers: shared read=35998
                     ->  Hash  (cost=9854.84..9854.84 rows=1 width=54) (actual time=11070.723..11070.723 rows=260 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 22kB
                           Buffers: shared hit=15 read=208146
                           ->  Hash Join  (cost=2593.04..9854.84 rows=1 width=54) (actual time=10396.503..11070.526 rows=260 loops=1)
                                 Hash Cond: (mi.movie_id = mk.movie_id)
                                 Buffers: shared hit=15 read=208146
                                 ->  Hash Join  (cost=0.05..7261.78 rows=650 width=46) (actual time=7819.186..8733.890 rows=72258 loops=1)
                                       Hash Cond: (mi.info_type_id = it1.id)
                                       Buffers: shared hit=1 read=161892
                                       ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=4791.101..8703.956 rows=73047 loops=1)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 14762673
                                             Buffers: shared read=161892
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.034 rows=1 loops=1)
                                                   Filter: ((info)::text = 'genres'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=2592.99..2592.99 rows=1 width=8) (actual time=2322.437..2322.438 rows=315 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 21kB
                                       Buffers: shared hit=14 read=46254
                                       ->  Hash Join  (cost=1144.32..2592.99 rows=1 width=8) (actual time=1317.402..2322.279 rows=315 loops=1)
                                             Hash Cond: (mk.movie_id = mc.movie_id)
                                             Buffers: shared hit=14 read=46254
                                             ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=118.508..1252.441 rows=76714 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=14 read=24471
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=22.468..545.751 rows=4523930 loops=1)
                                                         Buffers: shared read=24454
                                                   ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=95.878..95.878 rows=7 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=14 read=17
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=46.886..95.841 rows=7 loops=1)
                                                               Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                               Buffers: shared hit=14 read=17
                                             ->  Hash  (cost=1101.39..1101.39 rows=1 width=4) (actual time=1060.556..1060.556 rows=135 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 13kB
                                                   Buffers: shared read=21783
                                                   ->  Hash Join  (cost=128.41..1101.39 rows=1 width=4) (actual time=254.360..1060.432 rows=135 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..972.33 rows=7977 width=8) (actual time=23.776..914.178 rows=7963 loops=1)
                                                               Filter: (note ~~ '%(Blu-ray)%'::text)
                                                               Rows Removed by Filter: 2601166
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=128.41..128.41 rows=30 width=4) (actual time=144.505..144.505 rows=10 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=11.975..144.466 rows=10 loops=1)
                                                                     Filter: (name ~~ 'Lionsgate%'::text)
                                                                     Rows Removed by Filter: 234987
                                                                     Buffers: shared read=2994
               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=653.375..653.375 rows=459925 loops=1)
                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                     Buffers: shared read=8454
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=32.077..526.150 rows=459925 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it2.id)
                           Buffers: shared read=8454
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=24.517..218.702 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.513..7.513 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=7.492..7.498 rows=1 loops=1)
                                       Filter: ((info)::text = 'votes'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2691.351..2691.351 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=27.602..2134.015 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 14254.885 ms
 Execution Time: 28148.228 ms
(103 rows)


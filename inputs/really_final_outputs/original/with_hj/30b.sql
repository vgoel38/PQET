                                                                                                            QUERY PLAN                                                                                                            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31641.16..31641.16 rows=1 width=128) (actual time=27258.392..27258.392 rows=1 loops=1)
   Buffers: shared hit=19 read=539814
   ->  Hash Join  (cost=14030.07..31641.16 rows=1 width=80) (actual time=23905.533..27258.344 rows=28 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=19 read=539814
         ->  Hash Join  (cost=11418.63..29029.72 rows=1 width=69) (actual time=21255.933..24608.729 rows=28 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=16 read=484201
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=401.541..12232.529 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=11418.62..11418.62 rows=1 width=85) (actual time=12224.245..12224.245 rows=12 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=16 read=231547
                     ->  Hash Join  (cost=4154.40..11418.62 rows=1 width=85) (actual time=11681.048..12224.197 rows=12 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=16 read=231547
                           ->  Hash Join  (cost=2065.17..9329.40 rows=1 width=64) (actual time=9688.604..10487.231 rows=8247 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=16 read=195549
                                 ->  Hash Join  (cost=2065.12..9329.35 rows=1 width=68) (actual time=6966.792..10460.163 rows=10295 loops=1)
                                       Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=16 read=195548
                                       ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=4917.632..8416.912 rows=73047 loops=1)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 14762673
                                             Buffers: shared read=161892
                                       ->  Hash  (cost=2065.12..2065.12 rows=1 width=18) (actual time=2015.101..2015.101 rows=16283 loops=1)
                                             Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 936kB
                                             Buffers: shared hit=16 read=33656
                                             ->  Hash Join  (cost=1543.84..2065.12 rows=1 width=18) (actual time=1424.435..2008.375 rows=16283 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=16 read=33656
                                                   ->  Hash Join  (cost=1543.79..2065.07 rows=27 width=22) (actual time=1424.382..1996.640 rows=49655 loops=1)
                                                         Hash Cond: (mi_idx.movie_id = mk.movie_id)
                                                         Buffers: shared hit=15 read=33656
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=24.467..335.469 rows=1380035 loops=1)
                                                               Buffers: shared read=8453
                                                         ->  Hash  (cost=1543.79..1543.79 rows=9 width=8) (actual time=1365.019..1365.019 rows=16336 loops=1)
                                                               Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 767kB
                                                               Buffers: shared hit=15 read=25203
                                                               ->  Hash Join  (cost=95.09..1543.79 rows=9 width=8) (actual time=241.965..1360.357 rows=16336 loops=1)
                                                                     Hash Cond: (cc.status_id = cct2.id)
                                                                     Buffers: shared hit=15 read=25203
                                                                     ->  Hash Join  (cost=95.06..1543.75 rows=36 width=12) (actual time=227.857..1346.382 rows=36010 loops=1)
                                                                           Hash Cond: (cc.subject_id = cct1.id)
                                                                           Buffers: shared hit=15 read=25202
                                                                           ->  Hash Join  (cost=95.03..1543.71 rows=71 width=16) (actual time=227.792..1336.099 rows=36010 loops=1)
                                                                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                 Buffers: shared hit=14 read=25202
                                                                                 ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=120.410..1226.184 rows=76714 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=14 read=24471
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=24.385..515.234 rows=4523930 loops=1)
                                                                                             Buffers: shared read=24454
                                                                                       ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=95.861..95.861 rows=7 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=14 read=17
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=46.871..95.809 rows=7 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                                   Buffers: shared hit=14 read=17
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=81.548..81.548 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared read=731
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=7.904..41.022 rows=135086 loops=1)
                                                                                             Buffers: shared read=731
                                                                           ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.025..0.025 rows=2 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.014..0.018 rows=2 loops=1)
                                                                                       Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                                       Rows Removed by Filter: 2
                                                                                       Buffers: shared hit=1
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=6.528..6.528 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=6.506..6.508 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared read=1
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.021..0.023 rows=1 loops=1)
                                                               Filter: ((info)::text = 'votes'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=22.617..22.617 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=22.565..22.605 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=2089.15..2089.15 rows=516 width=21) (actual time=1734.834..1734.834 rows=533 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 43kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..2089.15 rows=516 width=21) (actual time=34.432..1733.967 rows=533 loops=1)
                                       Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                       Rows Removed by Filter: 2527779
                                       Buffers: shared read=35998
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2644.445..2644.445 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=39.455..2097.454 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 14801.490 ms
 Execution Time: 27261.080 ms
(111 rows)


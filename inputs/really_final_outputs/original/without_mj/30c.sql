                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=613.12..613.12 rows=1 width=128) (actual time=1010414.110..1010414.110 rows=1 loops=1)
   Buffers: shared hit=2254754 read=269895
   ->  Nested Loop  (cost=52.34..613.12 rows=1 width=80) (actual time=7602.102..1010365.155 rows=8024 loops=1)
         Buffers: shared hit=2254754 read=269895
         ->  Nested Loop  (cost=52.33..613.09 rows=2 width=84) (actual time=4486.767..1001723.754 rows=338545 loops=1)
               Buffers: shared hit=899148 read=268457
               ->  Nested Loop  (cost=52.32..613.03 rows=1 width=100) (actual time=4451.780..977710.672 rows=4385 loops=1)
                     Buffers: shared hit=883626 read=263678
                     ->  Nested Loop  (cost=52.30..612.84 rows=1 width=89) (actual time=1248.871..941152.823 rows=7247 loops=1)
                           Buffers: shared hit=860170 read=258108
                           ->  Hash Join  (cost=52.28..612.39 rows=1 width=81) (actual time=355.836..173516.446 rows=10291 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=272426 read=128732
                                 ->  Nested Loop  (cost=52.24..612.34 rows=17 width=85) (actual time=338.327..173453.498 rows=12194 loops=1)
                                       Buffers: shared hit=272423 read=128731
                                       ->  Nested Loop  (cost=52.22..553.53 rows=224 width=35) (actual time=139.896..81299.470 rows=17018 loops=1)
                                             Buffers: shared hit=54418 read=22884
                                             ->  Hash Join  (cost=52.21..529.17 rows=224 width=14) (actual time=104.213..1939.049 rows=17018 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=2 read=9185
                                                   ->  Hash Join  (cost=52.18..529.05 rows=897 width=18) (actual time=103.797..1893.598 rows=61559 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=2 read=9184
                                                         ->  Hash Join  (cost=52.15..528.63 rows=3587 width=22) (actual time=103.768..1817.134 rows=95399 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = cc.movie_id)
                                                               Buffers: shared hit=1 read=9184
                                                               ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=9.070..1343.892 rows=459925 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=8.939..558.581 rows=1380035 loops=1)
                                                                           Buffers: shared read=8453
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.088..0.088 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.055..0.074 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'votes'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=92.707..92.707 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                     Buffers: shared read=731
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=13.908..49.869 rows=135086 loops=1)
                                                                           Buffers: shared read=731
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.006 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.124..0.125 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.119..0.120 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=4.658..4.658 rows=1 loops=17018)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Buffers: shared hit=54416 read=13699
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=5.251..5.410 rows=1 loops=17018)
                                             Index Cond: (movie_id = t.id)
                                             Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                             Rows Removed by Filter: 71
                                             Buffers: shared hit=218005 read=105847
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=17.474..17.474 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=17.415..17.456 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=62.712..74.588 rows=1 loops=10291)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 66
                                 Buffers: shared hit=587744 read=129376
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=5.039..5.039 rows=1 loops=7247)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=23456 read=5570
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=5.164..5.428 rows=77 loops=4385)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=15522 read=4779
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.025..0.025 rows=0 loops=338545)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=1355606 read=1438
 Planning Time: 14666.099 ms
 Execution Time: 1010414.767 ms
(92 rows)


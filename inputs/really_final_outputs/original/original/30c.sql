                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=613.12..613.12 rows=1 width=128) (actual time=1058746.076..1058746.076 rows=1 loops=1)
   Buffers: shared hit=2254785 read=269864
   ->  Nested Loop  (cost=52.34..613.12 rows=1 width=80) (actual time=8044.232..1058696.689 rows=8024 loops=1)
         Buffers: shared hit=2254785 read=269864
         ->  Nested Loop  (cost=52.33..613.09 rows=2 width=84) (actual time=4778.882..1050324.238 rows=338545 loops=1)
               Buffers: shared hit=899173 read=268432
               ->  Nested Loop  (cost=52.32..613.03 rows=1 width=100) (actual time=4735.571..1016787.163 rows=4385 loops=1)
                     Buffers: shared hit=883648 read=263656
                     ->  Nested Loop  (cost=52.30..612.84 rows=1 width=89) (actual time=1241.010..979824.760 rows=7247 loops=1)
                           Buffers: shared hit=860190 read=258088
                           ->  Hash Join  (cost=52.28..612.39 rows=1 width=81) (actual time=314.629..188257.084 rows=10291 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=272440 read=128718
                                 ->  Nested Loop  (cost=52.24..612.34 rows=17 width=85) (actual time=314.570..188210.520 rows=12194 loops=1)
                                       Buffers: shared hit=272436 read=128718
                                       ->  Nested Loop  (cost=52.22..553.53 rows=224 width=35) (actual time=124.485..84550.692 rows=17018 loops=1)
                                             Buffers: shared hit=54427 read=22875
                                             ->  Hash Join  (cost=52.21..529.17 rows=224 width=14) (actual time=95.177..1963.702 rows=17018 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=7 read=9180
                                                   ->  Hash Join  (cost=52.18..529.05 rows=897 width=18) (actual time=94.907..1919.617 rows=61559 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=6 read=9180
                                                         ->  Hash Join  (cost=52.15..528.63 rows=3587 width=22) (actual time=94.893..1844.700 rows=95399 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = cc.movie_id)
                                                               Buffers: shared hit=5 read=9180
                                                               ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.031..1368.314 rows=459925 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.003..578.371 rows=1380035 loops=1)
                                                                           Buffers: shared hit=2 read=8451
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.013 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'votes'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=94.204..94.204 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                     Buffers: shared hit=2 read=729
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.083..52.505 rows=135086 loops=1)
                                                                           Buffers: shared hit=2 read=729
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.002 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.005 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=4.847..4.847 rows=1 loops=17018)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Buffers: shared hit=54420 read=13695
                                       ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=5.917..6.086 rows=1 loops=17018)
                                             Index Cond: (movie_id = t.id)
                                             Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                             Rows Removed by Filter: 71
                                             Buffers: shared hit=218009 read=105843
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.020 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=64.810..76.913 rows=1 loops=10291)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 66
                                 Buffers: shared hit=587750 read=129370
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=5.095..5.095 rows=1 loops=7247)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=23458 read=5568
               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=7.267..7.600 rows=77 loops=4385)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=15525 read=4776
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.024..0.024 rows=0 loops=338545)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=1355612 read=1432
 Planning Time: 15398.925 ms
 Execution Time: 1058746.859 ms
(92 rows)


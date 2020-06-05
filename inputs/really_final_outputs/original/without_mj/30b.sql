                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=579.72..579.72 rows=1 width=128) (actual time=15608.380..15608.381 rows=1 loops=1)
   Buffers: shared hit=84405 read=23872
   ->  Nested Loop  (cost=52.30..579.72 rows=1 width=80) (actual time=10710.566..15608.243 rows=28 loops=1)
         Buffers: shared hit=84405 read=23872
         ->  Nested Loop  (cost=52.29..579.69 rows=2 width=84) (actual time=10661.340..15263.085 rows=1060 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=80418 read=23612
               ->  Nested Loop  (cost=52.27..579.59 rows=1 width=100) (actual time=10611.514..15168.433 rows=7 loops=1)
                     Buffers: shared hit=80392 read=23603
                     ->  Nested Loop  (cost=52.26..579.41 rows=1 width=89) (actual time=10554.252..15041.092 rows=7 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=80377 read=23590
                           ->  Nested Loop  (cost=52.24..578.60 rows=1 width=81) (actual time=10188.217..13624.323 rows=3 loops=1)
                                 Buffers: shared hit=80243 read=23392
                                 ->  Nested Loop  (cost=52.24..578.59 rows=1 width=85) (actual time=10188.148..13624.197 rows=3 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=80238 read=23391
                                       ->  Nested Loop  (cost=52.22..578.13 rows=1 width=35) (actual time=9987.500..13170.106 rows=2 loops=1)
                                             Buffers: shared hit=80237 read=23308
                                             ->  Hash Join  (cost=52.21..529.27 rows=448 width=14) (actual time=116.956..1183.869 rows=23558 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=4 read=9186
                                                   ->  Hash Join  (cost=52.18..529.05 rows=1794 width=18) (actual time=116.513..1156.815 rows=95399 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=1 read=9185
                                                         ->  Hash Join  (cost=52.15..528.63 rows=3587 width=22) (actual time=116.467..1109.496 rows=95399 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = cc.movie_id)
                                                               Buffers: shared read=9185
                                                               ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=30.401..792.293 rows=459925 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared read=8454
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=22.839..331.658 rows=1380035 loops=1)
                                                                           Buffers: shared read=8453
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.520..7.521 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=7.492..7.499 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'votes'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared read=1
                                                               ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=84.065..84.065 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                     Buffers: shared read=731
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=6.462..42.001 rows=135086 loops=1)
                                                                           Buffers: shared read=731
                                                         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.019..0.019 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.009..0.013 rows=2 loops=1)
                                                                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                     Rows Removed by Filter: 2
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.126..0.126 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.110..0.111 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.508..0.508 rows=0 loops=23558)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=80233 read=14122
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.47 rows=1 width=50) (actual time=227.027..227.033 rows=2 loops=2)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 452
                                             Buffers: shared hit=1 read=83
                                 ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=3)
                                       Index Cond: (id = mi.info_type_id)
                                       Filter: ((info)::text = 'genres'::text)
                                       Buffers: shared hit=5 read=1
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.81 rows=1 width=8) (actual time=225.016..472.244 rows=2 loops=3)
                                 Index Cond: (movie_id = mi_idx.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 107
                                 Buffers: shared hit=134 read=198
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=18.183..18.184 rows=1 loops=7)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Buffers: shared hit=15 read=13
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=13.222..13.353 rows=151 loops=7)
                     Index Cond: (movie_id = mi_idx.movie_id)
                     Buffers: shared hit=26 read=9
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.324..0.324 rows=0 loops=1060)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=3987 read=260
 Planning Time: 14761.034 ms
 Execution Time: 15609.363 ms
(92 rows)


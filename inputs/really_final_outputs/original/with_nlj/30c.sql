 Aggregate  (cost=840.19..840.19 rows=1 width=128) (actual time=1012769.949..1012769.949 rows=1 loops=1)
   Buffers: shared hit=3730229 read=270235
   ->  Nested Loop  (cost=0.10..840.19 rows=1 width=80) (actual time=7839.699..1012718.691 rows=8024 loops=1)
         Buffers: shared hit=3730229 read=270235
         ->  Nested Loop  (cost=0.08..840.16 rows=2 width=84) (actual time=4607.720..1004009.953 rows=338545 loops=1)
               Buffers: shared hit=2374623 read=268797
               ->  Nested Loop  (cost=0.07..840.10 rows=1 width=100) (actual time=4572.750..979909.343 rows=4385 loops=1)
                     Buffers: shared hit=2359101 read=264018
                     ->  Nested Loop  (cost=0.06..839.91 rows=1 width=89) (actual time=1378.167..943293.368 rows=7247 loops=1)
                           Buffers: shared hit=2335645 read=258448
                           ->  Nested Loop  (cost=0.04..839.46 rows=1 width=81) (actual time=376.810..176920.975 rows=10291 loops=1)
                                 Join Filter: (it1.id = mi.info_type_id)
                                 Rows Removed by Join Filter: 1903
                                 Buffers: shared hit=1747901 read=129072
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=13.441..13.480 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.04..839.41 rows=17 width=85) (actual time=363.361..176887.248 rows=12194 loops=1)
                                       Buffers: shared hit=1747901 read=129071
                                       ->  Nested Loop  (cost=0.03..780.60 rows=224 width=35) (actual time=106.611..84455.819 rows=17018 loops=1)
                                             Buffers: shared hit=1529896 read=23224
                                             ->  Nested Loop  (cost=0.01..756.24 rows=224 width=14) (actual time=70.661..4852.558 rows=17018 loops=1)
                                                   Join Filter: (cc.status_id = cct2.id)
                                                   Rows Removed by Join Filter: 44541
                                                   Buffers: shared hit=1475480 read=9525
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.137..0.139 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'completeverified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.01..756.08 rows=897 width=18) (actual time=59.208..4818.661 rows=61559 loops=1)
                                                         Join Filter: (cc.subject_id = cct1.id)
                                                         Rows Removed by Join Filter: 33840
                                                         Buffers: shared hit=1475480 read=9524
                                                         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.010 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                                         ->  Nested Loop  (cost=0.01..755.52 rows=3587 width=22) (actual time=59.197..4753.241 rows=95399 loops=1)
                                                               Buffers: shared hit=1475479 read=9524
                                                               ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=10) (actual time=9.029..1224.673 rows=459925 loops=1)
                                                                     Join Filter: (it2.id = mi_idx.info_type_id)
                                                                     Rows Removed by Join Filter: 920110
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.045..0.054 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'votes'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=8.974..567.948 rows=1380035 loops=1)
                                                                           Buffers: shared read=8453
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.02 rows=1 width=12) (actual time=0.006..0.007 rows=0 loops=459925)
                                                                     Index Cond: (movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=1475478 read=1071
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=4.673..4.673 rows=1 loops=17018)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Buffers: shared hit=54416 read=13699
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.26 rows=1 width=50) (actual time=5.270..5.427 rows=1 loops=17018)
                                             Index Cond: (movie_id = t.id)
                                             Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                             Rows Removed by Filter: 71
                                             Buffers: shared hit=218005 read=105847
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.45 rows=1 width=8) (actual time=62.614..74.465 rows=1 loops=10291)
                                 Index Cond: (movie_id = t.id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 66
                                 Buffers: shared hit=587744 read=129376
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=5.047..5.047 rows=1 loops=7247)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=23456 read=5570
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=5.181..5.448 rows=77 loops=4385)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=15522 read=4779
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.025..0.025 rows=0 loops=338545)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=1355606 read=1438
 Planning Time: 14786.737 ms
 Execution Time: 1012788.737 ms

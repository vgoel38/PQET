                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=661.67..661.67 rows=1 width=128) (actual time=274106.621..274106.622 rows=1 loops=1)
   Buffers: shared hit=782283 read=71359
   ->  Nested Loop  (cost=53.11..661.67 rows=1 width=80) (actual time=6611.918..274103.244 rows=757 loops=1)
         Buffers: shared hit=782283 read=71359
         ->  Nested Loop  (cost=53.10..661.66 rows=1 width=84) (actual time=6611.846..274095.016 rows=757 loops=1)
               Buffers: shared hit=780770 read=71358
               ->  Nested Loop  (cost=53.09..661.48 rows=1 width=73) (actual time=6555.600..270851.453 rows=1021 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=777186 read=70858
                     ->  Nested Loop  (cost=53.07..661.21 rows=1 width=89) (actual time=6366.633..116682.668 rows=1161 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=655790 read=43756
                           ->  Nested Loop  (cost=53.06..661.06 rows=1 width=39) (actual time=750.455..61286.412 rows=2023 loops=1)
                                 Buffers: shared hit=616543 read=27952
                                 ->  Nested Loop  (cost=53.05..654.72 rows=438 width=43) (actual time=393.994..57311.126 rows=132841 loops=1)
                                       Buffers: shared hit=85253 read=26515
                                       ->  Nested Loop  (cost=53.03..630.73 rows=245 width=35) (actual time=140.368..43222.193 rows=1875 loops=1)
                                             Buffers: shared hit=80233 read=23308
                                             ->  Hash Join  (cost=53.02..581.98 rows=448 width=14) (actual time=100.277..1200.939 rows=23558 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it.id)
                                                   Buffers: shared hit=4 read=9186
                                                   ->  Hash Join  (cost=52.97..577.76 rows=50666 width=18) (actual time=83.139..1135.885 rows=71011 loops=1)
                                                         Hash Cond: (mi_idx.movie_id = cc.movie_id)
                                                         Buffers: shared hit=1 read=9185
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=9.114..424.083 rows=1380035 loops=1)
                                                               Buffers: shared read=8453
                                                         ->  Hash  (cost=50.49..50.49 rows=16886 width=4) (actual time=73.517..73.517 rows=24592 loops=1)
                                                               Buckets: 32768  Batches: 1  Memory Usage: 1121kB
                                                               Buffers: shared hit=1 read=732
                                                               ->  Hash Join  (cost=0.06..50.49 rows=16886 width=4) (actual time=7.441..66.300 rows=24592 loops=1)
                                                                     Hash Cond: (cc.subject_id = cct.id)
                                                                     Buffers: shared hit=1 read=732
                                                                     ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=7.222..56.958 rows=24592 loops=1)
                                                                           Hash Cond: (cc.status_id = cct.id)
                                                                           Buffers: shared hit=1 read=731
                                                                           ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=7.156..26.258 rows=135086 loops=1)
                                                                                 Buffers: shared read=731
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.018 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete+verified'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared hit=1
                                                                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.190..0.190 rows=2 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.176..0.181 rows=2 loops=1)
                                                                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                                 Rows Removed by Filter: 2
                                                                                 Buffers: shared read=1
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=17.111..17.112 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=17.088..17.094 rows=1 loops=1)
                                                               Filter: ((info)::text = 'votes'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=1.782..1.782 rows=0 loops=23558)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=80229 read=14122
                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=6.174..7.466 rows=71 loops=1875)
                                             Index Cond: (movie_id = t.id)
                                             Buffers: shared hit=5020 read=3207
                                 ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.029..0.029 rows=0 loops=132841)
                                       Index Cond: (id = mk.keyword_id)
                                       Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=531290 read=1437
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=27.369..27.380 rows=1 loops=2023)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                 Rows Removed by Filter: 224
                                 Buffers: shared hit=39247 read=15804
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=93.628..132.785 rows=1 loops=1161)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                           Rows Removed by Filter: 126
                           Buffers: shared hit=121396 read=27102
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=3.173..3.173 rows=1 loops=1021)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=3584 read=500
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=757)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'genres'::text)
               Buffers: shared hit=1513 read=1
 Planning Time: 14699.782 ms
 Execution Time: 274107.183 ms
(92 rows)


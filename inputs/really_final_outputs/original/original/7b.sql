                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2048.96..2048.96 rows=1 width=64) (actual time=6471.915..6471.915 rows=1 loops=1)
   Buffers: shared hit=57832 read=51187
   ->  Nested Loop  (cost=0.06..2048.96 rows=1 width=32) (actual time=1491.149..6471.866 rows=16 loops=1)
         Buffers: shared hit=57832 read=51187
         ->  Nested Loop  (cost=0.04..2048.95 rows=1 width=23) (actual time=1013.040..5916.701 rows=46 loops=1)
               Join Filter: (ml.link_type_id = lt.id)
               Rows Removed by Join Filter: 130
               Buffers: shared hit=57679 read=51156
               ->  Nested Loop  (cost=0.04..2048.91 rows=1 width=27) (actual time=1013.027..5915.837 rows=176 loops=1)
                     Join Filter: (ci.movie_id = ml.linked_movie_id)
                     Rows Removed by Join Filter: 10588765
                     Buffers: shared hit=57503 read=51156
                     ->  Nested Loop  (cost=0.04..2037.32 rows=1 width=19) (actual time=965.480..3693.204 rows=353 loops=1)
                           Join Filter: (n.id = ci.person_id)
                           Buffers: shared hit=127 read=50993
                           ->  Nested Loop  (cost=0.03..2035.69 rows=1 width=27) (actual time=916.182..3554.056 rows=3 loops=1)
                                 Buffers: shared hit=111 read=50976
                                 ->  Nested Loop  (cost=0.01..2035.21 rows=1 width=23) (actual time=868.337..3456.388 rows=3 loops=1)
                                       Buffers: shared hit=105 read=50970
                                       ->  Nested Loop  (cost=0.00..2029.08 rows=1 width=4) (actual time=83.282..2737.715 rows=64 loops=1)
                                             Join Filter: (it.id = pi.info_type_id)
                                             Buffers: shared hit=2 read=50817
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=42.904..42.918 rows=1 loops=1)
                                                   Filter: ((info)::text = 'mini biography'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                                             ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=40.369..2694.610 rows=64 loops=1)
                                                   Filter: (note = 'Volker Boehm'::text)
                                                   Rows Removed by Filter: 2963600
                                                   Buffers: shared hit=2 read=50816
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..6.13 rows=1 width=19) (actual time=11.222..11.222 rows=0 loops=64)
                                             Index Cond: (id = pi.person_id)
                                             Filter: (((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=103 read=153
                                 ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.48 rows=1 width=4) (actual time=30.971..32.546 rows=1 loops=3)
                                       Index Cond: (person_id = n.id)
                                       Filter: (name ~~ '%a%'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=6 read=6
                           ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..1.63 rows=31 width=8) (actual time=26.685..46.307 rows=118 loops=3)
                                 Index Cond: (person_id = an.person_id)
                                 Buffers: shared hit=16 read=17
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.074..2.464 rows=29997 loops=353)
                           Buffers: shared hit=57376 read=163
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.003 rows=1 loops=176)
                     Filter: ((link)::text = 'features'::text)
                     Rows Removed by Filter: 15
                     Buffers: shared hit=176
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=21) (actual time=12.067..12.067 rows=0 loops=46)
               Index Cond: (id = ci.movie_id)
               Filter: ((production_year >= 1980) AND (production_year <= 1984))
               Rows Removed by Filter: 1
               Buffers: shared hit=153 read=31
 Planning Time: 6366.266 ms
 Execution Time: 6472.363 ms
(56 rows)


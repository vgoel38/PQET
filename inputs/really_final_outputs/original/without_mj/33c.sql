                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=632.66..632.66 rows=1 width=192) (actual time=3354.437..3354.438 rows=1 loops=1)
   Buffers: shared hit=3913 read=9008
   ->  Nested Loop  (cost=527.57..632.65 rows=1 width=84) (actual time=1133.552..3354.053 rows=114 loops=1)
         Buffers: shared hit=3913 read=9008
         ->  Nested Loop  (cost=527.57..632.63 rows=5 width=88) (actual time=948.417..3352.972 rows=133 loops=1)
               Join Filter: (ml.linked_movie_id = t.id)
               Buffers: shared hit=3648 read=9007
               ->  Hash Join  (cost=527.55..631.80 rows=13 width=79) (actual time=901.709..2697.747 rows=218 loops=1)
                     Hash Cond: (t.kind_id = kt.id)
                     Buffers: shared hit=2823 read=8960
                     ->  Nested Loop  (cost=527.52..631.76 rows=46 width=83) (actual time=881.342..2676.826 rows=218 loops=1)
                           Join Filter: (ml.movie_id = t.id)
                           Buffers: shared hit=2820 read=8959
                           ->  Nested Loop  (cost=527.51..628.82 rows=46 width=74) (actual time=829.407..2192.186 rows=218 loops=1)
                                 Buffers: shared hit=1990 read=8917
                                 ->  Nested Loop  (cost=527.49..627.28 rows=86 width=59) (actual time=782.021..1955.054 rows=293 loops=1)
                                       Join Filter: (ml.movie_id = mc.movie_id)
                                       Buffers: shared hit=895 read=8840
                                       ->  Nested Loop  (cost=527.48..625.92 rows=19 width=51) (actual time=742.430..1763.968 rows=84 loops=1)
                                             Buffers: shared hit=529 read=8789
                                             ->  Nested Loop  (cost=527.47..625.59 rows=19 width=36) (actual time=685.633..1305.843 rows=84 loops=1)
                                                   Join Filter: (ml.linked_movie_id = mc.movie_id)
                                                   Buffers: shared hit=263 read=8719
                                                   ->  Nested Loop  (cost=527.46..625.33 rows=2 width=28) (actual time=650.052..739.880 rows=41 loops=1)
                                                         Join Filter: (it.id = mi_idx.info_type_id)
                                                         Rows Removed by Join Filter: 82
                                                         Buffers: shared hit=155 read=8646
                                                         ->  Hash Join  (cost=527.44..538.19 rows=69 width=22) (actual time=627.822..670.978 rows=47 loops=1)
                                                               Hash Cond: (ml.link_type_id = lt.id)
                                                               Buffers: shared hit=1 read=8618
                                                               ->  Hash Join  (cost=527.41..538.12 rows=416 width=26) (actual time=618.257..670.363 rows=1505 loops=1)
                                                                     Hash Cond: (ml.linked_movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=1 read=8617
                                                                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.117..38.647 rows=29997 loops=1)
                                                                           Buffers: shared read=163
                                                                     ->  Hash  (cost=526.49..526.49 rows=6253 width=14) (actual time=618.053..618.053 rows=36749 loops=1)
                                                                           Buckets: 65536 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 2092kB
                                                                           Buffers: shared hit=1 read=8454
                                                                           ->  Nested Loop  (cost=0.05..526.49 rows=6253 width=14) (actual time=18.815..603.073 rows=36749 loops=1)
                                                                                 Buffers: shared hit=1 read=8454
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=9.551..9.554 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared read=1
                                                                                 ->  Hash Join  (cost=0.05..526.01 rows=6253 width=10) (actual time=9.258..584.428 rows=36749 loops=1)
                                                                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                                                                       Buffers: shared hit=1 read=8453
                                                                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=706570 width=14) (actual time=9.141..475.592 rows=706560 loops=1)
                                                                                             Filter: (info < '3.5'::text)
                                                                                             Rows Removed by Filter: 673475
                                                                                             Buffers: shared read=8453
                                                                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.070..0.071 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.057..0.062 rows=1 loops=1)
                                                                                                   Filter: ((info)::text = 'rating'::text)
                                                                                                   Rows Removed by Filter: 112
                                                                                                   Buffers: shared hit=1
                                                               ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.140..0.140 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=1
                                                                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=0.120..0.133 rows=2 loops=1)
                                                                           Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared read=1
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..1.26 rows=3 width=14) (actual time=1.458..1.461 rows=3 loops=47)
                                                               Index Cond: (movie_id = ml.movie_id)
                                                               Buffers: shared hit=154 read=28
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.13 rows=2 width=8) (actual time=11.967..13.797 rows=2 loops=41)
                                                         Index Cond: (movie_id = mi_idx.movie_id)
                                                         Buffers: shared hit=108 read=73
                                             ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=5.449..5.449 rows=1 loops=84)
                                                   Index Cond: (id = mc.company_id)
                                                   Buffers: shared hit=266 read=70
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=8) (actual time=1.668..2.266 rows=3 loops=84)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=366 read=51
                                 ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=0.807..0.807 rows=1 loops=293)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text <> '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=1095 read=77
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=2.220..2.220 rows=1 loops=218)
                                 Index Cond: (id = mc.movie_id)
                                 Buffers: shared hit=830 read=42
                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=20.336..20.336 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=20.311..20.317 rows=2 loops=1)
                                 Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                 Rows Removed by Filter: 5
                                 Buffers: shared read=1
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=3.003..3.003 rows=1 loops=218)
                     Index Cond: (id = mc.movie_id)
                     Filter: ((production_year >= 2000) AND (production_year <= 2010))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=825 read=47
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=133)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=265 read=1
 Planning Time: 5803.826 ms
 Execution Time: 3354.993 ms
(104 rows)


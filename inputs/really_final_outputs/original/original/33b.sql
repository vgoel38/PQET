                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=541.97..541.97 rows=1 width=192) (actual time=1939.217..1939.218 rows=1 loops=1)
   Buffers: shared hit=232 read=8697
   ->  Nested Loop  (cost=523.47..541.97 rows=1 width=84) (actual time=833.611..1939.154 rows=4 loops=1)
         Buffers: shared hit=232 read=8697
         ->  Nested Loop  (cost=523.45..541.95 rows=1 width=69) (actual time=833.555..1841.515 rows=4 loops=1)
               Buffers: shared hit=221 read=8692
               ->  Nested Loop  (cost=523.44..541.93 rows=1 width=54) (actual time=795.767..1779.560 rows=14 loops=1)
                     Join Filter: ((t1.id = mi_idx1.movie_id) AND (it1.id = mi_idx1.info_type_id))
                     Rows Removed by Join Filter: 28
                     Buffers: shared hit=170 read=8687
                     ->  Nested Loop  (cost=523.43..541.90 rows=1 width=64) (actual time=774.822..1733.478 rows=14 loops=1)
                           Join Filter: (t2.id = mc2.movie_id)
                           Buffers: shared hit=116 read=8685
                           ->  Nested Loop  (cost=523.41..541.77 rows=1 width=72) (actual time=774.611..1693.466 rows=4 loops=1)
                                 Buffers: shared hit=103 read=8678
                                 ->  Nested Loop  (cost=523.40..541.72 rows=1 width=64) (actual time=722.942..1641.463 rows=2 loops=1)
                                       Join Filter: (kt1.id = t1.kind_id)
                                       Buffers: shared hit=99 read=8673
                                       ->  Nested Loop  (cost=523.39..538.84 rows=1 width=47) (actual time=717.632..1617.403 rows=2 loops=1)
                                             Buffers: shared hit=95 read=8669
                                             ->  Nested Loop  (cost=523.39..538.81 rows=1 width=43) (actual time=717.617..1617.365 rows=2 loops=1)
                                                   Buffers: shared hit=93 read=8669
                                                   ->  Nested Loop  (cost=523.38..538.80 rows=1 width=47) (actual time=717.588..1617.311 rows=2 loops=1)
                                                         Join Filter: (ml.linked_movie_id = t2.id)
                                                         Buffers: shared hit=89 read=8669
                                                         ->  Hash Join  (cost=523.37..534.11 rows=22 width=22) (actual time=683.358..731.144 rows=34 loops=1)
                                                               Hash Cond: (ml.link_type_id = lt.id)
                                                               Buffers: shared hit=10 read=8612
                                                               ->  Hash Join  (cost=523.34..534.04 rows=387 width=26) (actual time=672.621..730.643 rows=1085 loops=1)
                                                                     Hash Cond: (ml.linked_movie_id = mi_idx2.movie_id)
                                                                     Buffers: shared hit=6 read=8612
                                                                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.004..42.019 rows=29997 loops=1)
                                                                           Buffers: shared hit=2 read=161
                                                                     ->  Hash  (cost=522.48..522.48 rows=5826 width=14) (actual time=672.562..672.562 rows=25591 loops=1)
                                                                           Buckets: 32768 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 1356kB
                                                                           Buffers: shared hit=4 read=8451
                                                                           ->  Nested Loop  (cost=0.05..522.48 rows=5826 width=14) (actual time=0.067..661.348 rows=25591 loops=1)
                                                                                 Buffers: shared hit=4 read=8451
                                                                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.014..0.017 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                                                                                 ->  Hash Join  (cost=0.05..522.03 rows=5826 width=10) (actual time=0.051..654.498 rows=25591 loops=1)
                                                                                       Hash Cond: (mi_idx2.info_type_id = it2.id)
                                                                                       Buffers: shared hit=3 read=8451
                                                                                       ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=658313 width=14) (actual time=0.005..550.446 rows=658295 loops=1)
                                                                                             Filter: (info < '3.0'::text)
                                                                                             Rows Removed by Filter: 721740
                                                                                             Buffers: shared hit=2 read=8451
                                                                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                                                                                   Filter: ((info)::text = 'rating'::text)
                                                                                                   Rows Removed by Filter: 112
                                                                                                   Buffers: shared hit=1
                                                               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.023..0.023 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.018 rows=2 loops=1)
                                                                           Filter: ((link)::text ~~ '%follow%'::text)
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared hit=1
                                                         ->  Index Scan using title_idx_id on title t2  (cost=0.01..0.21 rows=1 width=25) (actual time=26.059..26.059 rows=0 loops=34)
                                                               Index Cond: (id = mi_idx2.movie_id)
                                                               Filter: (production_year = 2007)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=79 read=57
                                                   ->  Index Scan using kind_type_pkey on kind_type kt2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=2)
                                                         Index Cond: (id = t2.kind_id)
                                                         Filter: ((kind)::text = 'tv series'::text)
                                                         Buffers: shared hit=4
                                             ->  Seq Scan on kind_type kt1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.012 rows=1 loops=2)
                                                   Filter: ((kind)::text = 'tv series'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared hit=2
                                       ->  Index Scan using title_idx_id on title t1  (cost=0.01..2.88 rows=1 width=25) (actual time=12.020..12.020 rows=1 loops=2)
                                             Index Cond: (id = ml.movie_id)
                                             Buffers: shared hit=4 read=4
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc1  (cost=0.01..0.05 rows=2 width=8) (actual time=25.936..25.989 rows=2 loops=2)
                                       Index Cond: (movie_id = t1.id)
                                       Buffers: shared hit=4 read=5
                           ->  Index Scan using movie_companies_idx_mid on movie_companies mc2  (cost=0.01..0.13 rows=2 width=8) (actual time=7.841..9.991 rows=4 loops=4)
                                 Index Cond: (movie_id = mi_idx2.movie_id)
                                 Buffers: shared hit=13 read=7
                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx1  (cost=0.01..0.03 rows=3 width=14) (actual time=3.281..3.285 rows=3 loops=14)
                           Index Cond: (movie_id = mc1.movie_id)
                           Buffers: shared hit=54 read=2
               ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=4.423..4.423 rows=0 loops=14)
                     Index Cond: (id = mc1.company_id)
                     Filter: ((country_code)::text = '[nl]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=51 read=5
         ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=24.403..24.403 rows=1 loops=4)
               Index Cond: (id = mc2.company_id)
               Buffers: shared hit=11 read=5
 Planning Time: 6178.167 ms
 Execution Time: 1939.790 ms
(98 rows)


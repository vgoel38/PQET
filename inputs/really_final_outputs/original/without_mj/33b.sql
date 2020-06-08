                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=548.54..548.54 rows=1 width=192) (actual time=5593.555..5593.556 rows=1 loops=1)
   Buffers: shared hit=34955 read=10227
   ->  Nested Loop  (cost=524.21..548.54 rows=1 width=84) (actual time=1740.948..5593.497 rows=4 loops=1)
         Join Filter: ((ml.linked_movie_id = t.id) AND (kt.id = t.kind_id))
         Buffers: shared hit=34955 read=10227
         ->  Nested Loop  (cost=524.19..547.89 rows=10 width=83) (actual time=1690.453..5495.262 rows=10 loops=1)
               Buffers: shared hit=34922 read=10220
               ->  Nested Loop  (cost=524.18..547.72 rows=10 width=68) (actual time=1690.430..5246.769 rows=10 loops=1)
                     Join Filter: (ml.linked_movie_id = mc.movie_id)
                     Buffers: shared hit=34898 read=10204
                     ->  Nested Loop  (cost=524.17..547.58 rows=1 width=60) (actual time=1690.240..5184.698 rows=4 loops=1)
                           Buffers: shared hit=34890 read=10194
                           ->  Nested Loop  (cost=524.15..547.56 rows=1 width=45) (actual time=1635.595..4580.557 rows=81 loops=1)
                                 Join Filter: (it.id = mi_idx.info_type_id)
                                 Rows Removed by Join Filter: 7550
                                 Buffers: shared hit=34627 read=10133
                                 ->  Nested Loop  (cost=524.14..539.99 rows=6 width=39) (actual time=736.209..2970.421 rows=5590 loops=1)
                                       Buffers: shared hit=12969 read=9694
                                       ->  Hash Join  (cost=524.13..539.72 rows=6 width=47) (actual time=704.082..2757.227 rows=1220 loops=1)
                                             Hash Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=7619 read=9263
                                             ->  Nested Loop  (cost=524.06..539.65 rows=44 width=47) (actual time=684.628..2734.826 rows=2064 loops=1)
                                                   Join Filter: (ml.movie_id = t.id)
                                                   Buffers: shared hit=7615 read=9262
                                                   ->  Hash Join  (cost=524.05..534.85 rows=44 width=22) (actual time=646.387..688.631 rows=2064 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=1 read=8618
                                                         ->  Hash Join  (cost=524.01..534.75 rows=796 width=26) (actual time=638.903..673.870 rows=20890 loops=1)
                                                               Hash Cond: (ml.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=1 read=8617
                                                               ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.428..9.392 rows=29997 loops=1)
                                                                     Buffers: shared read=163
                                                               ->  Hash  (cost=522.22..522.22 rows=12213 width=14) (actual time=638.320..638.320 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 23859kB
                                                                     Buffers: shared hit=1 read=8454
                                                                     ->  Hash Join  (cost=0.10..522.22 rows=12213 width=14) (actual time=18.603..511.502 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=1 read=8454
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=10.993..210.675 rows=1380035 loops=1)
                                                                                 Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.10..0.10 rows=1 width=8) (actual time=7.569..7.570 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1 read=1
                                                                                 ->  Nested Loop  (cost=0.00..0.10 rows=1 width=8) (actual time=7.548..7.559 rows=1 loops=1)
                                                                                       Buffers: shared hit=1 read=1
                                                                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.496..7.501 rows=1 loops=1)
                                                                                             Filter: ((info)::text = 'rating'::text)
                                                                                             Rows Removed by Filter: 112
                                                                                             Buffers: shared read=1
                                                                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.046..0.052 rows=1 loops=1)
                                                                                             Filter: ((info)::text = 'rating'::text)
                                                                                             Rows Removed by Filter: 112
                                                                                             Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=7.421..7.421 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=7.393..7.409 rows=2 loops=1)
                                                                     Filter: ((link)::text ~~ '%follow%'::text)
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared read=1
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=0.989..0.989 rows=1 loops=2064)
                                                         Index Cond: (id = mi_idx.movie_id)
                                                         Buffers: shared hit=7614 read=644
                                             ->  Hash  (cost=0.06..0.06 rows=1 width=8) (actual time=19.420..19.420 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Nested Loop  (cost=0.00..0.06 rows=1 width=8) (actual time=19.403..19.411 rows=1 loops=1)
                                                         Buffers: shared hit=1 read=1
                                                         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=19.384..19.387 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'tv series'::text)
                                                               Rows Removed by Filter: 6
                                                               Buffers: shared read=1
                                                         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.018 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'tv series'::text)
                                                               Rows Removed by Filter: 6
                                                               Buffers: shared hit=1
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.05 rows=2 width=8) (actual time=0.105..0.170 rows=5 loops=1220)
                                             Index Cond: (movie_id = t.id)
                                             Buffers: shared hit=5350 read=431
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..1.26 rows=1 width=14) (actual time=0.284..0.286 rows=1 loops=5590)
                                       Index Cond: (movie_id = ml.linked_movie_id)
                                       Filter: (info < '3.0'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=21658 read=439
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=7.456..7.456 rows=0 loops=81)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[nl]'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=263 read=61
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.13 rows=2 width=8) (actual time=13.745..15.503 rows=2 loops=4)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Buffers: shared hit=8 read=10
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=24.841..24.841 rows=1 loops=10)
                     Index Cond: (id = mc.company_id)
                     Buffers: shared hit=24 read=16
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=9.816..9.816 rows=0 loops=10)
               Index Cond: (id = mc.movie_id)
               Filter: (production_year = 2007)
               Rows Removed by Filter: 1
               Buffers: shared hit=33 read=7
 Planning Time: 5712.568 ms
 Execution Time: 5594.956 ms
(102 rows)


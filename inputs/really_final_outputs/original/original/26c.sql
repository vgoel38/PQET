                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=556.26..556.26 rows=1 width=96) (actual time=673360.393..673360.393 rows=1 loops=1)
   Buffers: shared hit=1809785 read=147768
   ->  Nested Loop  (cost=52.33..556.26 rows=1 width=39) (actual time=11387.176..673316.395 rows=5400 loops=1)
         Buffers: shared hit=1809785 read=147768
         ->  Nested Loop  (cost=52.31..556.24 rows=1 width=43) (actual time=11375.933..631512.996 rows=5400 loops=1)
               Buffers: shared hit=1794300 read=141629
               ->  Nested Loop  (cost=52.30..555.99 rows=14 width=31) (actual time=8663.041..467262.221 rows=189738 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=1525869 read=113112
                     ->  Nested Loop  (cost=52.28..555.73 rows=1 width=39) (actual time=8623.242..74424.599 rows=1261 loops=1)
                           Buffers: shared hit=1400524 read=48764
                           ->  Nested Loop  (cost=52.27..555.29 rows=30 width=43) (actual time=8335.446..67907.278 rows=293146 loops=1)
                                 Buffers: shared hit=226349 read=47332
                                 ->  Hash Join  (cost=52.26..553.63 rows=17 width=35) (actual time=8294.914..44875.268 rows=4028 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=216818 read=38903
                                       ->  Nested Loop  (cost=52.22..553.58 rows=122 width=39) (actual time=331.455..44860.778 rows=12936 loops=1)
                                             Join Filter: (cc.movie_id = t.id)
                                             Buffers: shared hit=216814 read=38903
                                             ->  Hash Join  (cost=52.21..529.17 rows=224 width=14) (actual time=98.574..1554.572 rows=61559 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=7 read=9180
                                                   ->  Hash Join  (cost=52.18..529.05 rows=897 width=18) (actual time=98.552..1503.131 rows=61559 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=6 read=9180
                                                         ->  Hash Join  (cost=52.15..528.63 rows=3587 width=22) (actual time=98.537..1442.476 rows=95399 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = cc.movie_id)
                                                               Buffers: shared hit=5 read=9180
                                                               ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.030..1025.348 rows=459925 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.004..393.973 rows=1380035 loops=1)
                                                                           Buffers: shared hit=2 read=8451
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'rating'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=97.860..97.860 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                     Buffers: shared hit=2 read=729
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.077..57.339 rows=135086 loops=1)
                                                                           Buffers: shared hit=2 read=729
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.003..0.004 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.002 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.007..0.007 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.004 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=0.702..0.702 rows=0 loops=61559)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=216807 read=29723
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.008 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared hit=1
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=4.758..5.673 rows=73 loops=4028)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=9531 read=8429
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.021..0.021 rows=0 loops=293146)
                                 Index Cond: (id = mk.keyword_id)
                                 Filter: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=1174175 read=1432
                     ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=19.843..311.208 rows=150 loops=1261)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=125345 read=64348
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=0.863..0.863 rows=0 loops=189738)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=268431 read=28517
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=7.736..7.736 rows=1 loops=5400)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=15485 read=6139
 Planning Time: 10210.855 ms
 Execution Time: 673361.015 ms
(92 rows)


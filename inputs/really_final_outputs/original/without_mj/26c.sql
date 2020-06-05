                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=556.26..556.26 rows=1 width=96) (actual time=660210.159..660210.159 rows=1 loops=1)
   Buffers: shared hit=1809753 read=147800
   ->  Nested Loop  (cost=52.33..556.26 rows=1 width=39) (actual time=12244.996..660166.387 rows=5400 loops=1)
         Buffers: shared hit=1809753 read=147800
         ->  Nested Loop  (cost=52.31..556.24 rows=1 width=43) (actual time=12225.414..618363.478 rows=5400 loops=1)
               Buffers: shared hit=1794270 read=141659
               ->  Nested Loop  (cost=52.30..555.99 rows=14 width=31) (actual time=9445.788..454730.286 rows=189738 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=1525845 read=113136
                     ->  Nested Loop  (cost=52.28..555.73 rows=1 width=39) (actual time=9388.465..71001.513 rows=1261 loops=1)
                           Buffers: shared hit=1400504 read=48784
                           ->  Nested Loop  (cost=52.27..555.29 rows=30 width=43) (actual time=9176.589..64406.938 rows=293146 loops=1)
                                 Buffers: shared hit=226335 read=47346
                                 ->  Hash Join  (cost=52.26..553.63 rows=17 width=35) (actual time=9142.943..44243.604 rows=4028 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=216806 read=38915
                                       ->  Nested Loop  (cost=52.22..553.58 rows=122 width=39) (actual time=384.984..44208.858 rows=12936 loops=1)
                                             Join Filter: (cc.movie_id = t.id)
                                             Buffers: shared hit=216803 read=38914
                                             ->  Hash Join  (cost=52.21..529.17 rows=224 width=14) (actual time=105.020..1520.776 rows=61559 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=1 read=9186
                                                   ->  Hash Join  (cost=52.18..529.05 rows=897 width=18) (actual time=104.858..1469.953 rows=61559 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=1 read=9185
                                                         ->  Hash Join  (cost=52.15..528.63 rows=3587 width=22) (actual time=104.813..1410.156 rows=95399 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = cc.movie_id)
                                                               Buffers: shared read=9185
                                                               ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=18.072..1007.783 rows=459925 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared read=8454
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=10.500..383.313 rows=1380035 loops=1)
                                                                           Buffers: shared read=8453
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.526..7.526 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=7.503..7.510 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'rating'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared read=1
                                                               ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=84.700..84.700 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                     Buffers: shared read=731
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=6.431..42.293 rows=135086 loops=1)
                                                                           Buffers: shared read=731
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.121..0.121 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.111..0.113 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared read=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=0.692..0.692 rows=0 loops=61559)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=216802 read=29728
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.007..21.007 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=20.976..20.982 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared read=1
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=4.124..4.961 rows=73 loops=4028)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=9529 read=8431
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.022..0.022 rows=0 loops=293146)
                                 Index Cond: (id = mk.keyword_id)
                                 Filter: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=1174169 read=1438
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=15.300..303.982 rows=150 loops=1261)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=125341 read=64352
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=0.859..0.859 rows=0 loops=189738)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=268425 read=28523
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=7.736..7.736 rows=1 loops=5400)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=15483 read=6141
 Planning Time: 9477.962 ms
 Execution Time: 660210.769 ms
(92 rows)


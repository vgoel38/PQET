                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=871552.13..871552.13 rows=1 width=128) (actual time=87332.070..87332.070 rows=1 loops=1)
   Buffers: shared hit=11502633 read=563075
   ->  Hash Join  (cost=164560.04..871552.13 rows=1 width=54) (actual time=31092.123..87313.211 rows=1728 loops=1)
         Hash Cond: (cc.status_id = cct.id)
         Buffers: shared hit=11502633 read=563075
         ->  Hash Join  (cost=164550.85..871542.95 rows=1 width=58) (actual time=31092.005..87310.613 rows=1728 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=11502630 read=563073
               ->  Hash Join  (cost=115450.34..822442.43 rows=1 width=47) (actual time=25425.059..81640.280 rows=1728 loops=1)
                     Hash Cond: (cc.subject_id = cct.id)
                     Buffers: shared hit=7564032 read=492387
                     ->  Hash Join  (cost=115444.21..822436.31 rows=1 width=51) (actual time=25425.012..81637.542 rows=2199 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=7564031 read=492386
                           ->  Hash Join  (cost=112140.88..819132.97 rows=1 width=59) (actual time=24827.242..81218.259 rows=2929 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=7477111 read=491283
                                 ->  Hash Join  (cost=112079.55..819071.64 rows=98 width=63) (actual time=24739.473..81027.641 rows=561866 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=7477092 read=491259
                                       ->  Hash Join  (cost=72129.73..779120.57 rows=55 width=55) (actual time=21411.259..77453.658 rows=8886 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=7455456 read=454442
                                             ->  Hash Join  (cost=72123.60..779113.93 rows=6215 width=59) (actual time=21392.507..77422.021 rows=17509 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=7455456 read=454440
                                                   ->  Hash Join  (cost=59957.14..766928.07 rows=81430 width=45) (actual time=19584.845..75627.900 rows=98725 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=7441891 read=442214
                                                         ->  Hash Join  (cost=59951.01..766867.01 rows=570007 width=49) (actual time=19562.054..75483.338 rows=296510 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared hit=7441891 read=442212
                                                               ->  Hash Join  (cost=36509.90..743340.84 rows=1043217 width=24) (actual time=9575.544..64925.035 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=4952021 read=399304
                                                                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=12) (actual time=55.125..45399.854 rows=36244344 loops=1)
                                                                           Buffers: shared hit=1851757 read=351686
                                                                     ->  Hash  (cost=36482.54..36482.54 rows=186251 width=20) (actual time=9518.409..9518.409 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared hit=3100264 read=47618
                                                                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=20) (actual time=73.190..9446.586 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared hit=3100264 read=47618
                                                               ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=25) (actual time=9975.050..9975.050 rows=1381453 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                     Buffers: shared hit=2489870 read=42908
                                                                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=39.104..9429.792 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared hit=2489870 read=42908
                                                         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=22.761..22.761 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=22.734..22.739 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'movie'::text)
                                                                     Buffers: shared read=2
                                                   ->  Hash  (cost=12138.14..12138.14 rows=192955 width=14) (actual time=1706.997..1706.997 rows=192967 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 10369kB
                                                         Buffers: shared hit=13565 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=192955 width=14) (actual time=40.632..1593.407 rows=192967 loops=1)
                                                               Filter: (info > '7.0'::text)
                                                               Rows Removed by Filter: 1187068
                                                               Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=18.732..18.732 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=18.717..18.720 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=39285.80..39285.80 rows=4523930 width=8) (actual time=3291.750..3291.750 rows=4523930 loops=1)
                                             Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                                             Buffers: shared hit=21636 read=36817
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=33.893..2136.410 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=56.829..56.829 rows=10 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=19 read=24
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=27.971..56.782 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=19 read=24
                           ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=413.795..413.795 rows=135086 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                 Buffers: shared hit=86920 read=1103
                                 ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=43.825..348.169 rows=135086 loops=1)
                                       Buffers: shared hit=86920 read=1103
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'cast'::text)
                                 Buffers: shared hit=1 read=1
               ->  Hash  (cost=48488.80..48488.80 rows=4167491 width=19) (actual time=5657.413..5657.413 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
                     Buffers: shared hit=3938598 read=70686
                     ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=56.626..4204.816 rows=4167491 loops=1)
                           Buffers: shared hit=3938598 read=70686
         ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=0.092..0.092 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.084..0.085 rows=2 loops=1)
                     Filter: ((kind)::text ~~ '%complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared read=2
 Planning Time: 9406.568 ms
 Execution Time: 87344.573 ms
(106 rows)


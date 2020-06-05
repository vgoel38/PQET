                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=869671.65..869671.65 rows=1 width=96) (actual time=83206.004..83206.004 rows=1 loops=1)
   Buffers: shared hit=7564651 read=507452
   ->  Hash Join  (cost=162701.03..869671.65 rows=1 width=39) (actual time=28953.761..83205.488 rows=93 loops=1)
         Hash Cond: (cc.status_id = cct.id)
         Buffers: shared hit=7564651 read=507452
         ->  Hash Join  (cost=162691.84..869662.46 rows=1 width=43) (actual time=28953.651..83205.225 rows=93 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=7564648 read=507450
               ->  Hash Join  (cost=115338.89..822309.51 rows=1 width=47) (actual time=27166.435..81417.804 rows=93 loops=1)
                     Hash Cond: (cc.subject_id = cct.id)
                     Buffers: shared hit=7564020 read=492375
                     ->  Hash Join  (cost=115332.76..822303.39 rows=1 width=51) (actual time=27166.383..81417.554 rows=180 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=7564019 read=492374
                           ->  Hash Join  (cost=112029.43..819000.05 rows=1 width=59) (actual time=26093.249..81030.593 rows=191 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=7477099 read=491271
                                 ->  Hash Join  (cost=112004.90..818975.52 rows=20 width=63) (actual time=25651.915..80954.105 rows=49217 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=7477092 read=491259
                                       ->  Hash Join  (cost=72055.07..779025.44 rows=11 width=55) (actual time=22211.733..77490.789 rows=1046 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=7455456 read=454442
                                             ->  Hash Join  (cost=72048.95..779019.22 rows=1248 width=59) (actual time=22192.390..77466.851 rows=4436 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=7455456 read=454440
                                                   ->  Hash Join  (cost=59903.05..766859.32 rows=59706 width=45) (actual time=20527.531..75839.561 rows=74119 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=7441891 read=442214
                                                         ->  Hash Join  (cost=59896.92..766812.91 rows=417945 width=49) (actual time=20516.378..75733.138 rows=215804 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared hit=7441891 read=442212
                                                               ->  Hash Join  (cost=36509.90..743340.84 rows=1043217 width=24) (actual time=10961.458..65607.942 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=4952021 read=399304
                                                                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=12) (actual time=78.475..44553.796 rows=36244344 loops=1)
                                                                           Buffers: shared hit=1851757 read=351686
                                                                     ->  Hash  (cost=36482.54..36482.54 rows=186251 width=20) (actual time=10880.965..10880.966 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared hit=3100264 read=47618
                                                                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=20) (actual time=73.177..10806.393 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared hit=3100264 read=47618
                                                               ->  Hash  (cost=23238.35..23238.35 rows=1012920 width=25) (actual time=9549.193..9549.193 rows=1012920 loops=1)
                                                                     Buckets: 1048576  Batches: 1  Memory Usage: 66484kB
                                                                     Buffers: shared hit=2489870 read=42908
                                                                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=36.510..9129.741 rows=1012920 loops=1)
                                                                           Filter: (production_year > 2005)
                                                                           Rows Removed by Filter: 1515392
                                                                           Buffers: shared hit=2489870 read=42908
                                                         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=11.129..11.129 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=11.103..11.107 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'movie'::text)
                                                                     Buffers: shared read=2
                                                   ->  Hash  (cost=12138.14..12138.14 rows=52860 width=14) (actual time=1570.021..1570.022 rows=52862 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 2800kB
                                                         Buffers: shared hit=13565 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=42.073..1536.344 rows=52862 loops=1)
                                                               Filter: (info > '8.0'::text)
                                                               Rows Removed by Filter: 1327173
                                                               Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=19.323..19.323 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=19.308..19.311 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=39285.80..39285.80 rows=4523930 width=8) (actual time=3404.743..3404.744 rows=4523930 loops=1)
                                             Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                                             Buffers: shared hit=21636 read=36817
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.143..2238.978 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.007..63.007 rows=4 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=7 read=12
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=39.558..62.979 rows=4 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                                             Buffers: shared hit=7 read=12
                           ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=385.924..385.924 rows=135086 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                 Buffers: shared hit=86920 read=1103
                                 ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=43.031..323.835 rows=135086 loops=1)
                                       Buffers: shared hit=86920 read=1103
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.024..0.025 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'cast'::text)
                                 Buffers: shared hit=1 read=1
               ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1777.470..1777.470 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=628 read=15075
                     ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=34.178..660.673 rows=4167491 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=628 read=15075
         ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=0.083..0.083 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.078..0.079 rows=2 loops=1)
                     Filter: ((kind)::text ~~ '%complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared read=2
 Planning Time: 9337.245 ms
 Execution Time: 83217.092 ms
(107 rows)


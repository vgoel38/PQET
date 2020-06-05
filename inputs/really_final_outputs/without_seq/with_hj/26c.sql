                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=869876.33..869876.33 rows=1 width=96) (actual time=83182.784..83182.785 rows=1 loops=1)
   Buffers: shared hit=7564663 read=507464
   ->  Hash Join  (cost=162879.57..869876.33 rows=1 width=39) (actual time=29092.436..83150.955 rows=5400 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=7564663 read=507464
         ->  Hash Join  (cost=162818.25..869815.01 rows=2 width=43) (actual time=28887.321..82817.830 rows=1145482 loops=1)
               Hash Cond: (t.id = mk.movie_id)
               Buffers: shared hit=7564641 read=507440
               ->  Hash Join  (cost=122868.42..829865.16 rows=1 width=55) (actual time=25565.004..79044.865 rows=10450 loops=1)
                     Hash Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=7543005 read=470623
                     ->  Hash Join  (cost=122859.24..829855.97 rows=5 width=59) (actual time=25541.268..79010.208 rows=10450 loops=1)
                           Hash Cond: (cc.subject_id = cct.id)
                           Buffers: shared hit=7543005 read=470621
                           ->  Hash Join  (cost=122853.11..829849.84 rows=21 width=63) (actual time=25541.171..78998.171 rows=12886 loops=1)
                                 Hash Cond: (t.id = cc.movie_id)
                                 Buffers: shared hit=7543004 read=470620
                                 ->  Hash Join  (cost=119549.78..826546.45 rows=393 width=51) (actual time=25112.082..78517.314 rows=60388 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=7456084 read=469517
                                       ->  Hash Join  (cost=72196.82..779193.46 rows=393 width=55) (actual time=23233.994..76550.993 rows=60388 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=7455456 read=454442
                                             ->  Hash Join  (cost=72190.70..779183.67 rows=44447 width=59) (actual time=23215.514..76454.149 rows=181500 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=7455456 read=454440
                                                   ->  Hash Join  (cost=59957.14..766928.07 rows=81430 width=45) (actual time=21556.193..74639.240 rows=98725 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=7441891 read=442214
                                                         ->  Hash Join  (cost=59951.01..766867.01 rows=570007 width=49) (actual time=21539.500..74496.503 rows=296510 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared hit=7441891 read=442212
                                                               ->  Hash Join  (cost=36509.90..743340.84 rows=1043217 width=24) (actual time=11001.681..63367.269 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=4952021 read=399304
                                                                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=12) (actual time=70.513..42435.488 rows=36244344 loops=1)
                                                                           Buffers: shared hit=1851757 read=351686
                                                                     ->  Hash  (cost=36482.54..36482.54 rows=186251 width=20) (actual time=10929.154..10929.154 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared hit=3100264 read=47618
                                                                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=20) (actual time=73.213..10854.969 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared hit=3100264 read=47618
                                                               ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=25) (actual time=10523.090..10523.090 rows=1381453 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                     Buffers: shared hit=2489870 read=42908
                                                                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=35.918..9959.105 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared hit=2489870 read=42908
                                                         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=16.674..16.675 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=16.659..16.663 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'movie'::text)
                                                                     Buffers: shared read=2
                                                   ->  Hash  (cost=12031.00..12031.00 rows=1380035 width=14) (actual time=1599.530..1599.530 rows=1380035 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                         Buffers: shared hit=13565 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=43.728..1086.080 rows=1380035 loops=1)
                                                               Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=18.457..18.457 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=18.440..18.443 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1867.071..1867.071 rows=4167491 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                             Buffers: shared hit=628 read=15075
                                             ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=41.285..723.109 rows=4167491 loops=1)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=628 read=15075
                                 ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=427.101..427.101 rows=135086 loops=1)
                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                       Buffers: shared hit=86920 read=1103
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=49.841..364.508 rows=135086 loops=1)
                                             Buffers: shared hit=86920 read=1103
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.063..0.064 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.056..0.057 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'cast'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=23.717..23.717 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=23.694..23.698 rows=2 loops=1)
                                 Filter: ((kind)::text ~~ '%complete%'::text)
                                 Rows Removed by Filter: 2
                                 Buffers: shared read=2
               ->  Hash  (cost=39285.80..39285.80 rows=4523930 width=8) (actual time=3300.378..3300.378 rows=4523930 loops=1)
                     Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                     Buffers: shared hit=21636 read=36817
                     ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=40.061..2152.940 rows=4523930 loops=1)
                           Buffers: shared hit=21636 read=36817
         ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=67.874..67.874 rows=10 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=19 read=24
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=40.191..67.825 rows=10 loops=1)
                     Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                     Buffers: shared hit=19 read=24
 Planning Time: 9510.592 ms
 Execution Time: 83196.172 ms
(105 rows)


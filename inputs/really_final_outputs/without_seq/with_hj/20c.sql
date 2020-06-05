                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=858997.79..858997.79 rows=1 width=64) (actual time=85719.697..85719.697 rows=1 loops=1)
   Buffers: shared hit=11489068 read=550847
   ->  Hash Join  (cost=152045.35..858997.79 rows=1 width=32) (actual time=30328.035..85676.128 rows=5406 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=11489068 read=550847
         ->  Hash Join  (cost=102944.83..809897.27 rows=1 width=21) (actual time=24771.756..80109.599 rows=5406 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=7550467 read=480161
               ->  Hash Join  (cost=36509.90..743340.84 rows=1043217 width=8) (actual time=11154.607..66440.829 rows=623586 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=4952021 read=399304
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=12) (actual time=49.117..45163.817 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=36482.54..36482.54 rows=186251 width=4) (actual time=11103.495..11103.495 rows=180152 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 8382kB
                           Buffers: shared hit=3100264 read=47618
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=4) (actual time=73.273..11036.517 rows=180152 loops=1)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 2960187
                                 Buffers: shared hit=3100264 read=47618
               ->  Hash  (cost=66434.94..66434.94 rows=1 width=29) (actual time=13429.977..13429.977 rows=1267 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 92kB
                     Buffers: shared hit=2598446 read=80857
                     ->  Hash Join  (cost=26780.31..66434.94 rows=1 width=29) (actual time=11244.902..13428.990 rows=1267 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2598446 read=80857
                           ->  Hash Join  (cost=61.34..39715.92 rows=337 width=4) (actual time=106.293..2928.541 rows=24091 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21655 read=36841
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.693..2060.586 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=71.289..71.289 rows=10 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=19 read=24
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=43.604..71.249 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=19 read=24
                           ->  Hash  (cost=26718.88..26718.88 rows=659 width=25) (actual time=10492.796..10492.796 rows=4696 loops=1)
                                 Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 329kB
                                 Buffers: shared hit=2576791 read=44016
                                 ->  Hash Join  (cost=3324.35..26718.88 rows=659 width=25) (actual time=7164.730..10490.497 rows=4696 loops=1)
                                       Hash Cond: (t.id = cc.movie_id)
                                       Buffers: shared hit=2576791 read=44016
                                       ->  Hash Join  (cost=6.14..23377.63 rows=197350 width=21) (actual time=787.829..9897.867 rows=274015 loops=1)
                                             Hash Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=2489870 read=42910
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=37.571..9653.168 rows=1381453 loops=1)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1146859
                                                   Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=24.339..24.339 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=24.323..24.327 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=3316.98..3316.98 rows=8443 width=4) (actual time=512.242..512.243 rows=85941 loops=1)
                                             Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                             Buffers: shared hit=86921 read=1106
                                             ->  Hash Join  (cost=15.32..3316.98 rows=8443 width=4) (actual time=58.094..480.576 rows=85941 loops=1)
                                                   Hash Cond: (cc.status_id = cct.id)
                                                   Buffers: shared hit=86921 read=1106
                                                   ->  Hash Join  (cost=6.14..3304.16 rows=33772 width=8) (actual time=57.987..440.660 rows=85941 loops=1)
                                                         Hash Cond: (cc.subject_id = cct.id)
                                                         Buffers: shared hit=86920 read=1105
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=51.573..375.440 rows=135086 loops=1)
                                                               Buffers: shared hit=86920 read=1103
                                                         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=6.369..6.369 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=6.354..6.357 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'cast'::text)
                                                                     Buffers: shared read=2
                                                   ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=0.069..0.069 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.052..0.055 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1 read=1
         ->  Hash  (cost=48488.80..48488.80 rows=4167491 width=19) (actual time=5546.387..5546.387 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=18.907..4090.093 rows=4167491 loops=1)
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 5519.214 ms
 Execution Time: 85724.486 ms
(87 rows)


                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=925777.79..925777.79 rows=1 width=64) (actual time=85757.600..85757.600 rows=1 loops=1)
   Buffers: shared hit=6340652 read=490109
   ->  Hash Join  (cost=217679.56..925777.75 rows=257 width=33) (actual time=29947.886..85557.046 rows=319932 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=6340652 read=490109
         ->  Hash Join  (cost=175055.94..883153.24 rows=295 width=25) (actual time=28205.020..83632.014 rows=221609 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6045804 read=476249
               ->  Hash Join  (cost=127702.99..835800.26 rows=295 width=21) (actual time=26412.529..81688.930 rows=221609 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=6045176 read=461174
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=49.637..43929.192 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=127702.97..127702.97 rows=25 width=29) (actual time=26322.318..26322.318 rows=8538 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 705kB
                           Buffers: shared hit=4193419 read=109488
                           ->  Hash Join  (cost=67647.74..127702.97 rows=25 width=29) (actual time=13809.246..26316.811 rows=8538 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=4193419 read=109488
                                 ->  Hash Join  (cost=63038.09..123093.31 rows=71 width=33) (actual time=13032.144..25533.870 rows=11406 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=3961705 read=105648
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=15.227..12031.805 rows=2609129 loops=1)
                                             Buffers: shared hit=1450198 read=25920
                                       ->  Hash  (cost=63038.07..63038.07 rows=13 width=25) (actual time=12960.354..12960.354 rows=6926 loops=1)
                                             Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 499kB
                                             Buffers: shared hit=2511507 read=79728
                                             ->  Hash Join  (cost=23383.48..63038.07 rows=13 width=25) (actual time=10339.162..12957.029 rows=6926 loops=1)
                                                   Hash Cond: (mk.movie_id = t.id)
                                                   Buffers: shared hit=2511507 read=79728
                                                   ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=78.528..2674.717 rows=41840 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=21636 read=36821
                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.693..1843.227 rows=4523930 loops=1)
                                                               Buffers: shared hit=21636 read=36817
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.648..46.648 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=4
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.632..46.635 rows=1 loops=1)
                                                                     Index Cond: (keyword = 'character-name-in-title'::text)
                                                                     Buffers: shared read=4
                                                   ->  Hash  (cost=23238.35..23238.35 rows=946906 width=21) (actual time=10257.662..10257.662 rows=946906 loops=1)
                                                         Buckets: 1048576  Batches: 1  Memory Usage: 58149kB
                                                         Buffers: shared hit=2489871 read=42907
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=946906 width=21) (actual time=50.075..9900.091 rows=946906 loops=1)
                                                               Filter: (episode_nr < 100)
                                                               Rows Removed by Filter: 1581406
                                                               Buffers: shared hit=2489871 read=42907
                                 ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=776.096..776.097 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=53.471..750.531 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1782.698..1782.698 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=628 read=15075
                     ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=38.986..671.597 rows=4167491 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=628 read=15075
         ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1734.983..1734.983 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=294845 read=13860
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=42.570..1342.700 rows=901343 loops=1)
                     Buffers: shared hit=294845 read=13860
 Planning Time: 6500.893 ms
 Execution Time: 85777.205 ms
(68 rows)


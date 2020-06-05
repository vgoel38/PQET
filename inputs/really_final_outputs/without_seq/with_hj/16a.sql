                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=924710.39..924710.39 rows=1 width=64) (actual time=84755.061..84755.061 rows=1 loops=1)
   Buffers: shared hit=6340652 read=490109
   ->  Hash Join  (cost=217765.44..924710.39 rows=19 width=33) (actual time=29351.052..84754.093 rows=385 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=6340652 read=490109
         ->  Hash Join  (cost=175141.82..882086.71 rows=21 width=25) (actual time=27859.549..83261.949 rows=323 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6045804 read=476249
               ->  Hash Join  (cost=127788.87..834733.75 rows=21 width=21) (actual time=26088.126..81489.751 rows=323 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=6045176 read=461174
                     ->  Hash Join  (cost=23444.68..730275.63 rows=978319 width=29) (actual time=9053.943..64461.255 rows=1166027 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=4341628 read=394593
                           ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=72.073..41714.823 rows=36244344 loops=1)
                                 Buffers: shared hit=1851757 read=351686
                           ->  Hash  (cost=23434.65..23434.65 rows=68245 width=21) (actual time=8980.810..8980.810 rows=68245 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4499kB
                                 Buffers: shared hit=2489871 read=42907
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=68245 width=21) (actual time=519.965..8953.192 rows=68245 loops=1)
                                       Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                       Rows Removed by Filter: 2460067
                                       Buffers: shared hit=2489871 read=42907
                     ->  Hash  (cost=104344.18..104344.18 rows=68 width=8) (actual time=16558.664..16558.664 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared hit=1703548 read=66581
                           ->  Hash Join  (cost=44270.40..104344.18 rows=68 width=8) (actual time=3651.990..16532.597 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=1703548 read=66581
                                 ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=777.243..13415.425 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=1681912 read=29760
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=42.161..11996.014 rows=2609129 loops=1)
                                             Buffers: shared hit=1450198 read=25920
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=734.024..734.024 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.548..707.927 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=39660.73..39660.73 rows=34 width=4) (actual time=2829.115..2829.115 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=21636 read=36821
                                       ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=77.850..2813.825 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21636 read=36821
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.122..1974.652 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.632..46.632 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.623..46.624 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
               ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1761.583..1761.583 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=628 read=15075
                     ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=40.318..663.022 rows=4167491 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=628 read=15075
         ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1483.612..1483.612 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=294845 read=13860
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=42.583..1110.527 rows=901343 loops=1)
                     Buffers: shared hit=294845 read=13860
 Planning Time: 6815.946 ms
 Execution Time: 84775.597 ms
(68 rows)


                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1117065.81..1117065.81 rows=1 width=64) (actual time=71350.191..71350.191 rows=1 loops=1)
   Buffers: shared hit=8225551 read=711112
   ->  Hash Join  (cost=501691.21..1117065.74 rows=480 width=32) (actual time=63064.250..70939.378 rows=1760645 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=8225551 read=711112
         ->  Hash Join  (cost=436979.21..1052353.16 rows=408 width=44) (actual time=49748.959..57284.754 rows=702993 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=6543636 read=681352
               ->  Hash Join  (cost=6.14..615364.78 rows=131290 width=4) (actual time=9673.865..16459.126 rows=3036719 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=87582 read=202431
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=8) (actual time=42.618..12892.053 rows=14835720 loops=1)
                           Buffers: shared hit=87582 read=202429
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.402..21.403 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=21.382..21.385 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'release dates'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=436972.51..436972.51 rows=3839 width=40) (actual time=40074.462..40074.462 rows=290297 loops=1)
                     Buckets: 524288 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 27139kB
                     Buffers: shared hit=6456054 read=478921
                     ->  Hash Join  (cost=115265.20..436972.51 rows=3839 width=40) (actual time=25965.623..39961.995 rows=290297 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6456054 read=478921
                           ->  Hash Join  (cost=91824.08..413530.81 rows=7026 width=19) (actual time=14352.118..28185.061 rows=482841 loops=1)
                                 Hash Cond: (ci.person_role_id = chn.id)
                                 Buffers: shared hit=3966184 read=436013
                                 ->  Hash Join  (cost=56732.51..378438.07 rows=14477 width=23) (actual time=12560.454..26232.759 rows=503022 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=3938600 read=424840
                                       ->  Hash Join  (cost=6.14..321703.05 rows=72136 width=12) (actual time=7485.816..21000.837 rows=276166 loops=1)
                                             Hash Cond: (ci.role_id = rt.id)
                                             Buffers: shared hit=2 read=351688
                                             ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=41.100..20741.695 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared hit=2 read=351686
                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=21.786..21.786 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=21.771..21.774 rows=1 loops=1)
                                                         Index Cond: ((role)::text = 'actress'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=56695.83..56695.83 rows=208060 width=23) (actual time=5072.351..5072.351 rows=193486 loops=1)
                                             Buckets: 262144  Batches: 1  Memory Usage: 12877kB
                                             Buffers: shared hit=3938598 read=73152
                                             ->  Hash Join  (cost=48953.58..56695.83 rows=208060 width=23) (actual time=4818.157..5021.594 rows=193486 loops=1)
                                                   Hash Cond: (an.person_id = n.id)
                                                   Buffers: shared hit=3938598 read=73152
                                                   ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=31.618..151.871 rows=901343 loops=1)
                                                         Heap Fetches: 0
                                                         Buffers: shared read=2466
                                                   ->  Hash  (cost=48812.37..48812.37 rows=961996 width=19) (actual time=4627.351..4627.351 rows=961555 loops=1)
                                                         Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                                         Buffers: shared hit=3938598 read=70686
                                                         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=961996 width=19) (actual time=1864.835..4300.866 rows=961555 loops=1)
                                                               Filter: ((gender)::text = 'f'::text)
                                                               Rows Removed by Filter: 3205936
                                                               Buffers: shared hit=3938598 read=70686
                                 ->  Hash  (cost=34630.62..34630.62 rows=3140339 width=4) (actual time=1781.633..1781.633 rows=3140339 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
                                       Buffers: shared hit=27584 read=11173
                                       ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..34630.62 rows=3140339 width=4) (actual time=50.710..951.402 rows=3140339 loops=1)
                                             Heap Fetches: 0
                                             Buffers: shared hit=27584 read=11173
                           ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=21) (actual time=11604.887..11604.887 rows=1381453 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=55.080..11052.422 rows=1381453 loops=1)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1146859
                                       Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=64573.73..64573.73 rows=941996 width=4) (actual time=13312.360..13312.360 rows=1153798 loops=1)
               Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
               Buffers: shared hit=1681912 read=29760
               ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=803.246..12875.392 rows=1153798 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1681912 read=29760
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=34.123..11354.241 rows=2609129 loops=1)
                           Buffers: shared hit=1450198 read=25920
                     ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=768.106..768.106 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=231714 read=3840
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=37.228..742.591 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231714 read=3840
 Planning Time: 6412.812 ms
 Execution Time: 71358.380 ms
(90 rows)


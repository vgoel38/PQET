                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1118366.38..1118366.38 rows=1 width=64) (actual time=71573.082..71573.082 rows=1 loops=1)
   Buffers: shared hit=8232221 read=711533
   ->  Hash Join  (cost=501889.71..1118366.38 rows=1 width=32) (actual time=64166.885..71556.769 rows=3575 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=8232221 read=711533
         ->  Hash Join  (cost=478448.59..1094925.26 rows=1 width=27) (actual time=53568.964..60957.187 rows=4113 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=5742348 read=668625
               ->  Hash Join  (cost=470647.51..1087124.18 rows=1 width=35) (actual time=53158.141..60544.543 rows=3054 loops=1)
                     Hash Cond: (mi.movie_id = mc.movie_id)
                     Buffers: shared hit=5742348 read=666159
                     ->  Hash Join  (cost=405935.51..1022412.18 rows=1 width=31) (actual time=39569.819..47024.628 rows=2366 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=4060436 read=636399
                           ->  Hash Join  (cost=370843.95..987320.61 rows=2 width=35) (actual time=37676.287..45129.593 rows=2521 loops=1)
                                 Hash Cond: (mi.movie_id = ci.movie_id)
                                 Buffers: shared hit=4032852 read=625226
                                 ->  Hash Join  (cost=6.14..616482.34 rows=3969 width=4) (actual time=11699.212..19054.341 rows=451039 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=94252 read=202852
                                       ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=448472 width=8) (actual time=102.218..18873.868 rows=451104 loops=1)
                                             Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                             Rows Removed by Filter: 14384616
                                             Buffers: shared hit=94252 read=202850
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=20.449..20.450 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=20.427..20.430 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'release dates'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=370837.71..370837.71 rows=653 width=31) (actual time=25969.065..25969.065 rows=6552 loops=1)
                                       Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 480kB
                                       Buffers: shared hit=3938600 read=422374
                                       ->  Hash Join  (cost=49147.61..370837.71 rows=653 width=31) (actual time=11699.669..25964.413 rows=6552 loops=1)
                                             Hash Cond: (ci.role_id = rt.id)
                                             Buffers: shared hit=3938600 read=422374
                                             ->  Hash Join  (cost=49141.48..370830.88 rows=7832 width=35) (actual time=11680.939..25941.745 rows=6554 loops=1)
                                                   Hash Cond: (ci.person_id = n.id)
                                                   Buffers: shared hit=3938600 read=422372
                                                   ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=44.820..21560.385 rows=867477 loops=1)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 35376867
                                                         Buffers: shared hit=2 read=351686
                                                   ->  Hash  (cost=49135.93..49135.93 rows=37708 width=19) (actual time=4197.808..4197.808 rows=50011 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                         Buffers: shared hit=3938598 read=70686
                                                         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1864.746..4179.109 rows=50011 loops=1)
                                                               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 4117480
                                                               Buffers: shared hit=3938598 read=70686
                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=18.716..18.716 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=18.698..18.701 rows=1 loops=1)
                                                         Index Cond: ((role)::text = 'actress'::text)
                                                         Buffers: shared read=2
                           ->  Hash  (cost=34630.62..34630.62 rows=3140339 width=4) (actual time=1884.054..1884.054 rows=3140339 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
                                 Buffers: shared hit=27584 read=11173
                                 ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..34630.62 rows=3140339 width=4) (actual time=42.139..1048.344 rows=3140339 loops=1)
                                       Heap Fetches: 0
                                       Buffers: shared hit=27584 read=11173
                     ->  Hash  (cost=64573.73..64573.73 rows=941996 width=4) (actual time=13515.467..13515.467 rows=1153798 loops=1)
                           Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                           Buffers: shared hit=1681912 read=29760
                           ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=766.913..13067.170 rows=1153798 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=1681912 read=29760
                                 ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=31.156..11585.182 rows=2609129 loops=1)
                                       Buffers: shared hit=1450198 read=25920
                                 ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=734.750..734.750 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.581..708.212 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=408.425..408.425 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                     Buffers: shared read=2466
                     ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=46.229..196.859 rows=901343 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2466
         ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=21) (actual time=10593.018..10593.018 rows=1381453 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=38.454..10038.167 rows=1381453 loops=1)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 1146859
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 6498.219 ms
 Execution Time: 71580.593 ms
(92 rows)


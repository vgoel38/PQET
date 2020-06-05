                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=537855.14..537855.14 rows=1 width=128) (actual time=63792.882..63792.882 rows=1 loops=1)
   Buffers: shared hit=11505494 read=556520
   ->  Hash Join  (cost=216136.06..537853.62 rows=4872 width=64) (actual time=49741.543..63585.751 rows=483082 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=11505494 read=556520
         ->  Hash Join  (cost=192722.90..514440.07 rows=4872 width=55) (actual time=39240.701..52933.257 rows=483082 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared hit=9015621 read=513612
               ->  Hash Join  (cost=128010.90..449717.64 rows=7026 width=51) (actual time=25855.083..39362.752 rows=482841 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=7333709 read=483852
                     ->  Hash Join  (cost=91555.05..413260.61 rows=14477 width=39) (actual time=13888.171..27235.763 rows=503022 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=4233445 read=436234
                           ->  Hash Join  (cost=6.14..321703.05 rows=72136 width=12) (actual time=7504.421..20700.814 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=2 read=351688
                                 ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=43.523..20447.026 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared hit=2 read=351686
                                 ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=21.806..21.807 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=21.791..21.795 rows=1 loops=1)
                                             Index Cond: ((role)::text = 'actress'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=91518.37..91518.37 rows=208060 width=39) (actual time=6382.096..6382.096 rows=193486 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 16249kB
                                 Buffers: shared hit=4233443 read=84546
                                 ->  Hash Join  (cost=48953.58..91518.37 rows=208060 width=39) (actual time=5878.871..6311.846 rows=193486 loops=1)
                                       Hash Cond: (an.person_id = n.id)
                                       Buffers: shared hit=4233443 read=84546
                                       ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=27.541..1356.693 rows=901343 loops=1)
                                             Buffers: shared hit=294845 read=13860
                                       ->  Hash  (cost=48812.37..48812.37 rows=961996 width=19) (actual time=4543.256..4543.256 rows=961555 loops=1)
                                             Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                             Buffers: shared hit=3938598 read=70686
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=961996 width=19) (actual time=1807.820..4220.994 rows=961555 loops=1)
                                                   Filter: ((gender)::text = 'f'::text)
                                                   Rows Removed by Filter: 3205936
                                                   Buffers: shared hit=3938598 read=70686
                     ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=11957.441..11957.441 rows=3140339 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                           Buffers: shared hit=3100264 read=47618
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=25.248..10837.471 rows=3140339 loops=1)
                                 Buffers: shared hit=3100264 read=47618
               ->  Hash  (cost=64573.73..64573.73 rows=941996 width=4) (actual time=13383.191..13383.191 rows=1153798 loops=1)
                     Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                     Buffers: shared hit=1681912 read=29760
                     ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=761.359..12935.075 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=1681912 read=29760
                           ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=36.273..11462.569 rows=2609129 loops=1)
                                 Buffers: shared hit=1450198 read=25920
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=724.086..724.086 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=231714 read=3840
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.579..699.564 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10491.091..10491.091 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=86.793..9548.523 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 3901.185 ms
 Execution Time: 63803.029 ms
(69 rows)


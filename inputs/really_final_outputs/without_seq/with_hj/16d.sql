                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=925844.99..925844.99 rows=1 width=64) (actual time=89554.841..89554.841 rows=1 loops=1)
   Buffers: shared hit=6340652 read=490109
   ->  Hash Join  (cost=217857.07..925844.96 rows=188 width=33) (actual time=30672.835..89424.573 rows=249455 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=6340652 read=490109
         ->  Hash Join  (cost=175233.46..883220.68 rows=216 width=25) (actual time=29094.718..87722.292 rows=169273 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6045804 read=476249
               ->  Hash Join  (cost=127880.51..835867.71 rows=216 width=21) (actual time=27291.690..85820.173 rows=169273 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=6045176 read=461174
                     ->  Hash Join  (cost=23536.32..730367.26 rows=9928062 width=29) (actual time=10401.515..65218.108 rows=11826137 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=4341628 read=394593
                           ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=45.523..35718.049 rows=36244344 loops=1)
                                 Buffers: shared hit=1851757 read=351686
                           ->  Hash  (cost=23434.65..23434.65 rows=692556 width=21) (actual time=10348.190..10348.190 rows=692556 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 44829kB
                                 Buffers: shared hit=2489871 read=42907
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=692556 width=21) (actual time=99.675..10069.468 rows=692556 loops=1)
                                       Filter: ((episode_nr >= 5) AND (episode_nr < 100))
                                       Rows Removed by Filter: 1835756
                                       Buffers: shared hit=2489871 read=42907
                     ->  Hash  (cost=104344.18..104344.18 rows=68 width=8) (actual time=16854.946..16854.946 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared hit=1703548 read=66581
                           ->  Hash Join  (cost=44270.40..104344.18 rows=68 width=8) (actual time=3827.751..16827.420 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=1703548 read=66581
                                 ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=767.542..13517.321 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=1681912 read=29760
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=34.604..12084.071 rows=2609129 loops=1)
                                             Buffers: shared hit=1450198 read=25920
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=732.216..732.217 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.880..706.240 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=39660.73..39660.73 rows=34 width=4) (actual time=3019.468..3019.468 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=21636 read=36821
                                       ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=80.110..3003.820 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21636 read=36821
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=33.271..2114.399 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.651..46.651 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.636..46.639 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
               ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1793.346..1793.346 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=628 read=15075
                     ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=45.522..676.853 rows=4167491 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=628 read=15075
         ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1570.241..1570.241 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=294845 read=13860
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=42.588..1187.231 rows=901343 loops=1)
                     Buffers: shared hit=294845 read=13860
 Planning Time: 6597.396 ms
 Execution Time: 89586.283 ms
(68 rows)


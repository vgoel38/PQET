                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22165.98..22165.98 rows=1 width=64) (actual time=19437.411..19437.411 rows=1 loops=1)
   Buffers: shared hit=4 read=401900
   ->  Hash Join  (cost=7512.88..22165.94 rows=257 width=33) (actual time=7347.662..19344.920 rows=319932 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=4 read=401900
         ->  Hash Join  (cost=6960.83..21613.00 rows=295 width=25) (actual time=6765.331..18663.850 rows=221609 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=1 read=390505
               ->  Hash Join  (cost=4316.56..18968.70 rows=295 width=21) (actual time=4060.633..15877.600 rows=221609 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1 read=334892
                     ->  Hash Join  (cost=4175.70..18827.77 rows=819 width=25) (actual time=3874.115..15588.549 rows=329808 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=1 read=331898
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=44.837..5556.193 rows=36244344 loops=1)
                                 Buffers: shared read=252654
                           ->  Hash  (cost=4175.69..4175.69 rows=71 width=33) (actual time=3829.155..3829.155 rows=11406 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 941kB
                                 Buffers: shared hit=1 read=79244
                                 ->  Hash Join  (cost=3102.08..4175.69 rows=71 width=33) (actual time=2942.424..3824.468 rows=11406 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=1 read=79244
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=7.841..445.051 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=3102.08..3102.08 rows=13 width=25) (actual time=2927.999..2927.999 rows=6926 loops=1)
                                             Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 499kB
                                             Buffers: shared hit=1 read=60455
                                             ->  Hash Join  (cost=1454.78..3102.08 rows=13 width=25) (actual time=1208.652..2923.855 rows=6926 loops=1)
                                                   Hash Cond: (t.id = mk.movie_id)
                                                   Buffers: shared hit=1 read=60455
                                                   ->  Seq Scan on title t  (cost=0.00..1500.26 rows=946906 width=21) (actual time=0.018..1468.835 rows=946906 loops=1)
                                                         Filter: (episode_nr < 100)
                                                         Rows Removed by Filter: 1581406
                                                         Buffers: shared hit=1 read=35997
                                                   ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1208.538..1208.538 rows=41840 loops=1)
                                                         Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                                         Buffers: shared read=24458
                                                         ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=54.615..1197.970 rows=41840 loops=1)
                                                               Hash Cond: (mk.keyword_id = k.id)
                                                               Buffers: shared read=24458
                                                               ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.839..540.198 rows=4523930 loops=1)
                                                                     Buffers: shared read=24454
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.637..46.638 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=4
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.621..46.624 rows=1 loops=1)
                                                                           Index Cond: (keyword = 'character-name-in-title'::text)
                                                                           Buffers: shared read=4
                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=186.198..186.198 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.861..161.039 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared read=2994
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2694.639..2694.639 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=39.473..1407.702 rows=4167491 loops=1)
                           Buffers: shared read=55613
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=574.307..574.307 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=25.845..295.715 rows=901343 loops=1)
                     Buffers: shared read=11395
 Planning Time: 6950.078 ms
 Execution Time: 19465.847 ms
(67 rows)


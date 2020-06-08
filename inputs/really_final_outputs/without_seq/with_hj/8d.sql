                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=503646.50..503646.50 rows=1 width=64) (actual time=49027.248..49027.249 rows=1 loops=1)
   Buffers: shared hit=4467260 read=453291
   ->  Hash Join  (cost=438428.24..503363.74 rows=1820954 width=33) (actual time=35872.979..48909.451 rows=323005 loops=1)
         Hash Cond: (t.id = ci.movie_id)
         Buffers: shared hit=4467260 read=453291
         ->  Hash Join  (cost=28022.83..88063.68 rows=941996 width=25) (actual time=11492.267..24230.561 rows=1153798 loops=1)
               Hash Cond: (mc.movie_id = t.id)
               Buffers: shared hit=4171785 read=72668
               ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=849.276..12934.219 rows=1153798 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1681915 read=29760
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=34.726..11414.068 rows=2609129 loops=1)
                           Buffers: shared hit=1450198 read=25920
                     ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=813.460..813.460 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=231714 read=3840
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=37.168..787.320 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10633.120..10633.120 rows=2528312 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                     Buffers: shared hit=2489870 read=42908
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=40.301..9680.916 rows=2528312 loops=1)
                           Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=410019.98..410019.98 rows=2625959 width=20) (actual time=24284.204..24284.204 rows=218966 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 44434kB
               Buffers: shared hit=295475 read=380623
               ->  Hash Join  (cost=367308.56..410019.98 rows=2625959 width=20) (actual time=22673.585..24216.166 rows=218966 loops=1)
                     Hash Cond: (an.person_id = n.id)
                     Buffers: shared hit=295475 read=380623
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=39.055..1277.430 rows=901343 loops=1)
                           Buffers: shared hit=294845 read=13860
                     ->  Hash  (cost=366865.21..366865.21 rows=3020362 width=12) (actual time=22588.787..22588.787 rows=276403 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 44645kB
                           Buffers: shared hit=630 read=366763
                           ->  Hash Join  (cost=47359.09..366865.21 rows=3020362 width=12) (actual time=17685.760..22514.023 rows=276403 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=630 read=366763
                                 ->  Hash Join  (cost=6.14..319266.03 rows=3020362 width=8) (actual time=15715.766..20447.658 rows=276403 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=2 read=351688
                                       ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..315990.85 rows=36244344 width=12) (actual time=76.290..13532.548 rows=36244344 loops=1)
                                             Buffers: shared hit=2 read=351686
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=21.807..21.808 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=21.790..21.794 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'costume designer'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1949.131..1949.131 rows=4167491 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                       Buffers: shared hit=628 read=15075
                                       ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=45.330..817.116 rows=4167491 loops=1)
                                             Heap Fetches: 0
                                             Buffers: shared hit=628 read=15075
 Planning Time: 4183.847 ms
 Execution Time: 49061.399 ms
(58 rows)


                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=503646.50..503646.50 rows=1 width=64) (actual time=51823.868..51823.868 rows=1 loops=1)
   Buffers: shared hit=4467260 read=453291
   ->  Hash Join  (cost=438428.24..503363.74 rows=1820954 width=33) (actual time=37408.043..51143.582 rows=2487611 loops=1)
         Hash Cond: (t.id = ci.movie_id)
         Buffers: shared hit=4467260 read=453291
         ->  Hash Join  (cost=28022.83..88063.68 rows=941996 width=25) (actual time=11695.007..24381.153 rows=1153798 loops=1)
               Hash Cond: (mc.movie_id = t.id)
               Buffers: shared hit=4171785 read=72668
               ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=1050.046..13095.304 rows=1153798 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1681915 read=29760
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=34.721..11412.043 rows=2609129 loops=1)
                           Buffers: shared hit=1450198 read=25920
                     ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=1014.260..1014.260 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=231714 read=3840
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=37.212..987.320 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10634.655..10634.655 rows=2528312 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                     Buffers: shared hit=2489870 read=42908
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=47.422..9687.384 rows=2528312 loops=1)
                           Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=410019.98..410019.98 rows=2625959 width=20) (actual time=25691.578..25691.578 rows=2343724 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 158723kB
               Buffers: shared hit=295475 read=380623
               ->  Hash Join  (cost=367308.56..410019.98 rows=2625959 width=20) (actual time=23704.318..25030.275 rows=2343724 loops=1)
                     Hash Cond: (a1.person_id = n1.id)
                     Buffers: shared hit=295475 read=380623
                     ->  Index Scan using person_id_aka_name on aka_name a1  (cost=0.01..42491.32 rows=901343 width=20) (actual time=45.052..669.188 rows=901343 loops=1)
                           Buffers: shared hit=294845 read=13860
                     ->  Hash  (cost=366865.21..366865.21 rows=3020362 width=12) (actual time=23616.955..23616.955 rows=2728943 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 150028kB
                           Buffers: shared hit=630 read=366763
                           ->  Hash Join  (cost=47359.09..366865.21 rows=3020362 width=12) (actual time=14847.709..22923.985 rows=2728943 loops=1)
                                 Hash Cond: (ci.person_id = n1.id)
                                 Buffers: shared hit=630 read=366763
                                 ->  Hash Join  (cost=6.14..319266.03 rows=3020362 width=8) (actual time=13039.362..20203.135 rows=2728943 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=2 read=351688
                                       ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..315990.85 rows=36244344 width=12) (actual time=36.069..12942.225 rows=36244344 loops=1)
                                             Buffers: shared hit=2 read=351686
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=21.815..21.815 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=21.799..21.802 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'writer'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1798.615..1798.615 rows=4167491 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                       Buffers: shared hit=628 read=15075
                                       ->  Index Only Scan using name_pkey on name n1  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=34.467..679.183 rows=4167491 loops=1)
                                             Heap Fetches: 0
                                             Buffers: shared hit=628 read=15075
 Planning Time: 3815.576 ms
 Execution Time: 51858.241 ms
(58 rows)


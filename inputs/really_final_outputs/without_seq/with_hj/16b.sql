                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=925815.29..925815.29 rows=1 width=64) (actual time=86954.161..86954.161 rows=1 loops=1)
   Buffers: shared hit=6340651 read=490110
   ->  Hash Join  (cost=217715.40..925815.18 rows=686 width=33) (actual time=31224.838..85364.894 rows=3710592 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=6340651 read=490110
         ->  Hash Join  (cost=175091.79..883189.16 rows=789 width=25) (actual time=29534.781..81841.905 rows=2832555 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6045803 read=476250
               ->  Hash Join  (cost=127738.83..835836.15 rows=789 width=21) (actual time=27741.740..78499.633 rows=2832555 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=6045175 read=461175
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=43.568..37072.214 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=127738.81..127738.81 rows=68 width=29) (actual time=27698.113..27698.113 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5548kB
                           Buffers: shared hit=4193418 read=109489
                           ->  Hash Join  (cost=67683.57..127738.81 rows=68 width=29) (actual time=14941.995..27662.305 rows=68316 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=4193418 read=109489
                                 ->  Hash Join  (cost=63073.91..123129.14 rows=190 width=33) (actual time=14215.435..26887.935 rows=148552 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=3961704 read=105649
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=15.730..12035.798 rows=2609129 loops=1)
                                             Buffers: shared hit=1450198 read=25920
                                       ->  Hash  (cost=63073.89..63073.89 rows=34 width=25) (actual time=14168.095..14168.095 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3156kB
                                             Buffers: shared hit=2511506 read=79729
                                             ->  Hash Join  (cost=23419.31..63073.89 rows=34 width=25) (actual time=11288.299..14147.266 rows=41840 loops=1)
                                                   Hash Cond: (mk.movie_id = t.id)
                                                   Buffers: shared hit=2511506 read=79729
                                                   ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=78.577..2906.441 rows=41840 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=21636 read=36821
                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.735..2040.050 rows=4523930 loops=1)
                                                               Buffers: shared hit=21636 read=36817
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.646..46.646 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=4
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.630..46.633 rows=1 loops=1)
                                                                     Index Cond: (keyword = 'character-name-in-title'::text)
                                                                     Buffers: shared read=4
                                                   ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=11185.450..11185.450 rows=2528312 loops=1)
                                                         Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                                                         Buffers: shared hit=2489870 read=42908
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=35.721..10161.591 rows=2528312 loops=1)
                                                               Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=725.560..725.560 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=53.432..699.653 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1783.157..1783.157 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=628 read=15075
                     ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=41.692..672.458 rows=4167491 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=628 read=15075
         ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1682.124..1682.124 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=294845 read=13860
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=42.536..1286.914 rows=901343 loops=1)
                     Buffers: shared hit=294845 read=13860
 Planning Time: 6446.811 ms
 Execution Time: 87055.231 ms
(66 rows)


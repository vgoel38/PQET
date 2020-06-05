                                                                                           QUERY PLAN                                                                                            
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=127738.81..127738.81 rows=1 width=32) (actual time=27434.160..27434.161 rows=1 loops=1)
   Buffers: shared hit=4193421 read=109489
   ->  Hash Join  (cost=67683.57..127738.81 rows=68 width=17) (actual time=15043.910..27400.121 rows=68316 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=4193421 read=109489
         ->  Hash Join  (cost=63073.91..123129.14 rows=190 width=21) (actual time=14271.236..26584.604 rows=148552 loops=1)
               Hash Cond: (mc.movie_id = t.id)
               Buffers: shared hit=3961704 read=105649
               ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=13.204..11653.132 rows=2609129 loops=1)
                     Buffers: shared hit=1450198 read=25920
               ->  Hash  (cost=63073.89..63073.89 rows=34 width=25) (actual time=14229.258..14229.258 rows=41840 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3156kB
                     Buffers: shared hit=2511506 read=79729
                     ->  Hash Join  (cost=23419.31..63073.89 rows=34 width=25) (actual time=11548.878..14211.469 rows=41840 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2511506 read=79729
                           ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=78.561..2711.512 rows=41840 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21636 read=36821
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.709..1877.147 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.659..46.659 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.643..46.646 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                           ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=11445.153..11445.153 rows=2528312 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=34.828..10465.969 rows=2528312 loops=1)
                                       Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=771.631..771.631 rows=84843 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
               Buffers: shared hit=231714 read=3840
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=30.307..745.736 rows=84843 loops=1)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 150154
                     Buffers: shared hit=231714 read=3840
 Planning Time: 2164.445 ms
 Execution Time: 27447.035 ms
(41 rows)


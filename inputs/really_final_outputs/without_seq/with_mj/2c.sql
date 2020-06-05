                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=127407.76..127407.76 rows=1 width=32) (actual time=16446.754..16446.754 rows=1 loops=1)
   Buffers: shared hit=1366262 read=62839
   ->  Merge Join  (cost=104193.02..127407.76 rows=1 width=17) (actual time=16446.713..16446.713 rows=0 loops=1)
         Merge Cond: (mc.movie_id = t.id)
         Buffers: shared hit=1366262 read=62839
         ->  Sort  (cost=104193.00..104193.00 rows=1 width=8) (actual time=16446.711..16446.711 rows=0 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=1366262 read=62839
               ->  Merge Join  (cost=104192.98..104193.00 rows=1 width=8) (actual time=16435.881..16435.881 rows=0 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=1366258 read=62839
                     ->  Sort  (cost=104186.84..104186.85 rows=106 width=12) (actual time=16405.749..16405.749 rows=1 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1366258 read=62835
                           ->  Merge Join  (cost=64551.17..104186.73 rows=106 width=12) (actual time=16405.724..16405.727 rows=2 loops=1)
                                 Merge Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=1366258 read=62835
                                 ->  Sort  (cost=64551.16..64551.16 rows=11 width=4) (actual time=13022.205..13022.208 rows=2 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1345894 read=27968
                                       ->  Merge Join  (cost=0.03..64551.15 rows=11 width=4) (actual time=12423.264..13022.188 rows=2 loops=1)
                                             Merge Cond: (cn.id = mc.company_id)
                                             Buffers: shared hit=1345894 read=27968
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1 width=4) (actual time=307.257..906.177 rows=1 loops=1)
                                                   Filter: ((country_code)::text = '[sm]'::text)
                                                   Rows Removed by Filter: 234996
                                                   Buffers: shared hit=231720 read=3834
                                             ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.017..11754.308 rows=1970794 loops=1)
                                                   Buffers: shared hit=1114174 read=24134
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.018..2642.781 rows=4284332 loops=1)
                                       Buffers: shared hit=20364 read=34867
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=30.124..30.125 rows=1 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.089..30.092 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (never executed)
 Planning Time: 2533.226 ms
 Execution Time: 16528.893 ms
(44 rows)


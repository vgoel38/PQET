                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=146412.27..146412.27 rows=1 width=32) (actual time=29293.350..29293.350 rows=1 loops=1)
   Buffers: shared hit=4191008 read=109418
   ->  Merge Join  (cost=123051.24..146412.27 rows=68 width=17) (actual time=19705.634..29267.284 rows=68316 loops=1)
         Merge Cond: (mc.movie_id = t.id)
         Buffers: shared hit=4191008 read=109418
         ->  Merge Join  (cost=123051.21..123197.50 rows=68 width=8) (actual time=19235.622..19546.197 rows=68316 loops=1)
               Merge Cond: (mk.movie_id = mc.movie_id)
               Buffers: shared hit=1703572 read=66561
               ->  Sort  (cost=55525.51..55525.52 rows=34 width=4) (actual time=4132.176..4139.068 rows=41839 loops=1)
                     Sort Key: mk.movie_id
                     Sort Method: quicksort  Memory: 3498kB
                     Buffers: shared hit=21647 read=36814
                     ->  Merge Join  (cost=54823.01..55525.49 rows=34 width=4) (actual time=4095.906..4108.483 rows=41840 loops=1)
                           Merge Cond: (k.id = mk.keyword_id)
                           Buffers: shared hit=21643 read=36814
                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=19.044..19.045 rows=1 loops=1)
                                 Sort Key: k.id
                                 Sort Method: quicksort  Memory: 25kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=19.024..19.026 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                           ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=4043.266..4067.558 rows=163762 loops=1)
                                 Sort Key: mk.keyword_id
                                 Sort Method: quicksort  Memory: 408668kB
                                 Buffers: shared hit=21643 read=36810
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.036..2399.663 rows=4523930 loops=1)
                                       Buffers: shared hit=21643 read=36810
               ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=15103.376..15238.661 rows=1153839 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 103237kB
                     Buffers: shared hit=1681925 read=29747
                     ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.076..14586.617 rows=1153798 loops=1)
                           Merge Cond: (cn.id = mc.company_id)
                           Buffers: shared hit=1681925 read=29747
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.062..1769.170 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231720 read=3834
                           ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.010..12202.484 rows=2609129 loops=1)
                                 Buffers: shared hit=1450205 read=25913
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.019..9352.220 rows=2524891 loops=1)
               Buffers: shared hit=2487436 read=42857
 Planning Time: 2136.401 ms
 Execution Time: 29376.503 ms
(45 rows)


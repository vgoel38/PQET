                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1060496.12..1060496.12 rows=1 width=64) (actual time=145611.800..145611.800 rows=1 loops=1)
   Buffers: shared hit=10796886 read=543519
   ->  Merge Join  (cost=1032239.95..1060496.02 rows=686 width=33) (actual time=125407.457..144848.273 rows=3710592 loops=1)
         Merge Cond: (t.id = ci.movie_id)
         Buffers: shared hit=10796886 read=543519
         ->  Merge Join  (cost=123051.42..146414.34 rows=68 width=29) (actual time=19805.712..29186.968 rows=68316 loops=1)
               Merge Cond: (t.id = mc.movie_id)
               Buffers: shared hit=4191721 read=109422
               ->  Merge Join  (cost=55525.72..78742.36 rows=34 width=25) (actual time=4308.430..13859.842 rows=41839 loops=1)
                     Merge Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=2509796 read=79675
                     ->  Sort  (cost=55525.51..55525.52 rows=34 width=4) (actual time=3974.090..3980.459 rows=41839 loops=1)
                           Sort Key: mk.movie_id
                           Sort Method: quicksort  Memory: 3498kB
                           Buffers: shared hit=21647 read=36814
                           ->  Merge Join  (cost=54823.01..55525.49 rows=34 width=4) (actual time=3937.617..3950.311 rows=41840 loops=1)
                                 Merge Cond: (k.id = mk.keyword_id)
                                 Buffers: shared hit=21643 read=36814
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=28.495..28.495 rows=1 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=28.466..28.469 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                 ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=3875.563..3899.832 rows=163762 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 408668kB
                                       Buffers: shared hit=21643 read=36810
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.044..2224.270 rows=4523930 loops=1)
                                             Buffers: shared hit=21643 read=36810
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.023..9550.958 rows=2525756 loops=1)
                           Buffers: shared hit=2488149 read=42861
               ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=15040.978..15173.691 rows=1153839 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 103237kB
                     Buffers: shared hit=1681925 read=29747
                     ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.064..14527.316 rows=1153798 loops=1)
                           Merge Cond: (cn.id = mc.company_id)
                           Buffers: shared hit=1681925 read=29747
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.045..1543.602 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231720 read=3834
                           ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.015..12395.337 rows=2609129 loops=1)
                                 Buffers: shared hit=1450205 read=25913
         ->  Sort  (cost=909188.53..911635.07 rows=31511509 width=20) (actual time=105099.243..109833.281 rows=39128853 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 4206071kB
               Buffers: shared hit=6605165 read=434097
               ->  Merge Join  (cost=0.35..787304.76 rows=31511509 width=20) (actual time=11.130..84639.518 rows=36417493 loops=1)
                     Merge Cond: (an.person_id = ci.person_id)
                     Buffers: shared hit=6605165 read=434097
                     ->  Merge Join  (cost=0.06..91435.96 rows=901343 width=24) (actual time=11.069..12429.074 rows=772582 loops=1)
                           Merge Cond: (an.person_id = n.id)
                           Buffers: shared hit=4132118 read=82420
                           ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.019..945.330 rows=772582 loops=1)
                                 Buffers: shared hit=278770 read=13503
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.015..10060.852 rows=4061927 loops=1)
                                 Buffers: shared hit=3853348 read=68917
                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.047..54267.464 rows=56379091 loops=1)
                           Buffers: shared hit=2473047 read=351677
 Planning Time: 7120.432 ms
 Execution Time: 145780.486 ms
(64 rows)


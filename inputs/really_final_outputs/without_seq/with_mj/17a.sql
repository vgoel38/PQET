                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=911370.83..911370.83 rows=1 width=64) (actual time=106669.564..106669.564 rows=1 loops=1)
   Buffers: shared hit=9899878 read=530088
   ->  Merge Join  (cost=887543.35..911370.82 rows=65 width=15) (actual time=96579.951..106597.724 rows=258289 loops=1)
         Merge Cond: (t.id = ci.movie_id)
         Buffers: shared hit=9899878 read=530088
         ->  Merge Join  (cost=123051.42..146414.34 rows=68 width=12) (actual time=19846.992..29450.702 rows=68316 loops=1)
               Merge Cond: (t.id = mc.movie_id)
               Buffers: shared hit=4191721 read=109422
               ->  Merge Join  (cost=55525.72..78742.36 rows=34 width=8) (actual time=4541.753..14314.861 rows=41839 loops=1)
                     Merge Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=2509796 read=79675
                     ->  Sort  (cost=55525.51..55525.52 rows=34 width=4) (actual time=4181.966..4188.231 rows=41839 loops=1)
                           Sort Key: mk.movie_id
                           Sort Method: quicksort  Memory: 3498kB
                           Buffers: shared hit=21647 read=36814
                           ->  Merge Join  (cost=54823.01..55525.49 rows=34 width=4) (actual time=4145.754..4158.386 rows=41840 loops=1)
                                 Merge Cond: (k.id = mk.keyword_id)
                                 Buffers: shared hit=21643 read=36814
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=28.590..28.590 rows=1 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=28.567..28.570 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                 ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=4083.129..4107.675 rows=163762 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 408668kB
                                       Buffers: shared hit=21643 read=36810
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.046..2417.352 rows=4523930 loops=1)
                                             Buffers: shared hit=21643 read=36810
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=4) (actual time=0.022..9792.107 rows=2525756 loops=1)
                           Buffers: shared hit=2488149 read=42861
               ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14854.443..14980.921 rows=1153839 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 103237kB
                     Buffers: shared hit=1681925 read=29747
                     ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.060..14339.760 rows=1153798 loops=1)
                           Merge Cond: (cn.id = mc.company_id)
                           Buffers: shared hit=1681925 read=29747
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.043..1585.929 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231720 read=3834
                           ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.013..12158.746 rows=2609129 loops=1)
                                 Buffers: shared hit=1450205 read=25913
         ->  Sort  (cost=764491.93..764724.20 rows=2991663 width=19) (actual time=76302.093..76732.266 rows=3306983 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 328583kB
               Buffers: shared hit=5708157 read=420666
               ->  Merge Join  (cost=0.03..754498.42 rows=2991663 width=19) (actual time=2552.513..74563.189 rows=3118033 loops=1)
                     Merge Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5708157 read=420666
                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.018..59649.882 rows=36244344 loops=1)
                           Buffers: shared hit=1851766 read=351677
                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=343991 width=19) (actual time=124.858..4691.776 rows=334765 loops=1)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 3730356
                           Buffers: shared hit=3856391 read=68989
 Planning Time: 5388.426 ms
 Execution Time: 106780.192 ms
(61 rows)


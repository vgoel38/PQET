                                                                                                   QUERY PLAN                                                                                                    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1044821.48..1044821.48 rows=1 width=32) (actual time=120710.518..120710.519 rows=1 loops=1)
   Buffers: shared hit=9896823 read=530015
   ->  Merge Join  (cost=997246.03..1044821.42 rows=789 width=15) (actual time=114911.328..120251.262 rows=2832555 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=9896823 read=530015
         ->  Sort  (cost=997245.98..997246.04 rows=789 width=4) (actual time=114895.026..115366.609 rows=2832555 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 231081kB
               Buffers: shared hit=6043487 read=461099
               ->  Merge Join  (cost=968253.81..997244.80 rows=789 width=4) (actual time=95027.102..113874.846 rows=2832555 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=6043483 read=461099
                     ->  Merge Join  (cost=123051.42..146414.34 rows=68 width=12) (actual time=19952.857..29692.950 rows=68316 loops=1)
                           Merge Cond: (t.id = mc.movie_id)
                           Buffers: shared hit=4191717 read=109422
                           ->  Merge Join  (cost=55525.72..78742.36 rows=34 width=8) (actual time=4715.160..14623.389 rows=41839 loops=1)
                                 Merge Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2509792 read=79675
                                 ->  Sort  (cost=55525.51..55525.52 rows=34 width=4) (actual time=4323.735..4329.906 rows=41839 loops=1)
                                       Sort Key: mk.movie_id
                                       Sort Method: quicksort  Memory: 3498kB
                                       Buffers: shared hit=21643 read=36814
                                       ->  Merge Join  (cost=54823.01..55525.49 rows=34 width=4) (actual time=4298.040..4310.853 rows=41840 loops=1)
                                             Merge Cond: (k.id = mk.keyword_id)
                                             Buffers: shared hit=21643 read=36814
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=18.993..18.993 rows=1 loops=1)
                                                   Sort Key: k.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=18.966..18.969 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                                             ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=4245.305..4269.875 rows=163762 loops=1)
                                                   Sort Key: mk.keyword_id
                                                   Sort Method: quicksort  Memory: 408668kB
                                                   Buffers: shared hit=21643 read=36810
                                                   ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.035..2444.428 rows=4523930 loops=1)
                                                         Buffers: shared hit=21643 read=36810
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=4) (actual time=0.024..9964.300 rows=2525756 loops=1)
                                       Buffers: shared hit=2488149 read=42861
                           ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14786.802..14918.303 rows=1153839 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 103237kB
                                 Buffers: shared hit=1681925 read=29747
                                 ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.062..14265.875 rows=1153798 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=1681925 read=29747
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.044..1414.425 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231720 read=3834
                                       ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.014..12280.847 rows=2609129 loops=1)
                                             Buffers: shared hit=1450205 read=25913
                     ->  Sort  (cost=845202.39..848016.39 rows=36244344 width=8) (actual time=74574.588..79317.783 rows=38314797 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 3271818kB
                           Buffers: shared hit=1851766 read=351677
                           ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.022..53081.697 rows=36244344 loops=1)
                                 Buffers: shared hit=1851766 read=351677
         ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=0.023..3637.096 rows=4061913 loops=1)
               Buffers: shared hit=3853336 read=68916
 Planning Time: 5313.679 ms
 Execution Time: 120840.361 ms
(63 rows)


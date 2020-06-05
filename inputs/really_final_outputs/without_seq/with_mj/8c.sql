                                                                                                QUERY PLAN                                                                                                
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=506667.52..506667.52 rows=1 width=64) (actual time=55276.199..55276.199 rows=1 loops=1)
   Buffers: shared hit=7486534 read=399419
   ->  Merge Join  (cost=427497.96..506384.76 rows=1820954 width=33) (actual time=47514.954..54575.169 rows=2487611 loops=1)
         Merge Cond: (a1.person_id = ci.person_id)
         Buffers: shared hit=7486534 read=399419
         ->  Merge Join  (cost=0.06..91435.96 rows=901343 width=24) (actual time=0.325..5891.906 rows=656209 loops=1)
               Merge Cond: (a1.person_id = n1.id)
               Buffers: shared hit=3316453 read=68009
               ->  Index Scan using aka_name_idx_person on aka_name a1  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.028..490.266 rows=656209 loops=1)
                     Buffers: shared hit=234644 read=13185
               ->  Index Scan using name_pkey on name n1  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.028..4624.762 rows=3228374 loops=1)
                     Buffers: shared hit=3081809 read=54824
         ->  Sort  (cost=427497.90..427660.51 rows=2094450 width=21) (actual time=47478.281..47866.160 rows=3411048 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 189325kB
               Buffers: shared hit=4170081 read=331410
               ->  Merge Join  (cost=396644.45..420668.78 rows=2094450 width=21) (actual time=34807.107..46738.978 rows=1970658 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4170077 read=331410
                     ->  Merge Join  (cost=67525.72..90951.87 rows=941996 width=25) (actual time=14865.258..25577.200 rows=1153798 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=4170073 read=72608
                           ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14844.918..15002.941 rows=1153798 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 103237kB
                                 Buffers: shared hit=1681925 read=29747
                                 ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.105..14332.159 rows=1153798 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=1681925 read=29747
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.071..1495.659 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231720 read=3834
                                       ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.028..12237.806 rows=2609129 loops=1)
                                             Buffers: shared hit=1450205 read=25913
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.021..9814.212 rows=2525744 loops=1)
                                 Buffers: shared hit=2488148 read=42861
                     ->  Sort  (cost=329118.70..329353.20 rows=3020362 width=8) (actual time=19893.679..20293.213 rows=3863824 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 226224kB
                           Buffers: shared hit=4 read=258802
                           ->  Merge Join  (cost=0.02..319022.87 rows=3020362 width=8) (actual time=16959.735..18757.129 rows=2728943 loops=1)
                                 Merge Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=4 read=258802
                                 ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..315990.85 rows=36244344 width=12) (actual time=29.220..13069.654 rows=26859642 loops=1)
                                       Buffers: shared hit=2 read=258802
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.021..0.026 rows=1 loops=1)
                                       Filter: ((role)::text = 'writer'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=2
 Planning Time: 4157.318 ms
 Execution Time: 55372.661 ms
(52 rows)


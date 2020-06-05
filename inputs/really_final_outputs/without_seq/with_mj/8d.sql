                                                                                                QUERY PLAN                                                                                                
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=506667.52..506667.52 rows=1 width=64) (actual time=51792.833..51792.833 rows=1 loops=1)
   Buffers: shared hit=7706737 read=420056
   ->  Merge Join  (cost=427497.96..506384.76 rows=1820954 width=33) (actual time=45276.261..51693.855 rows=323005 loops=1)
         Merge Cond: (an1.person_id = ci.person_id)
         Buffers: shared hit=7706737 read=420056
         ->  Merge Join  (cost=0.06..91435.96 rows=901343 width=24) (actual time=0.346..6228.166 rows=688852 loops=1)
               Merge Cond: (an1.person_id = n1.id)
               Buffers: shared hit=3536656 read=71702
               ->  Index Scan using aka_name_idx_person on aka_name an1  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.027..518.740 rows=688852 loops=1)
                     Buffers: shared hit=251624 read=13275
               ->  Index Scan using name_pkey on name n1  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.027..4863.981 rows=3441946 loops=1)
                     Buffers: shared hit=3285032 read=58427
         ->  Sort  (cost=427497.90..427660.51 rows=2094450 width=21) (actual time=45237.617..45281.705 rows=445950 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 31926kB
               Buffers: shared hit=4170081 read=348354
               ->  Merge Join  (cost=396644.45..420668.78 rows=2094450 width=21) (actual time=35089.812..45129.007 rows=285538 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4170077 read=348354
                     ->  Merge Join  (cost=67525.72..90951.87 rows=941996 width=25) (actual time=14756.862..24523.017 rows=1153798 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=4170073 read=72608
                           ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14731.174..14885.759 rows=1153798 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 103237kB
                                 Buffers: shared hit=1681925 read=29747
                                 ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.109..14207.496 rows=1153798 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=1681925 read=29747
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.075..1383.295 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231720 read=3834
                                       ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.028..12241.857 rows=2609129 loops=1)
                                             Buffers: shared hit=1450205 read=25913
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.023..8890.754 rows=2525744 loops=1)
                                 Buffers: shared hit=2488148 read=42861
                     ->  Sort  (cost=329118.70..329353.20 rows=3020362 width=8) (actual time=20332.942..20382.724 rows=461760 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 25245kB
                           Buffers: shared hit=4 read=275746
                           ->  Merge Join  (cost=0.02..319022.87 rows=3020362 width=8) (actual time=20057.781..20218.777 rows=276403 loops=1)
                                 Merge Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=4 read=275746
                                 ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..315990.85 rows=36244344 width=12) (actual time=29.195..14419.337 rows=28808108 loops=1)
                                       Buffers: shared hit=2 read=275746
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.024..0.028 rows=1 loops=1)
                                       Filter: ((role)::text = 'costume designer'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=2
 Planning Time: 4007.760 ms
 Execution Time: 51869.702 ms
(52 rows)


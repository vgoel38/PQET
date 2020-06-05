                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=485406.53..485406.53 rows=1 width=64) (actual time=60685.373..60685.373 rows=1 loops=1)
   Buffers: shared hit=6796191 read=480520
   ->  Merge Join  (cost=406809.69..485406.53 rows=1 width=33) (actual time=60133.791..60685.314 rows=62 loops=1)
         Merge Cond: (an1.person_id = ci.person_id)
         Buffers: shared hit=6796191 read=480520
         ->  Merge Join  (cost=0.03..91699.23 rows=4689 width=24) (actual time=40.261..5444.086 rows=2154 loops=1)
               Merge Cond: (an1.person_id = n1.id)
               Buffers: shared hit=2788524 read=58877
               ->  Index Scan using aka_name_idx_person on aka_name an1  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.026..564.356 rows=578753 loops=1)
                     Buffers: shared hit=202613 read=12974
               ->  Index Scan using name_pkey on name n1  (cost=0.01..49135.93 rows=21680 width=4) (actual time=31.015..4784.414 rows=11996 loops=1)
                     Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                     Rows Removed by Filter: 2688468
                     Buffers: shared hit=2585911 read=45903
         ->  Sort  (cost=406809.66..406809.66 rows=3 width=21) (actual time=55238.423..55239.630 rows=7462 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 750kB
               Buffers: shared hit=4007667 read=421643
               ->  Merge Join  (cost=383593.58..406809.66 rows=3 width=21) (actual time=45118.171..55212.479 rows=7438 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4007663 read=421643
                     ->  Merge Join  (cost=64756.16..87971.01 rows=458 width=25) (actual time=14114.707..24214.673 rows=48291 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=4007655 read=69961
                           ->  Sort  (cost=64756.14..64756.18 rows=458 width=4) (actual time=13664.748..13673.073 rows=48291 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 3802kB
                                 Buffers: shared hit=1520115 read=27104
                                 ->  Merge Join  (cost=0.03..64755.51 rows=458 width=4) (actual time=10628.846..13627.904 rows=48328 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=1520115 read=27104
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=6752 width=4) (actual time=143.831..959.194 rows=2418 loops=1)
                                             Filter: ((country_code)::text = '[jp]'::text)
                                             Rows Removed by Filter: 68494
                                             Buffers: shared hit=69910 read=1191
                                       ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..60156.52 rows=15927 width=8) (actual time=961.554..12654.184 rows=48897 loops=1)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                                             Rows Removed by Filter: 2560232
                                             Buffers: shared hit=1450205 read=25913
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.022..10175.645 rows=2524996 loops=1)
                                 Buffers: shared hit=2487540 read=42857
                     ->  Sort  (cost=318837.41..318838.02 rows=7772 width=8) (actual time=30980.309..30984.771 rows=37774 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 3170kB
                           Buffers: shared hit=8 read=351682
                           ->  Merge Join  (cost=0.02..318821.82 rows=7772 width=8) (actual time=10027.509..30956.181 rows=34848 loops=1)
                                 Merge Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=8 read=351682
                                 ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..318804.85 rows=93269 width=12) (actual time=73.929..30923.638 rows=93095 loops=1)
                                       Filter: (note = '(voice: English version)'::text)
                                       Rows Removed by Filter: 36151249
                                       Buffers: shared hit=6 read=351682
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2
 Planning Time: 4431.465 ms
 Execution Time: 60709.315 ms
(58 rows)


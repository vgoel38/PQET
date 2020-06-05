                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=415572.10..415572.10 rows=1 width=64) (actual time=25167.350..25167.350 rows=1 loops=1)
   Buffers: shared hit=2704446 read=199000
   ->  Merge Join  (cost=379333.35..415572.08 rows=100 width=33) (actual time=25167.316..25167.316 rows=0 loops=1)
         Merge Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=2704446 read=199000
         ->  Sort  (cost=379333.34..379333.35 rows=205 width=21) (actual time=25167.315..25167.315 rows=0 loops=1)
               Sort Key: ci.person_role_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=2704446 read=199000
               ->  Merge Join  (cost=356086.66..379333.09 rows=205 width=21) (actual time=25167.248..25167.248 rows=0 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=2704442 read=199000
                     ->  Merge Join  (cost=36841.39..60088.99 rows=2341 width=25) (actual time=5000.571..14374.727 rows=1221 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=2704439 read=72568
                           ->  Sort  (cost=36841.37..36842.55 rows=15111 width=4) (actual time=4411.724..4413.534 rows=8518 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 797kB
                                 Buffers: shared hit=231725 read=29751
                                 ->  Merge Join  (cost=31805.32..36808.80 rows=15111 width=4) (actual time=3052.227..4408.547 rows=8790 loops=1)
                                       Merge Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231725 read=29751
                                       ->  Sort  (cost=31805.30..32007.88 rows=2609129 width=8) (actual time=2779.215..3122.647 rows=2608750 loops=1)
                                             Sort Key: mc.company_id
                                             Sort Method: quicksort  Memory: 220607kB
                                             Buffers: shared hit=5 read=25917
                                             ->  Merge Join  (cost=0.02..23169.60 rows=2609129 width=8) (actual time=10.958..1791.512 rows=2609129 loops=1)
                                                   Merge Cond: (ct.id = mc.company_type_id)
                                                   Buffers: shared hit=5 read=25917
                                                   ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.013..0.016 rows=3 loops=1)
                                                         Buffers: shared hit=2
                                                   ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=10.932..1181.975 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=25917
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=187.555..937.568 rows=1361 loops=1)
                                             Filter: ((country_code)::text = '[ru]'::text)
                                             Rows Removed by Filter: 233636
                                             Buffers: shared hit=231720 read=3834
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=40.936..9913.101 rows=389797 loops=1)
                                 Filter: (production_year > 2010)
                                 Rows Removed by Filter: 2120334
                                 Buffers: shared hit=2472714 read=42817
                     ->  Sort  (cost=319245.27..319254.52 rows=119151 width=8) (actual time=10792.265..10792.271 rows=13 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=3 read=126432
                           ->  Merge Join  (cost=0.02..318933.29 rows=119151 width=8) (actual time=2281.990..10792.192 rows=13 loops=1)
                                 Merge Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=3 read=126432
                                 ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..318804.85 rows=1429807 width=12) (actual time=2281.968..10792.101 rows=14 loops=1)
                                       Filter: (note ~~ '%(producer)%'::text)
                                       Rows Removed by Filter: 13491294
                                       Buffers: shared hit=1 read=126432
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.015..0.023 rows=1 loops=1)
                                       Filter: ((role)::text = 'actor'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=2
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (never executed)
 Planning Time: 2435.111 ms
 Execution Time: 25272.445 ms
(59 rows)


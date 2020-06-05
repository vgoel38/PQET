                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=417979.25..417979.25 rows=1 width=64) (actual time=31988.074..31988.074 rows=1 loops=1)
   Buffers: shared hit=4770204 read=223157
   ->  Merge Join  (cost=381740.53..417979.25 rows=4 width=33) (actual time=24431.990..31987.834 rows=104 loops=1)
         Merge Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=4770204 read=223157
         ->  Sort  (cost=381740.52..381740.52 rows=8 width=21) (actual time=24431.969..24432.022 rows=105 loops=1)
               Sort Key: ci.person_role_id
               Sort Method: quicksort  Memory: 33kB
               Buffers: shared hit=2719855 read=191456
               ->  Merge Join  (cost=358474.33..381740.52 rows=8 width=21) (actual time=19352.104..24431.792 rows=112 loops=1)
                     Merge Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=2719851 read=191456
                     ->  Merge Join  (cost=321632.95..344928.69 rows=729 width=29) (actual time=10329.120..20163.261 rows=5288 loops=1)
                           Merge Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=2488126 read=161705
                           ->  Sort  (cost=321632.92..321633.06 rows=1819 width=8) (actual time=9884.787..9888.875 rows=25874 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 1981kB
                                 Buffers: shared hit=3 read=118846
                                 ->  Merge Join  (cost=0.02..321629.86 rows=1819 width=8) (actual time=9.064..9856.706 rows=25874 loops=1)
                                       Merge Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=3 read=118846
                                       ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=21830 width=12) (actual time=9.046..9842.931 rows=25875 loops=1)
                                             Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                             Rows Removed by Filter: 12650017
                                             Buffers: shared hit=1 read=118846
                                       ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.012..0.020 rows=1 loops=1)
                                             Filter: ((role)::text = 'actor'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=2
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=24.722..10154.085 rows=1012556 loops=1)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1513024
                                 Buffers: shared hit=2488123 read=42859
                     ->  Sort  (cost=36841.37..36842.55 rows=15111 width=4) (actual time=4264.797..4266.411 rows=8823 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 797kB
                           Buffers: shared hit=231725 read=29751
                           ->  Merge Join  (cost=31805.32..36808.80 rows=15111 width=4) (actual time=2999.490..4261.616 rows=8790 loops=1)
                                 Merge Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=231725 read=29751
                                 ->  Sort  (cost=31805.30..32007.88 rows=2609129 width=8) (actual time=2724.911..3061.709 rows=2608750 loops=1)
                                       Sort Key: mc.company_id
                                       Sort Method: quicksort  Memory: 220607kB
                                       Buffers: shared hit=5 read=25917
                                       ->  Merge Join  (cost=0.02..23169.60 rows=2609129 width=8) (actual time=28.535..1733.114 rows=2609129 loops=1)
                                             Merge Cond: (ct.id = mc.company_type_id)
                                             Buffers: shared hit=5 read=25917
                                             ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.009..0.012 rows=3 loops=1)
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=28.514..1145.247 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=25917
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=179.219..865.642 rows=1361 loops=1)
                                       Filter: ((country_code)::text = '[ru]'::text)
                                       Rows Removed by Filter: 233636
                                       Buffers: shared hit=231720 read=3834
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.016..7305.251 rows=2077053 loops=1)
               Buffers: shared hit=2050349 read=31701
 Planning Time: 2640.088 ms
 Execution Time: 32087.184 ms
(60 rows)


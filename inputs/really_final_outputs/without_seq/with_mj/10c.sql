                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=425593.10..425593.10 rows=1 width=64) (actual time=44327.295..44327.295 rows=1 loops=1)
   Buffers: shared hit=2719889 read=424294
   ->  Merge Join  (cost=389228.00..425541.41 rows=332865 width=33) (actual time=44327.229..44327.235 rows=10 loops=1)
         Merge Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=2719889 read=424294
         ->  Sort  (cost=389227.99..389281.24 rows=685892 width=21) (actual time=44327.205..44327.207 rows=11 loops=1)
               Sort Key: ci.person_role_id
               Sort Method: quicksort  Memory: 74251kB
               Buffers: shared hit=2719885 read=424294
               ->  Merge Join  (cost=363345.12..387163.11 rows=685892 width=21) (actual time=33342.871..44158.210 rows=782104 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=2719881 read=424294
                     ->  Merge Join  (cost=39782.23..63323.95 rows=651653 width=25) (actual time=5068.159..15294.393 rows=596250 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=2719873 read=72612
                           ->  Sort  (cost=39782.20..39855.33 rows=941996 width=4) (actual time=5063.999..5238.287 rows=1153798 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 103237kB
                                 Buffers: shared hit=231725 read=29751
                                 ->  Merge Join  (cost=31805.32..36879.37 rows=941996 width=4) (actual time=2953.141..4616.361 rows=1153798 loops=1)
                                       Merge Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231725 read=29751
                                       ->  Sort  (cost=31805.30..32007.88 rows=2609129 width=8) (actual time=2953.106..3307.757 rows=2609129 loops=1)
                                             Sort Key: mc.company_id
                                             Sort Method: quicksort  Memory: 220607kB
                                             Buffers: shared hit=5 read=25917
                                             ->  Merge Join  (cost=0.02..23169.60 rows=2609129 width=8) (actual time=11.094..1884.124 rows=2609129 loops=1)
                                                   Merge Cond: (ct.id = mc.company_type_id)
                                                   Buffers: shared hit=5 read=25917
                                                   ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.016..0.019 rows=3 loops=1)
                                                         Buffers: shared hit=2
                                                   ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=11.067..1269.226 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=25917
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.029..844.989 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231720 read=3834
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.025..9581.133 rows=1748441 loops=1)
                                 Filter: (production_year > 1990)
                                 Rows Removed by Filter: 777303
                                 Buffers: shared hit=2488148 read=42861
                     ->  Sort  (cost=323562.86..323673.87 rows=1429807 width=8) (actual time=28222.323..28441.397 rows=1875007 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 116439kB
                           Buffers: shared hit=8 read=351682
                           ->  Merge Join  (cost=0.02..319023.14 rows=1429807 width=8) (actual time=2311.249..27559.129 rows=1435439 loops=1)
                                 Merge Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=8 read=351682
                                 ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..318804.85 rows=1429807 width=12) (actual time=2311.221..27196.686 rows=1435439 loops=1)
                                       Filter: (note ~~ '%(producer)%'::text)
                                       Rows Removed by Filter: 34808905
                                       Buffers: shared hit=6 read=351682
                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=12 width=4) (actual time=0.016..0.020 rows=3 loops=1)
                                       Buffers: shared hit=2
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.019..0.019 rows=1 loops=1)
               Buffers: shared hit=4
 Planning Time: 2500.849 ms
 Execution Time: 44391.501 ms
(58 rows)


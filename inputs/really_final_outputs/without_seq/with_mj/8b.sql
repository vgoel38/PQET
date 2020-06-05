                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=486422.19..486422.19 rows=1 width=64) (actual time=58653.339..58653.339 rows=1 loops=1)
   Buffers: shared hit=6787417 read=480350
   ->  Merge Join  (cost=407825.35..486422.19 rows=1 width=33) (actual time=58652.201..58653.282 rows=6 loops=1)
         Merge Cond: (an.person_id = ci.person_id)
         Buffers: shared hit=6787417 read=480350
         ->  Merge Join  (cost=0.03..91699.23 rows=4689 width=24) (actual time=40.388..5420.517 rows=2105 loops=1)
               Merge Cond: (an.person_id = n.id)
               Buffers: shared hit=2777730 read=58694
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.040..553.684 rows=576728 loops=1)
                     Buffers: shared hit=201918 read=12968
               ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=21680 width=4) (actual time=30.808..4771.683 rows=11663 loops=1)
                     Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                     Rows Removed by Filter: 2678222
                     Buffers: shared hit=2575812 read=45726
         ->  Sort  (cost=407825.33..407825.33 rows=1 width=21) (actual time=53232.259..53232.279 rows=26 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 27kB
               Buffers: shared hit=4009687 read=421656
               ->  Merge Join  (cost=383996.89..407825.33 rows=1 width=21) (actual time=50672.283..53209.452 rows=25 loops=1)
                     Merge Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=4009683 read=421656
                     ->  Merge Join  (cost=383996.87..383998.08 rows=1 width=12) (actual time=43891.315..43899.013 rows=925 loops=1)
                           Merge Cond: (ci.movie_id = mc.movie_id)
                           Buffers: shared hit=1519809 read=378752
                           ->  Sort  (cost=318837.41..318838.02 rows=7772 width=8) (actual time=30400.007..30402.366 rows=32758 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 3170kB
                                 Buffers: shared hit=8 read=351682
                                 ->  Merge Join  (cost=0.02..318821.82 rows=7772 width=8) (actual time=10147.210..30381.459 rows=34848 loops=1)
                                       Merge Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=8 read=351682
                                       ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..318804.85 rows=93269 width=12) (actual time=22.946..30349.767 rows=93095 loops=1)
                                             Filter: (note = '(voice: English version)'::text)
                                             Rows Removed by Filter: 36151249
                                             Buffers: shared hit=6 read=351682
                                       ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=2
                           ->  Sort  (cost=65159.46..65159.46 rows=21 width=4) (actual time=13491.298..13491.920 rows=7988 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 783kB
                                 Buffers: shared hit=1519801 read=27070
                                 ->  Merge Join  (cost=0.03..65159.45 rows=21 width=4) (actual time=10485.715..13486.966 rows=8495 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=1519801 read=27070
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=6752 width=4) (actual time=150.501..796.745 rows=2408 loops=1)
                                             Filter: ((country_code)::text = '[jp]'::text)
                                             Rows Removed by Filter: 68157
                                             Buffers: shared hit=69596 read=1157
                                       ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..60561.66 rows=720 width=8) (actual time=6504.550..12686.492 rows=8569 loops=1)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                             Rows Removed by Filter: 2600560
                                             Buffers: shared hit=1450205 read=25913
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23827.24 rows=34 width=21) (actual time=6774.263..9310.346 rows=7 loops=1)
                           Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                           Rows Removed by Filter: 2528305
                           Buffers: shared hit=2489874 read=42904
 Planning Time: 4495.901 ms
 Execution Time: 58678.960 ms
(60 rows)


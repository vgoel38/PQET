                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=528129.25..528129.25 rows=1 width=128) (actual time=65157.947..65157.947 rows=1 loops=1)
   Buffers: shared hit=11274472 read=477510
   ->  Merge Join  (cost=443756.32..528129.25 rows=1 width=64) (actual time=62462.312..65157.856 rows=40 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=11274472 read=477510
         ->  Merge Join  (cost=443756.31..480238.39 rows=130 width=57) (actual time=58805.071..60411.376 rows=19501 loops=1)
               Merge Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=7335868 read=406830
               ->  Sort  (cost=443756.29..443756.30 rows=150 width=37) (actual time=58296.207..58297.401 rows=6878 loops=1)
                     Sort Key: ci.person_id
                     Sort Method: quicksort  Memory: 825kB
                     Buffers: shared hit=7130050 read=393857
                     ->  Merge Join  (cost=407517.38..443756.12 rows=150 width=37) (actual time=48338.757..58287.629 rows=6893 loops=1)
                           Merge Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7130046 read=393857
                           ->  Sort  (cost=407517.36..407517.39 rows=309 width=25) (actual time=48262.156..48263.600 rows=6894 loops=1)
                                 Sort Key: ci.person_role_id
                                 Sort Method: quicksort  Memory: 796kB
                                 Buffers: shared hit=4030335 read=346246
                                 ->  Merge Join  (cost=384073.95..407516.97 rows=309 width=25) (actual time=38779.754..48258.829 rows=7565 loops=1)
                                       Merge Cond: (t.id = ci.movie_id)
                                       Buffers: shared hit=4030335 read=346246
                                       ->  Merge Join  (cost=65054.36..88510.85 rows=7062 width=25) (actual time=14731.525..24739.207 rows=47009 loops=1)
                                             Merge Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=4030330 read=70382
                                             ->  Sort  (cost=65054.34..65057.05 rows=34817 width=4) (actual time=14436.919..14463.285 rows=177065 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 14444kB
                                                   Buffers: shared hit=1542183 read=27522
                                                   ->  Merge Join  (cost=0.03..64972.77 rows=34817 width=4) (actual time=0.109..14354.400 rows=177065 loops=1)
                                                         Merge Cond: (cn.id = mc.company_id)
                                                         Buffers: shared hit=1542183 read=27522
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.068..952.757 rows=34630 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 58745
                                                               Buffers: shared hit=91978 read=1609
                                                         ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..60359.09 rows=96436 width=8) (actual time=0.035..13344.048 rows=198519 loops=1)
                                                               Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                               Rows Removed by Filter: 2410610
                                                               Buffers: shared hit=1450205 read=25913
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=512825 width=21) (actual time=182.333..10165.284 rows=512717 loops=1)
                                                   Filter: ((production_year >= 2007) AND (production_year <= 2010))
                                                   Rows Removed by Filter: 2012994
                                                   Buffers: shared hit=2488147 read=42860
                                       ->  Sort  (cost=319019.59..319024.20 rows=59356 width=12) (actual time=23453.502..23480.763 rows=224962 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 16583kB
                                             Buffers: shared hit=5 read=275864
                                             ->  Merge Join  (cost=0.02..318873.44 rows=59356 width=12) (actual time=9884.780..23309.870 rows=222686 loops=1)
                                                   Merge Cond: (ci.role_id = rt.id)
                                                   Buffers: shared hit=5 read=275864
                                                   ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..318804.85 rows=712274 width=16) (actual time=29.573..23089.884 rows=713570 loops=1)
                                                         Filter: (note = '(voice)'::text)
                                                         Rows Removed by Filter: 28108701
                                                         Buffers: shared hit=3 read=275864
                                                   ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.018..0.029 rows=1 loops=1)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 11
                                                         Buffers: shared hit=2
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.016..9642.270 rows=3139780 loops=1)
                                 Buffers: shared hit=3099711 read=47611
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.014..1947.703 rows=595980 loops=1)
                     Buffers: shared hit=205818 read=12973
         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=2762 width=19) (actual time=1985.992..4743.410 rows=5409 loops=1)
               Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 4162082
               Buffers: shared hit=3938604 read=70680
 Planning Time: 4581.812 ms
 Execution Time: 65183.239 ms
(69 rows)


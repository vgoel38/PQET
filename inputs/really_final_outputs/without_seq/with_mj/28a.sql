                                                                                                                                                    QUERY PLAN                                                                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=726639.41..726639.41 rows=1 width=96) (actual time=33345.418..33345.418 rows=1 loops=1)
   Buffers: shared hit=2681955 read=265484
   ->  Merge Join  (cost=726630.23..726639.41 rows=1 width=42) (actual time=33342.905..33344.028 rows=4803 loops=1)
         Merge Cond: (ct.id = mc.company_type_id)
         Buffers: shared hit=2681955 read=265484
         ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.011..0.013 rows=2 loops=1)
               Buffers: shared hit=2
         ->  Sort  (cost=726630.23..726630.23 rows=1 width=46) (actual time=33342.887..33343.102 rows=4803 loops=1)
               Sort Key: mc.company_type_id
               Sort Method: quicksort  Memory: 665kB
               Buffers: shared hit=2681953 read=265484
               ->  Merge Join  (cost=722023.24..726630.23 rows=1 width=46) (actual time=32976.873..33336.308 rows=4803 loops=1)
                     Merge Cond: (cn.id = mc.company_id)
                     Buffers: shared hit=2681949 read=265484
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=35.099..389.332 rows=35831 loops=1)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 28004
                           Buffers: shared hit=62870 read=1134
                     ->  Sort  (cost=722023.22..722023.22 rows=1 width=31) (actual time=32939.986..32940.975 rows=4955 loops=1)
                           Sort Key: mc.company_id
                           Sort Method: quicksort  Memory: 584kB
                           Buffers: shared hit=2619079 read=264350
                           ->  Merge Join  (cost=722000.98..722023.22 rows=1 width=31) (actual time=32897.426..32938.336 rows=4955 loops=1)
                                 Merge Cond: (t.id = mc.movie_id)
                                 Buffers: shared hit=2619079 read=264350
                                 ->  Sort  (cost=698437.37..698437.37 rows=1 width=43) (actual time=30844.170..30844.223 rows=432 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 61kB
                                       Buffers: shared hit=2619076 read=238433
                                       ->  Merge Join  (cost=698428.18..698437.37 rows=1 width=43) (actual time=30843.035..30843.584 rows=432 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=2619076 read=238433
                                             ->  Sort  (cost=698428.18..698428.18 rows=1 width=47) (actual time=30843.004..30843.084 rows=484 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 67kB
                                                   Buffers: shared hit=2619074 read=238433
                                                   ->  Merge Join  (cost=698428.18..698428.18 rows=1 width=47) (actual time=30834.851..30842.412 rows=484 loops=1)
                                                         Merge Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=2619074 read=238433
                                                         ->  Sort  (cost=698403.65..698403.65 rows=3 width=51) (actual time=30781.904..30784.879 rows=12323 loops=1)
                                                               Sort Key: mk.keyword_id
                                                               Sort Method: quicksort  Memory: 10231kB
                                                               Buffers: shared hit=2619066 read=238423
                                                               ->  Merge Join  (cost=698403.59..698403.65 rows=3 width=51) (actual time=30726.296..30750.007 rows=70760 loops=1)
                                                                     Merge Cond: (it.id = mi_idx.info_type_id)
                                                                     Buffers: shared hit=2619066 read=238423
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.075..0.076 rows=1 loops=1)
                                                                           Sort Key: it.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.055..0.056 rows=1 loops=1)
                                                                                 Index Cond: ((info)::text = 'rating'::text)
                                                                                 Buffers: shared hit=1 read=1
                                                                     ->  Sort  (cost=698397.47..698397.49 rows=339 width=55) (actual time=30691.443..30708.374 rows=214010 loops=1)
                                                                           Sort Key: mi_idx.info_type_id
                                                                           Sort Method: quicksort  Memory: 34047kB
                                                                           Buffers: shared hit=2619065 read=238422
                                                                           ->  Merge Join  (cost=662862.65..698397.02 rows=339 width=55) (actual time=18341.165..30564.792 rows=217021 loops=1)
                                                                                 Merge Cond: (t.id = mi_idx.movie_id)
                                                                                 Buffers: shared hit=2619065 read=238422
                                                                                 ->  Merge Join  (cost=662862.64..686191.06 rows=638 width=41) (actual time=18314.214..28800.871 rows=78596 loops=1)
                                                                                       Merge Cond: (mi.movie_id = t.id)
                                                                                       Buffers: shared hit=2595768 read=226213
                                                                                       ->  Sort  (cost=662862.62..662862.71 rows=1167 width=16) (actual time=17645.136..17678.906 rows=353213 loops=1)
                                                                                             Sort Key: mi.movie_id
                                                                                             Sort Method: quicksort  Memory: 28845kB
                                                                                             Buffers: shared hit=107989 read=183355
                                                                                             ->  Merge Join  (cost=662854.33..662860.78 rows=1167 width=16) (actual time=17443.531..17544.320 rows=353213 loops=1)
                                                                                                   Merge Cond: (cc.status_id = cct.id)
                                                                                                   Buffers: shared hit=107989 read=183355
                                                                                                   ->  Sort  (cost=662851.27..662851.39 rows=1556 width=20) (actual time=17443.509..17460.678 rows=353214 loops=1)
                                                                                                         Sort Key: cc.status_id
                                                                                                         Sort Method: quicksort  Memory: 71873kB
                                                                                                         Buffers: shared hit=107987 read=183355
                                                                                                         ->  Merge Join  (cost=623211.56..662848.71 rows=1556 width=20) (actual time=14080.366..17247.656 rows=605390 loops=1)
                                                                                                               Merge Cond: (mi.movie_id = mk.movie_id)
                                                                                                               Buffers: shared hit=107987 read=183355
                                                                                                               ->  Sort  (cost=623211.55..623211.56 rows=132 width=12) (actual time=14065.195..14069.332 rows=28273 loops=1)
                                                                                                                     Sort Key: mi.movie_id
                                                                                                                     Sort Method: quicksort  Memory: 2094kB
                                                                                                                     Buffers: shared hit=86140 read=146548
                                                                                                                     ->  Merge Join  (cost=623211.31..623211.40 rows=132 width=12) (actual time=14047.604..14055.344 rows=28273 loops=1)
                                                                                                                           Merge Cond: (cc.subject_id = cct.id)
                                                                                                                           Buffers: shared hit=86140 read=146548
                                                                                                                           ->  Sort  (cost=623205.18..623205.23 rows=529 width=16) (actual time=14040.878..14044.117 rows=72825 loops=1)
                                                                                                                                 Sort Key: cc.subject_id
                                                                                                                                 Sort Method: quicksort  Memory: 6486kB
                                                                                                                                 Buffers: shared hit=86139 read=146547
                                                                                                                                 ->  Merge Join  (cost=619972.35..623204.44 rows=529 width=16) (actual time=13693.225..14019.084 rows=72825 loops=1)
                                                                                                                                       Merge Cond: (mi.movie_id = cc.movie_id)
                                                                                                                                       Buffers: shared hit=86139 read=146547
                                                                                                                                       ->  Sort  (cost=619972.34..619972.83 rows=6329 width=4) (actual time=13658.974..13697.763 rows=614251 loops=1)
                                                                                                                                             Sort Key: mi.movie_id
                                                                                                                                             Sort Method: quicksort  Memory: 53370kB
                                                                                                                                             Buffers: shared hit=566 read=145457
                                                                                                                                             ->  Merge Join  (cost=0.02..619959.93 rows=6329 width=4) (actual time=5953.982..13454.110 rows=614251 loops=1)
                                                                                                                                                   Merge Cond: (it.id = mi.info_type_id)
                                                                                                                                                   Buffers: shared hit=566 read=145457
                                                                                                                                                   ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.027..0.049 rows=1 loops=1)
                                                                                                                                                         Filter: ((info)::text = 'countries'::text)
                                                                                                                                                         Rows Removed by Filter: 112
                                                                                                                                                         Buffers: shared hit=2
                                                                                                                                                   ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=2879.649..13339.028 rows=700234 loops=1)
                                                                                                                                                         Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                                                                                                                         Rows Removed by Filter: 11752209
                                                                                                                                                         Buffers: shared hit=564 read=145457
                                                                                                                                       ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.022..188.156 rows=133516 loops=1)
                                                                                                                                             Buffers: shared hit=85573 read=1090
                                                                                                                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.030..0.030 rows=1 loops=1)
                                                                                                                                 Sort Key: cct.id
                                                                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                                                                 Buffers: shared hit=1 read=1
                                                                                                                                 ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.022..0.023 rows=1 loops=1)
                                                                                                                                       Index Cond: ((kind)::text = 'crew'::text)
                                                                                                                                       Buffers: shared hit=1 read=1
                                                                                                               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.014..2359.891 rows=4540237 loops=1)
                                                                                                                     Buffers: shared hit=21847 read=36807
                                                                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=3 width=4) (actual time=0.016..0.023 rows=3 loops=1)
                                                                                                         Filter: ((kind)::text <> 'complete+verified'::text)
                                                                                                         Rows Removed by Filter: 1
                                                                                                         Buffers: shared hit=2
                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=26.293..10851.054 rows=1380863 loops=1)
                                                                                             Filter: (production_year > 2000)
                                                                                             Rows Removed by Filter: 1144373
                                                                                             Buffers: shared hit=2487779 read=42858
                                                                                 ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=0.025..1505.160 rows=1552221 loops=1)
                                                                                       Filter: (info < '8.5'::text)
                                                                                       Rows Removed by Filter: 44000
                                                                                       Buffers: shared hit=23297 read=12209
                                                         ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=51.545..51.547 rows=3 loops=1)
                                                               Sort Key: k.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=26.585..51.525 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.024..0.032 rows=2 loops=1)
                                                   Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                   Rows Removed by Filter: 5
                                                   Buffers: shared hit=2
                                 ->  Sort  (cost=23563.61..23574.73 rows=143259 width=12) (actual time=2051.570..2065.057 rows=305238 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 26504kB
                                       Buffers: shared hit=3 read=25917
                                       ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=16.480..1919.896 rows=303271 loops=1)
                                             Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                             Rows Removed by Filter: 2305858
                                             Buffers: shared hit=3 read=25917
 Planning Time: 15022.387 ms
 Execution Time: 33384.643 ms
(150 rows)


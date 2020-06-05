                                                                                                             QUERY PLAN                                                                                                             
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1144786.05..1144786.05 rows=1 width=64) (actual time=83220.848..83220.849 rows=1 loops=1)
   Buffers: shared hit=9764141 read=652490
   ->  Merge Join  (cost=1060413.17..1144786.05 rows=1 width=32) (actual time=82648.562..83220.804 rows=15 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=9764141 read=652490
         ->  Merge Join  (cost=1060413.15..1096895.21 rows=1 width=25) (actual time=80183.168..80301.937 rows=36 loops=1)
               Merge Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=7300620 read=608765
               ->  Sort  (cost=1060413.14..1060413.14 rows=1 width=21) (actual time=78371.776..78371.790 rows=24 loops=1)
                     Sort Key: ci.person_id
                     Sort Method: quicksort  Memory: 26kB
                     Buffers: shared hit=7107795 read=595862
                     ->  Merge Join  (cost=1024174.43..1060413.14 rows=1 width=21) (actual time=69557.115..78367.057 rows=24 loops=1)
                           Merge Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7107791 read=595862
                           ->  Sort  (cost=1024174.42..1024174.42 rows=1 width=25) (actual time=69197.161..69197.172 rows=24 loops=1)
                                 Sort Key: ci.person_role_id
                                 Sort Method: quicksort  Memory: 27kB
                                 Buffers: shared hit=4126318 read=549138
                                 ->  Merge Join  (cost=1000528.77..1024174.42 rows=1 width=25) (actual time=67586.165..69197.120 rows=24 loops=1)
                                       Merge Cond: (ci.movie_id = t.id)
                                       Buffers: shared hit=4126318 read=549138
                                       ->  Sort  (cost=319019.59..319024.20 rows=59356 width=12) (actual time=23170.502..23185.273 rows=197278 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 16583kB
                                             Buffers: shared hit=5 read=275864
                                             ->  Merge Join  (cost=0.02..318873.44 rows=59356 width=12) (actual time=9877.689..23046.165 rows=222686 loops=1)
                                                   Merge Cond: (ci.role_id = rt.id)
                                                   Buffers: shared hit=5 read=275864
                                                   ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..318804.85 rows=712274 width=16) (actual time=20.261..22833.869 rows=713570 loops=1)
                                                         Filter: (note = '(voice)'::text)
                                                         Rows Removed by Filter: 28108701
                                                         Buffers: shared hit=3 read=275864
                                                   ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.026..0.034 rows=1 loops=1)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 11
                                                         Buffers: shared hit=2
                                       ->  Materialize  (cost=681509.17..705145.61 rows=1 width=29) (actual time=44379.714..45990.638 rows=19 loops=1)
                                             Buffers: shared hit=4126313 read=273274
                                             ->  Merge Join  (cost=681509.17..705145.61 rows=1 width=29) (actual time=44379.707..45990.625 rows=4 loops=1)
                                                   Merge Cond: (t.id = mc.movie_id)
                                                   Buffers: shared hit=4126313 read=273274
                                                   ->  Merge Join  (cost=616454.83..640085.86 rows=1 width=25) (actual time=22750.419..31385.868 rows=6 loops=1)
                                                         Merge Cond: (mi.movie_id = t.id)
                                                         Buffers: shared hit=2584130 read=245752
                                                         ->  Sort  (cost=616454.82..616454.86 rows=619 width=4) (actual time=21884.330..21888.004 rows=54275 loops=1)
                                                               Sort Key: mi.movie_id
                                                               Sort Method: quicksort  Memory: 6329kB
                                                               Buffers: shared hit=94256 read=202848
                                                               ->  Merge Join  (cost=0.02..616453.92 rows=619 width=4) (actual time=12864.092..21852.937 rows=69478 loops=1)
                                                                     Merge Cond: (it.id = mi.info_type_id)
                                                                     Buffers: shared hit=94256 read=202848
                                                                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.018..0.043 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'release dates'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=2
                                                                     ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=69999 width=8) (actual time=12864.065..21833.260 rows=69478 loops=1)
                                                                           Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                                                           Rows Removed by Filter: 14766242
                                                                           Buffers: shared hit=94254 read=202848
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=18 width=21) (actual time=865.291..9490.499 rows=7 loops=1)
                                                               Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                               Rows Removed by Filter: 2528305
                                                               Buffers: shared hit=2489874 read=42904
                                                   ->  Sort  (cost=65054.34..65057.05 rows=34817 width=4) (actual time=14582.615..14591.778 rows=111928 loops=1)
                                                         Sort Key: mc.movie_id
                                                         Sort Method: quicksort  Memory: 14444kB
                                                         Buffers: shared hit=1542183 read=27522
                                                         ->  Merge Join  (cost=0.03..64972.77 rows=34817 width=4) (actual time=0.034..14499.431 rows=177065 loops=1)
                                                               Merge Cond: (cn.id = mc.company_id)
                                                               Buffers: shared hit=1542183 read=27522
                                                               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.016..1059.348 rows=34630 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 58745
                                                                     Buffers: shared hit=91978 read=1609
                                                               ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..60359.09 rows=96436 width=8) (actual time=0.015..13380.505 rows=198519 loops=1)
                                                                     Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                                     Rows Removed by Filter: 2410610
                                                                     Buffers: shared hit=1450205 read=25913
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=4) (actual time=0.034..8805.759 rows=3020878 loops=1)
                                 Buffers: shared hit=2981473 read=46724
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.015..1770.650 rows=552930 loops=1)
                     Buffers: shared hit=192825 read=12903
         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=2762 width=19) (actual time=1941.256..2918.060 rows=4838 loops=1)
               Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 2567526
               Buffers: shared hit=2463521 read=43725
 Planning Time: 6869.186 ms
 Execution Time: 83242.191 ms
(89 rows)


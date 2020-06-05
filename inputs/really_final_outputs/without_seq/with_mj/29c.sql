                                                                                                                                                                  QUERY PLAN                                                                                                                                                                   
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1335570.70..1335570.70 rows=1 width=96) (actual time=132979.402..132979.402 rows=1 loops=1)
   Buffers: shared hit=10253610 read=829001
   ->  Merge Join  (cost=1312072.63..1335570.70 rows=1 width=48) (actual time=130871.555..132974.510 rows=16308 loops=1)
         Merge Cond: (mi.movie_id = t.id)
         Buffers: shared hit=10253610 read=829001
         ->  Sort  (cost=1312072.61..1312072.61 rows=1 width=51) (actual time=122964.028..122964.899 rows=16368 loops=1)
               Sort Key: mi.movie_id
               Sort Method: quicksort  Memory: 1663kB
               Buffers: shared hit=7844967 read=786710
               ->  Merge Join  (cost=1312072.61..1312072.61 rows=1 width=51) (actual time=122943.678..122948.610 rows=16368 loops=1)
                     Merge Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=7844963 read=786710
                     ->  Sort  (cost=1312066.49..1312066.49 rows=1 width=55) (actual time=122941.486..122942.742 rows=28202 loops=1)
                           Sort Key: cc.status_id
                           Sort Method: quicksort  Memory: 3431kB
                           Buffers: shared hit=7844961 read=786710
                           ->  Merge Join  (cost=1312066.49..1312066.49 rows=1 width=55) (actual time=122923.143..122932.364 rows=28202 loops=1)
                                 Merge Cond: (cc.subject_id = cct.id)
                                 Buffers: shared hit=7844961 read=786710
                                 ->  Sort  (cost=1312060.36..1312060.36 rows=1 width=59) (actual time=122923.109..122924.485 rows=28203 loops=1)
                                       Sort Key: cc.subject_id
                                       Sort Method: quicksort  Memory: 4760kB
                                       Buffers: shared hit=7844960 read=786709
                                       ->  Merge Join  (cost=1308829.29..1312060.36 rows=1 width=59) (actual time=122854.023..122912.569 rows=28382 loops=1)
                                             Merge Cond: (mi.movie_id = cc.movie_id)
                                             Buffers: shared hit=7844960 read=786709
                                             ->  Sort  (cost=1308829.28..1308829.28 rows=1 width=47) (actual time=122612.766..122615.910 rows=33386 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 4248kB
                                                   Buffers: shared hit=7763326 read=785634
                                                   ->  Merge Join  (cost=1308829.28..1308829.28 rows=1 width=47) (actual time=122588.352..122602.847 rows=33386 loops=1)
                                                         Merge Cond: (k.id = mk.keyword_id)
                                                         Buffers: shared hit=7763326 read=785634
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=20.259..20.260 rows=1 loops=1)
                                                               Sort Key: k.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared read=4
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=20.236..20.239 rows=1 loops=1)
                                                                     Index Cond: (keyword = 'computer-animation'::text)
                                                                     Buffers: shared read=4
                                                         ->  Sort  (cost=1308823.14..1308823.14 rows=12 width=51) (actual time=121714.498..122071.469 rows=2424832 loops=1)
                                                               Sort Key: mk.keyword_id
                                                               Sort Method: quicksort  Memory: 619653kB
                                                               Buffers: shared hit=7763326 read=785630
                                                               ->  Merge Join  (cost=1269186.11..1308823.13 rows=12 width=51) (actual time=115700.129..119853.061 rows=4547399 loops=1)
                                                                     Merge Cond: (mi.movie_id = mk.movie_id)
                                                                     Buffers: shared hit=7763326 read=785630
                                                                     ->  Sort  (cost=1269186.10..1269186.10 rows=1 width=43) (actual time=115520.515..115526.952 rows=69303 loops=1)
                                                                           Sort Key: mi.movie_id
                                                                           Sort Method: quicksort  Memory: 8614kB
                                                                           Buffers: shared hit=7687456 read=749743
                                                                           ->  Merge Join  (cost=1221293.06..1269186.10 rows=1 width=43) (actual time=113968.161..115499.933 rows=69303 loops=1)
                                                                                 Merge Cond: (ci.person_id = n.id)
                                                                                 Buffers: shared hit=7687456 read=749743
                                                                                 ->  Sort  (cost=1221293.04..1221293.05 rows=6 width=40) (actual time=112048.630..112240.415 rows=2386884 loops=1)
                                                                                       Sort Key: an.person_id
                                                                                       Sort Method: quicksort  Memory: 287227kB
                                                                                       Buffers: shared hit=5102905 read=703867
                                                                                       ->  Merge Join  (cost=1221292.93..1221293.04 rows=6 width=40) (actual time=110453.300..111253.535 rows=2386884 loops=1)
                                                                                             Merge Cond: (pi.info_type_id = it3.id)
                                                                                             Buffers: shared hit=5102905 read=703867
                                                                                             ->  Sort  (cost=1221286.81..1221286.86 rows=708 width=44) (actual time=110302.767..110519.540 rows=2954339 loops=1)
                                                                                                   Sort Key: pi.info_type_id
                                                                                                   Sort Method: quicksort  Memory: 839182kB
                                                                                                   Buffers: shared hit=5102904 read=703866
                                                                                                   ->  Merge Join  (cost=1216681.64..1221285.77 rows=708 width=44) (actual time=102097.050..107742.465 rows=7990466 loops=1)
                                                                                                         Merge Cond: (cn.id = mc.company_id)
                                                                                                         Buffers: shared hit=5102904 read=703866
                                                                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.042..939.959 rows=84800 loops=1)
                                                                                                               Filter: ((country_code)::text = '[us]'::text)
                                                                                                               Rows Removed by Filter: 149681
                                                                                                               Buffers: shared hit=231205 read=3833
                                                                                                         ->  Sort  (cost=1216681.63..1216681.78 rows=1960 width=48) (actual time=102097.000..103063.804 rows=20083360 loops=1)
                                                                                                               Sort Key: mc.company_id
                                                                                                               Sort Method: quicksort  Memory: 2606930kB
                                                                                                               Buffers: shared hit=4871699 read=700033
                                                                                                               ->  Merge Join  (cost=1148550.05..1216678.30 rows=1960 width=48) (actual time=84966.033..94183.907 rows=20083360 loops=1)
                                                                                                                     Merge Cond: (mc.movie_id = mi.movie_id)
                                                                                                                     Buffers: shared hit=4871699 read=700033
                                                                                                                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.030..2150.361 rows=2606203 loops=1)
                                                                                                                           Buffers: shared hit=1211939 read=25891
                                                                                                                     ->  Sort  (cost=1148550.04..1148550.08 rows=547 width=40) (actual time=84903.157..86216.624 rows=21622852 loops=1)
                                                                                                                           Sort Key: mi.movie_id
                                                                                                                           Sort Method: quicksort  Memory: 560050kB
                                                                                                                           Buffers: shared hit=3659760 read=674142
                                                                                                                           ->  Merge Join  (cost=1112310.43..1148549.27 rows=547 width=40) (actual time=70909.573..83084.468 rows=4579550 loops=1)
                                                                                                                                 Merge Cond: (chn.id = ci.person_role_id)
                                                                                                                                 Buffers: shared hit=3659760 read=674142
                                                                                                                                 ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.032..10156.741 rows=3139892 loops=1)
                                                                                                                                       Buffers: shared hit=3099823 read=47611
                                                                                                                                 ->  Sort  (cost=1112310.42..1112310.51 rows=1128 width=28) (actual time=70909.532..71362.527 rows=4579551 loops=1)
                                                                                                                                       Sort Key: ci.person_role_id
                                                                                                                                       Sort Method: quicksort  Memory: 560672kB
                                                                                                                                       Buffers: shared hit=559937 read=626531
                                                                                                                                       ->  Merge Join  (cost=1112306.47..1112308.65 rows=1128 width=28) (actual time=68051.591..69362.420 rows=4660009 loops=1)
                                                                                                                                             Merge Cond: (rt.id = ci.role_id)
                                                                                                                                             Buffers: shared hit=559937 read=626531
                                                                                                                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.050..0.051 rows=1 loops=1)
                                                                                                                                                   Sort Key: rt.id
                                                                                                                                                   Sort Method: quicksort  Memory: 25kB
                                                                                                                                                   Buffers: shared hit=1 read=1
                                                                                                                                                   ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.035..0.037 rows=1 loops=1)
                                                                                                                                                         Index Cond: ((role)::text = 'actress'::text)
                                                                                                                                                         Buffers: shared hit=1 read=1
                                                                                                                                             ->  Sort  (cost=1112300.34..1112301.39 rows=13536 width=32) (actual time=65798.615..66556.034 rows=17470637 loops=1)
                                                                                                                                                   Sort Key: ci.role_id
                                                                                                                                                   Sort Method: quicksort  Memory: 2151865kB
                                                                                                                                                   Buffers: shared hit=559936 read=626530
                                                                                                                                                   ->  Merge Join  (cost=940901.08..1112271.49 rows=13536 width=32) (actual time=47750.672..60448.102 rows=17477534 loops=1)
                                                                                                                                                         Merge Cond: (an.person_id = ci.person_id)
                                                                                                                                                         Buffers: shared hit=559936 read=626530
                                                                                                                                                         ->  Merge Join  (cost=0.03..199531.94 rows=5042528 width=12) (actual time=0.079..6549.746 rows=4431646 loops=1)
                                                                                                                                                               Merge Cond: (an.person_id = pi.person_id)
                                                                                                                                                               Buffers: shared hit=465673 read=72001
                                                                                                                                                               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.029..616.420 rows=730266 loops=1)
                                                                                                                                                                     Buffers: shared hit=266791 read=13388
                                                                                                                                                               ->  Materialize  (cost=0.01..156069.36 rows=2963664 width=8) (actual time=0.043..4252.380 rows=5374075 loops=1)
                                                                                                                                                                     Buffers: shared hit=198882 read=58613
                                                                                                                                                                     ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..155839.26 rows=2963664 width=8) (actual time=0.034..3507.036 rows=2853992 loops=1)
                                                                                                                                                                           Buffers: shared hit=198882 read=58613
                                                                                                                                                         ->  Sort  (cost=940901.06..940901.27 rows=2783 width=20) (actual time=47750.587..48741.979 rows=17652526 loops=1)
                                                                                                                                                               Sort Key: ci.person_id
                                                                                                                                                               Sort Method: quicksort  Memory: 43657kB
                                                                                                                                                               Buffers: shared hit=94263 read=554529
                                                                                                                                                               ->  Merge Join  (cost=940760.89..940896.11 rows=2783 width=20) (actual time=47305.221..47607.476 rows=409517 loops=1)
                                                                                                                                                                     Merge Cond: (mi.movie_id = ci.movie_id)
                                                                                                                                                                     Buffers: shared hit=94263 read=554529
                                                                                                                                                                     ->  Sort  (cost=616490.91..616491.22 rows=3969 width=4) (actual time=19402.966..19428.819 rows=451029 loops=1)
                                                                                                                                                                           Sort Key: mi.movie_id
                                                                                                                                                                           Sort Method: quicksort  Memory: 33431kB
                                                                                                                                                                           Buffers: shared hit=94256 read=202848
                                                                                                                                                                           ->  Merge Join  (cost=0.02..616483.54 rows=3969 width=4) (actual time=10284.184..19221.713 rows=451039 loops=1)
                                                                                                                                                                                 Merge Cond: (mi.info_type_id = it.id)
                                                                                                                                                                                 Buffers: shared hit=94256 read=202848
                                                                                                                                                                                 ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=448472 width=8) (actual time=87.902..19096.872 rows=451104 loops=1)
                                                                                                                                                                                       Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                                                                                                                                       Rows Removed by Filter: 14384616
                                                                                                                                                                                       Buffers: shared hit=94254 read=202848
                                                                                                                                                                                 ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
                                                                                                                                                                                       Filter: ((info)::text = 'release dates'::text)
                                                                                                                                                                                       Rows Removed by Filter: 15
                                                                                                                                                                                       Buffers: shared hit=2
                                                                                                                                                                     ->  Sort  (cost=324269.98..324337.19 rows=865636 width=16) (actual time=27902.217..27975.865 rows=942449 loops=1)
                                                                                                                                                                           Sort Key: ci.movie_id
                                                                                                                                                                           Sort Method: quicksort  Memory: 65239kB
                                                                                                                                                                           Buffers: shared hit=7 read=351681
                                                                                                                                                                           ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=20.536..27419.875 rows=867477 loops=1)
                                                                                                                                                                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                                                                                                                 Rows Removed by Filter: 35376867
                                                                                                                                                                                 Buffers: shared hit=7 read=351681
                                                                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.061..0.061 rows=1 loops=1)
                                                                                                   Sort Key: it3.id
                                                                                                   Sort Method: quicksort  Memory: 25kB
                                                                                                   Buffers: shared hit=1 read=1
                                                                                                   ->  Index Scan using info_type_info_key on info_type it3  (cost=0.00..6.13 rows=1 width=4) (actual time=0.050..0.050 rows=1 loops=1)
                                                                                                         Index Cond: ((info)::text = 'trivia'::text)
                                                                                                         Buffers: shared hit=1 read=1
                                                                                 ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1885.621..2880.402 rows=49944 loops=1)
                                                                                       Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                                                       Rows Removed by Filter: 2649014
                                                                                       Buffers: shared hit=2584551 read=45876
                                                                     ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2638.259 rows=8952516 loops=1)
                                                                           Buffers: shared hit=75870 read=35887
                                             ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.023..251.587 rows=155338 loops=1)
                                                   Buffers: shared hit=81634 read=1075
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.029..0.030 rows=1 loops=1)
                                       Sort Key: cct.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'cast'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                           Sort Key: cct.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=2
                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'complete+verified'::text)
                                 Buffers: shared hit=2
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=21) (actual time=22.496..9886.112 rows=1016154 loops=1)
               Filter: ((production_year >= 2000) AND (production_year <= 2010))
               Rows Removed by Filter: 1429485
               Buffers: shared hit=2408643 read=42291
 Planning Time: 19683.579 ms
 Execution Time: 133177.072 ms
(185 rows)


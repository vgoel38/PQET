                                                                                                                             QUERY PLAN                                                                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=721831.48..721831.48 rows=1 width=64) (actual time=41406.417..41406.417 rows=1 loops=1)
   Buffers: shared hit=2949078 read=313670
   ->  Merge Join  (cost=717227.71..721831.48 rows=1 width=27) (actual time=40993.210..41406.193 rows=618 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2949078 read=313670
         ->  Sort  (cost=717227.69..717227.69 rows=1 width=31) (actual time=40644.127..40644.171 rows=618 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 73kB
               Buffers: shared hit=2738955 read=309912
               ->  Merge Join  (cost=717218.51..717227.69 rows=1 width=31) (actual time=40643.653..40643.820 rows=618 loops=1)
                     Merge Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2738951 read=309912
                     ->  Sort  (cost=717218.51..717218.51 rows=1 width=35) (actual time=40643.646..40643.674 rows=618 loops=1)
                           Sort Key: mc.company_type_id
                           Sort Method: quicksort  Memory: 73kB
                           Buffers: shared hit=2738949 read=309912
                           ->  Merge Join  (cost=717218.51..717218.51 rows=1 width=35) (actual time=40643.339..40643.510 rows=618 loops=1)
                                 Merge Cond: (cc.status_id = cct1.id)
                                 Buffers: shared hit=2738949 read=309912
                                 ->  Sort  (cost=717212.38..717212.38 rows=1 width=39) (actual time=40643.309..40643.340 rows=700 loops=1)
                                       Sort Key: cc.status_id
                                       Sort Method: quicksort  Memory: 79kB
                                       Buffers: shared hit=2738948 read=309911
                                       ->  Merge Join  (cost=717212.38..717212.38 rows=1 width=39) (actual time=40642.948..40643.145 rows=700 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=2738948 read=309911
                                             ->  Sort  (cost=717206.26..717206.26 rows=7 width=33) (actual time=40642.913..40642.947 rows=701 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 96kB
                                                   Buffers: shared hit=2738947 read=309910
                                                   ->  Merge Join  (cost=690241.83..717206.25 rows=7 width=33) (actual time=36799.334..40642.608 rows=919 loops=1)
                                                         Merge Cond: (t.id = mc.movie_id)
                                                         Buffers: shared hit=2738947 read=309910
                                                         ->  Merge Join  (cost=658828.68..685387.96 rows=7 width=41) (actual time=34313.353..37925.134 rows=731 loops=1)
                                                               Merge Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=2738944 read=283993
                                                               ->  Merge Join  (cost=658828.67..662059.75 rows=12 width=16) (actual time=27394.505..27479.758 rows=741 loops=1)
                                                                     Merge Cond: (mi.movie_id = cc.movie_id)
                                                                     Buffers: shared hit=325543 read=241689
                                                                     ->  Sort  (cost=658828.66..658828.66 rows=35 width=8) (actual time=27170.321..27171.209 rows=4463 loops=1)
                                                                           Sort Key: mi.movie_id
                                                                           Sort Method: quicksort  Memory: 402kB
                                                                           Buffers: shared hit=240054 read=240600
                                                                           ->  Merge Join  (cost=657237.39..658828.63 rows=35 width=8) (actual time=26852.560..27168.432 rows=4463 loops=1)
                                                                                 Merge Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=240054 read=240600
                                                                                 ->  Sort  (cost=657237.38..657237.38 rows=35 width=12) (actual time=26852.537..26853.290 rows=4463 loops=1)
                                                                                       Sort Key: mk.keyword_id
                                                                                       Sort Method: quicksort  Memory: 402kB
                                                                                       Buffers: shared hit=109160 read=239168
                                                                                       ->  Merge Join  (cost=617600.33..657237.35 rows=35 width=12) (actual time=23622.795..26849.509 rows=4463 loops=1)
                                                                                             Merge Cond: (mi.movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=109160 read=239168
                                                                                             ->  Sort  (cost=617600.31..617600.31 rows=3 width=4) (actual time=23622.662..23623.033 rows=1783 loops=1)
                                                                                                   Sort Key: mi.movie_id
                                                                                                   Sort Method: quicksort  Memory: 132kB
                                                                                                   Buffers: shared hit=87586 read=202427
                                                                                                   ->  Merge Join  (cost=0.02..617600.31 rows=3 width=4) (actual time=14128.850..23620.844 rows=1783 loops=1)
                                                                                                         Merge Cond: (it1.id = mi.info_type_id)
                                                                                                         Buffers: shared hit=87586 read=202427
                                                                                                         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.058..0.097 rows=1 loops=1)
                                                                                                               Filter: ((info)::text = 'release dates'::text)
                                                                                                               Rows Removed by Filter: 112
                                                                                                               Buffers: shared hit=2
                                                                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..617591.08 rows=328 width=8) (actual time=14128.781..23619.474 rows=1783 loops=1)
                                                                                                               Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                                                                               Rows Removed by Filter: 14833937
                                                                                                               Buffers: shared hit=87584 read=202427
                                                                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.020..2483.619 rows=4514890 loops=1)
                                                                                                   Buffers: shared hit=21574 read=36741
                                                                                 ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1580.83 rows=134170 width=4) (actual time=0.018..291.404 rows=133880 loops=1)
                                                                                       Buffers: shared hit=130894 read=1432
                                                                     ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=0.015..276.464 rows=132787 loops=1)
                                                                           Buffers: shared hit=85489 read=1089
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=30.561..10286.975 rows=1347644 loops=1)
                                                                     Filter: (production_year > 2000)
                                                                     Rows Removed by Filter: 1102759
                                                                     Buffers: shared hit=2413401 read=42304
                                                         ->  Sort  (cost=31413.15..31615.72 rows=2609129 width=12) (actual time=2351.780..2479.704 rows=2471534 loops=1)
                                                               Sort Key: mc.movie_id
                                                               Sort Method: quicksort  Memory: 220607kB
                                                               Buffers: shared hit=3 read=25917
                                                               ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=9.489..1305.118 rows=2609129 loops=1)
                                                                     Buffers: shared hit=3 read=25917
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=14) (actual time=0.029..0.030 rows=1 loops=1)
                                                   Sort Key: kt.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=14) (actual time=0.020..0.021 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                         Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                       Sort Key: cct1.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'complete+verified'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.004..0.004 rows=2 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.014..753.396 rows=75246 loops=1)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 138116
               Buffers: shared hit=210123 read=3758
 Planning Time: 8980.442 ms
 Execution Time: 41438.748 ms
(106 rows)


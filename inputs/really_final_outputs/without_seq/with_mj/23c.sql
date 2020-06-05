                                                                                                                             QUERY PLAN                                                                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=721863.08..721863.08 rows=1 width=64) (actual time=39676.411..39676.412 rows=1 loops=1)
   Buffers: shared hit=2949079 read=313669
   ->  Merge Join  (cost=717259.30..721863.08 rows=5 width=27) (actual time=39261.015..39676.197 rows=628 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2949079 read=313669
         ->  Sort  (cost=717259.29..717259.29 rows=5 width=31) (actual time=38927.604..38927.655 rows=628 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 74kB
               Buffers: shared hit=2738956 read=309911
               ->  Merge Join  (cost=717250.11..717259.29 rows=5 width=31) (actual time=38922.657..38922.825 rows=628 loops=1)
                     Merge Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2738952 read=309911
                     ->  Sort  (cost=717250.10..717250.10 rows=5 width=35) (actual time=38922.650..38922.677 rows=628 loops=1)
                           Sort Key: mc.company_type_id
                           Sort Method: quicksort  Memory: 74kB
                           Buffers: shared hit=2738950 read=309911
                           ->  Merge Join  (cost=717250.10..717250.10 rows=5 width=35) (actual time=38922.334..38922.509 rows=628 loops=1)
                                 Merge Cond: (cc.status_id = cct1.id)
                                 Buffers: shared hit=2738950 read=309911
                                 ->  Sort  (cost=717243.97..717243.98 rows=5 width=39) (actual time=38922.265..38922.305 rows=929 loops=1)
                                       Sort Key: cc.status_id
                                       Sort Method: quicksort  Memory: 97kB
                                       Buffers: shared hit=2738949 read=309910
                                       ->  Merge Join  (cost=717234.79..717243.97 rows=5 width=39) (actual time=38921.787..38922.046 rows=929 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=2738949 read=309910
                                             ->  Sort  (cost=717234.78..717234.78 rows=8 width=33) (actual time=38921.770..38921.813 rows=929 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 97kB
                                                   Buffers: shared hit=2738947 read=309910
                                                   ->  Merge Join  (cost=690241.83..717234.78 rows=8 width=33) (actual time=35309.106..38921.415 rows=929 loops=1)
                                                         Merge Cond: (t.id = mc.movie_id)
                                                         Buffers: shared hit=2738947 read=309910
                                                         ->  Merge Join  (cost=658828.68..685416.49 rows=8 width=41) (actual time=32649.919..36046.311 rows=741 loops=1)
                                                               Merge Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=2738944 read=283993
                                                               ->  Merge Join  (cost=658828.67..662059.75 rows=12 width=16) (actual time=26340.757..26424.126 rows=741 loops=1)
                                                                     Merge Cond: (mi.movie_id = cc.movie_id)
                                                                     Buffers: shared hit=325543 read=241689
                                                                     ->  Sort  (cost=658828.66..658828.66 rows=35 width=8) (actual time=26123.278..26124.094 rows=4463 loops=1)
                                                                           Sort Key: mi.movie_id
                                                                           Sort Method: quicksort  Memory: 402kB
                                                                           Buffers: shared hit=240054 read=240600
                                                                           ->  Merge Join  (cost=657237.39..658828.63 rows=35 width=8) (actual time=25797.032..26121.302 rows=4463 loops=1)
                                                                                 Merge Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=240054 read=240600
                                                                                 ->  Sort  (cost=657237.38..657237.38 rows=35 width=12) (actual time=25797.013..25797.732 rows=4463 loops=1)
                                                                                       Sort Key: mk.keyword_id
                                                                                       Sort Method: quicksort  Memory: 402kB
                                                                                       Buffers: shared hit=109160 read=239168
                                                                                       ->  Merge Join  (cost=617600.33..657237.35 rows=35 width=12) (actual time=22363.612..25794.105 rows=4463 loops=1)
                                                                                             Merge Cond: (mi.movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=109160 read=239168
                                                                                             ->  Sort  (cost=617600.31..617600.31 rows=3 width=4) (actual time=22363.519..22363.897 rows=1783 loops=1)
                                                                                                   Sort Key: mi.movie_id
                                                                                                   Sort Method: quicksort  Memory: 132kB
                                                                                                   Buffers: shared hit=87586 read=202427
                                                                                                   ->  Merge Join  (cost=0.02..617600.31 rows=3 width=4) (actual time=13511.041..22361.728 rows=1783 loops=1)
                                                                                                         Merge Cond: (it1.id = mi.info_type_id)
                                                                                                         Buffers: shared hit=87586 read=202427
                                                                                                         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.038..0.067 rows=1 loops=1)
                                                                                                               Filter: ((info)::text = 'release dates'::text)
                                                                                                               Rows Removed by Filter: 112
                                                                                                               Buffers: shared hit=2
                                                                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..617591.08 rows=328 width=8) (actual time=13510.990..22360.555 rows=1783 loops=1)
                                                                                                               Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                                                                               Rows Removed by Filter: 14833937
                                                                                                               Buffers: shared hit=87584 read=202427
                                                                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2689.879 rows=4514890 loops=1)
                                                                                                   Buffers: shared hit=21574 read=36741
                                                                                 ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1580.83 rows=134170 width=4) (actual time=0.015..302.098 rows=133880 loops=1)
                                                                                       Buffers: shared hit=130894 read=1432
                                                                     ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=0.013..270.544 rows=132787 loops=1)
                                                                           Buffers: shared hit=85489 read=1089
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=25) (actual time=0.023..9425.401 rows=1705490 loops=1)
                                                                     Filter: (production_year > 1990)
                                                                     Rows Removed by Filter: 744913
                                                                     Buffers: shared hit=2413401 read=42304
                                                         ->  Sort  (cost=31413.15..31615.72 rows=2609129 width=12) (actual time=2533.120..2643.540 rows=2471543 loops=1)
                                                               Sort Key: mc.movie_id
                                                               Sort Method: quicksort  Memory: 220607kB
                                                               Buffers: shared hit=3 read=25917
                                                               ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=12.388..1377.219 rows=2609129 loops=1)
                                                                     Buffers: shared hit=3 read=25917
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=4 width=14) (actual time=0.013..0.014 rows=3 loops=1)
                                                   Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=2
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                       Sort Key: cct1.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.018..0.019 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'complete+verified'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.003..0.004 rows=2 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.014..740.258 rows=75246 loops=1)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 138116
               Buffers: shared hit=210123 read=3758
 Planning Time: 9094.406 ms
 Execution Time: 39759.829 ms
(103 rows)


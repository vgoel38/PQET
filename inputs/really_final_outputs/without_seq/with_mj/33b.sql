                                                                                                                                                      QUERY PLAN                                                                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=117960.03..117960.03 rows=1 width=192) (actual time=16385.772..16385.772 rows=1 loops=1)
   Buffers: shared hit=3857661 read=81902
   ->  Merge Join  (cost=117960.03..117960.03 rows=1 width=84) (actual time=16385.743..16385.746 rows=4 loops=1)
         Merge Cond: (t.kind_id = kt.id)
         Buffers: shared hit=3857661 read=81902
         ->  Sort  (cost=117953.90..117953.90 rows=1 width=88) (actual time=16385.698..16385.699 rows=4 loops=1)
               Sort Key: t.kind_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=3857659 read=81902
               ->  Merge Join  (cost=116242.73..117953.90 rows=1 width=88) (actual time=16366.591..16366.595 rows=4 loops=1)
                     Merge Cond: (ml.movie_id = t.id)
                     Buffers: shared hit=3857655 read=81902
                     ->  Sort  (cost=116242.71..116242.71 rows=1 width=79) (actual time=16329.291..16329.292 rows=4 loops=1)
                           Sort Key: ml.movie_id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=3834912 read=81902
                           ->  Merge Join  (cost=116242.71..116242.71 rows=1 width=79) (actual time=16329.269..16329.271 rows=4 loops=1)
                                 Merge Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=3834912 read=81902
                                 ->  Sort  (cost=116236.58..116236.58 rows=1 width=83) (actual time=16329.246..16329.247 rows=8 loops=1)
                                       Sort Key: mi_idx.info_type_id
                                       Sort Method: quicksort  Memory: 26kB
                                       Buffers: shared hit=3834910 read=81902
                                       ->  Merge Join  (cost=116236.58..116236.58 rows=1 width=83) (actual time=16329.226..16329.230 rows=8 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=3834910 read=81902
                                             ->  Sort  (cost=116230.45..116230.46 rows=1 width=87) (actual time=16329.179..16329.180 rows=9 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 32kB
                                                   Buffers: shared hit=3834909 read=81901
                                                   ->  Merge Join  (cost=116230.45..116230.45 rows=1 width=87) (actual time=16329.130..16329.145 rows=42 loops=1)
                                                         Merge Cond: (it.id = mi_idx.info_type_id)
                                                         Buffers: shared hit=3834909 read=81901
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.069..0.070 rows=1 loops=1)
                                                               Sort Key: it.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.052..0.053 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                     Buffers: shared hit=1 read=1
                                                         ->  Sort  (cost=116224.33..116224.33 rows=3 width=91) (actual time=16329.033..16329.041 rows=126 loops=1)
                                                               Sort Key: mi_idx.info_type_id
                                                               Sort Method: quicksort  Memory: 48kB
                                                               Buffers: shared hit=3834908 read=81900
                                                               ->  Merge Join  (cost=115662.35..116224.33 rows=3 width=91) (actual time=16314.713..16328.943 rows=126 loops=1)
                                                                     Merge Cond: (ml.movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=3834908 read=81900
                                                                     ->  Sort  (cost=115662.34..115662.34 rows=1 width=77) (actual time=16314.661..16314.667 rows=42 loops=1)
                                                                           Sort Key: ml.movie_id
                                                                           Sort Method: quicksort  Memory: 31kB
                                                                           Buffers: shared hit=3834284 read=81900
                                                                           ->  Merge Join  (cost=111065.15..115662.34 rows=1 width=77) (actual time=15873.036..16314.610 rows=42 loops=1)
                                                                                 Merge Cond: (mc.company_id = cn2.id)
                                                                                 Buffers: shared hit=3834284 read=81900
                                                                                 ->  Sort  (cost=111065.14..111065.14 rows=1 width=62) (actual time=15872.996..15873.004 rows=42 loops=1)
                                                                                       Sort Key: mc.company_id
                                                                                       Sort Method: quicksort  Memory: 30kB
                                                                                       Buffers: shared hit=3724312 read=80494
                                                                                       ->  Merge Join  (cost=42937.34..111065.14 rows=1 width=62) (actual time=13365.727..15872.935 rows=42 loops=1)
                                                                                             Merge Cond: (mc.movie_id = t.id)
                                                                                             Buffers: shared hit=3724312 read=80494
                                                                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.030..2087.649 rows=2380510 loops=1)
                                                                                                   Buffers: shared hit=1104947 read=22654
                                                                                             ->  Sort  (cost=42937.33..42937.33 rows=1 width=70) (actual time=13352.887..13352.893 rows=41 loops=1)
                                                                                                   Sort Key: t.id
                                                                                                   Sort Method: quicksort  Memory: 26kB
                                                                                                   Buffers: shared hit=2619365 read=57840
                                                                                                   ->  Merge Join  (cost=38339.94..42937.33 rows=1 width=70) (actual time=13051.264..13352.833 rows=12 loops=1)
                                                                                                         Merge Cond: (cn1.id = mc.company_id)
                                                                                                         Buffers: shared hit=2619365 read=57840
                                                                                                         ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..4597.20 rows=2340 width=23) (actual time=31.918..446.560 rows=1213 loops=1)
                                                                                                               Filter: ((country_code)::text = '[nl]'::text)
                                                                                                               Rows Removed by Filter: 72266
                                                                                                               Buffers: shared hit=72132 read=1540
                                                                                                         ->  Sort  (cost=38339.93..38339.94 rows=90 width=55) (actual time=12905.831..12905.899 rows=284 loops=1)
                                                                                                               Sort Key: mc.company_id
                                                                                                               Sort Method: quicksort  Memory: 64kB
                                                                                                               Buffers: shared hit=2547233 read=56300
                                                                                                               ->  Merge Join  (cost=35731.19..38339.84 rows=90 width=55) (actual time=12538.992..12905.376 rows=284 loops=1)
                                                                                                                     Merge Cond: (mc.movie_id = ml.movie_id)
                                                                                                                     Buffers: shared hit=2547233 read=56300
                                                                                                                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.039..356.913 rows=99877 loops=1)
                                                                                                                           Buffers: shared hit=45837 read=983
                                                                                                                     ->  Sort  (cost=35731.18..35731.18 rows=20 width=47) (actual time=12512.258..12512.312 rows=285 loops=1)
                                                                                                                           Sort Key: ml.movie_id
                                                                                                                           Sort Method: quicksort  Memory: 31kB
                                                                                                                           Buffers: shared hit=2501396 read=55317
                                                                                                                           ->  Merge Join  (cost=35721.92..35731.17 rows=20 width=47) (actual time=12512.179..12512.209 rows=50 loops=1)
                                                                                                                                 Merge Cond: (lt.id = ml.link_type_id)
                                                                                                                                 Buffers: shared hit=2501396 read=55317
                                                                                                                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.020..0.028 rows=2 loops=1)
                                                                                                                                       Filter: ((link)::text ~~ '%follow%'::text)
                                                                                                                                       Rows Removed by Filter: 16
                                                                                                                                       Buffers: shared hit=2
                                                                                                                                 ->  Sort  (cost=35721.92..35721.95 rows=369 width=51) (actual time=12512.153..12512.159 rows=51 loops=1)
                                                                                                                                       Sort Key: ml.link_type_id
                                                                                                                                       Sort Method: quicksort  Memory: 218kB
                                                                                                                                       Buffers: shared hit=2501394 read=55317
                                                                                                                                       ->  Merge Join  (cost=348.52..35721.43 rows=369 width=51) (actual time=757.015..12510.721 rows=1325 loops=1)
                                                                                                                                             Merge Cond: (t.id = ml.linked_movie_id)
                                                                                                                                             Buffers: shared hit=2501394 read=55317
                                                                                                                                             ->  Merge Join  (cost=0.03..35415.90 rows=31132 width=39) (actual time=394.225..12397.061 rows=27791 loops=1)
                                                                                                                                                   Merge Cond: (t.id = mi_idx.movie_id)
                                                                                                                                                   Buffers: shared hit=2501313 read=55076
                                                                                                                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=119565 width=25) (actual time=384.663..10882.239 rows=119527 loops=1)
                                                                                                                                                         Filter: (production_year = 2007)
                                                                                                                                                         Rows Removed by Filter: 2405705
                                                                                                                                                         Buffers: shared hit=2487775 read=42858
                                                                                                                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=658313 width=14) (actual time=0.032..1384.742 rows=658081 loops=1)
                                                                                                                                                         Filter: (info < '3.0'::text)
                                                                                                                                                         Rows Removed by Filter: 721523
                                                                                                                                                         Buffers: shared hit=13538 read=12218
                                                                                                                                             ->  Sort  (cost=345.08..347.41 rows=29997 width=12) (actual time=94.142..100.944 rows=30447 loops=1)
                                                                                                                                                   Sort Key: ml.linked_movie_id
                                                                                                                                                   Sort Method: quicksort  Memory: 2175kB
                                                                                                                                                   Buffers: shared hit=81 read=241
                                                                                                                                                   ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.044..67.370 rows=29997 loops=1)
                                                                                                                                                         Buffers: shared hit=81 read=241
                                                                                 ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..4578.95 rows=234997 width=23) (actual time=0.015..427.452 rows=111127 loops=1)
                                                                                       Buffers: shared hit=109972 read=1406
                                                                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.016..8.939 rows=46252 loops=1)
                                                                           Buffers: shared hit=624
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.042..0.042 rows=1 loops=1)
                                                   Sort Key: kt.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.029..0.029 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'tv series'::text)
                                                         Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                       Sort Key: it.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.012..0.013 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared hit=2
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=0.013..31.684 rows=22690 loops=1)
                           Buffers: shared hit=22743
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
               Sort Key: kt.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=2
               ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.014..0.015 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'tv series'::text)
                     Buffers: shared hit=2
 Planning Time: 6097.704 ms
 Execution Time: 16386.783 ms
(147 rows)


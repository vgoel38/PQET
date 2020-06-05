                                                                                                                                      QUERY PLAN                                                                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=624324.66..624324.66 rows=1 width=96) (actual time=152752.434..152752.434 rows=1 loops=1)
   Buffers: shared hit=13559359 read=367719
   ->  Merge Join  (cost=576749.45..624324.66 rows=1 width=39) (actual time=149757.337..152733.423 rows=5400 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=13559359 read=367719
         ->  Sort  (cost=576749.40..576749.40 rows=1 width=43) (actual time=149711.097..149712.243 rows=5400 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 678kB
               Buffers: shared hit=10974116 read=321835
               ->  Merge Join  (cost=576740.22..576749.40 rows=1 width=43) (actual time=149696.541..149698.139 rows=5400 loops=1)
                     Merge Cond: (cc.status_id = cct2.id)
                     Buffers: shared hit=10974112 read=321835
                     ->  Sort  (cost=576740.21..576740.21 rows=1 width=47) (actual time=149696.514..149696.787 rows=5400 loops=1)
                           Sort Key: cc.status_id
                           Sort Method: quicksort  Memory: 717kB
                           Buffers: shared hit=10974110 read=321835
                           ->  Merge Join  (cost=576740.21..576740.21 rows=1 width=47) (actual time=149429.384..149695.006 rows=5400 loops=1)
                                 Merge Cond: (k.id = mk.keyword_id)
                                 Buffers: shared hit=10974110 read=321835
                                 ->  Sort  (cost=61.33..61.33 rows=10 width=4) (actual time=53.204..53.208 rows=10 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=20 read=23
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=25.500..53.147 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=20 read=23
                                 ->  Sort  (cost=576678.88..576678.88 rows=14 width=51) (actual time=149348.070..149468.659 rows=834286 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 172233kB
                                       Buffers: shared hit=10974090 read=321812
                                       ->  Merge Join  (cost=537041.85..576678.87 rows=14 width=51) (actual time=146152.072..148723.304 rows=1145482 loops=1)
                                             Merge Cond: (t.id = mk.movie_id)
                                             Buffers: shared hit=10974090 read=321812
                                             ->  Sort  (cost=537041.83..537041.83 rows=8 width=63) (actual time=145385.969..145387.711 rows=10450 loops=1)
                                                   Sort Key: ci.movie_id
                                                   Sort Method: quicksort  Memory: 1812kB
                                                   Buffers: shared hit=10940411 read=285022
                                                   ->  Merge Join  (cost=537041.82..537041.83 rows=8 width=63) (actual time=145377.496..145381.104 rows=10450 loops=1)
                                                         Merge Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=10940411 read=285022
                                                         ->  Sort  (cost=537035.70..537035.70 rows=34 width=67) (actual time=145377.452..145377.958 rows=10451 loops=1)
                                                               Sort Key: cc.subject_id
                                                               Sort Method: quicksort  Memory: 2189kB
                                                               Buffers: shared hit=10940410 read=285021
                                                               ->  Merge Join  (cost=537035.08..537035.67 rows=34 width=67) (actual time=145368.463..145372.627 rows=12886 loops=1)
                                                                     Merge Cond: (it2.id = mi_idx.info_type_id)
                                                                     Buffers: shared hit=10940410 read=285021
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.056..0.056 rows=1 loops=1)
                                                                           Sort Key: it2.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.035..0.036 rows=1 loops=1)
                                                                                 Index Cond: ((info)::text = 'rating'::text)
                                                                                 Buffers: shared hit=1 read=1
                                                                     ->  Sort  (cost=537028.96..537029.25 rows=3786 width=71) (actual time=145362.098..145364.589 rows=38659 loops=1)
                                                                           Sort Key: mi_idx.info_type_id
                                                                           Sort Method: quicksort  Memory: 7053kB
                                                                           Buffers: shared hit=10940409 read=285020
                                                                           ->  Merge Join  (cost=524882.50..537021.97 rows=3786 width=71) (actual time=144503.857..145325.947 rows=39057 loops=1)
                                                                                 Merge Cond: (t.id = mi_idx.movie_id)
                                                                                 Buffers: shared hit=10940409 read=285020
                                                                                 ->  Sort  (cost=524882.49..524883.03 rows=6937 width=57) (actual time=143896.520..143898.321 rows=13456 loops=1)
                                                                                       Sort Key: ci.movie_id
                                                                                       Sort Method: quicksort  Memory: 2120kB
                                                                                       Buffers: shared hit=10925280 read=272811
                                                                                       ->  Merge Join  (cost=524860.73..524868.75 rows=6937 width=57) (actual time=143887.755..143891.669 rows=13456 loops=1)
                                                                                             Merge Cond: (kt.id = t.kind_id)
                                                                                             Buffers: shared hit=10925280 read=272811
                                                                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.045..0.045 rows=1 loops=1)
                                                                                                   Sort Key: kt.id
                                                                                                   Sort Method: quicksort  Memory: 25kB
                                                                                                   Buffers: shared hit=1 read=1
                                                                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.029..0.030 rows=1 loops=1)
                                                                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                                                                         Buffers: shared hit=1 read=1
                                                                                             ->  Sort  (cost=524854.60..524858.37 rows=48556 width=61) (actual time=143887.705..143888.311 rows=13457 loops=1)
                                                                                                   Sort Key: t.kind_id
                                                                                                   Sort Method: quicksort  Memory: 4879kB
                                                                                                   Buffers: shared hit=10925279 read=272810
                                                                                                   ->  Merge Join  (cost=498005.27..524737.23 rows=48556 width=61) (actual time=133004.675..143870.395 rows=30253 loops=1)
                                                                                                         Merge Cond: (ci.movie_id = t.id)
                                                                                                         Buffers: shared hit=10925279 read=272810
                                                                                                         ->  Merge Join  (cost=498005.24..501402.95 rows=88866 width=36) (actual time=132438.852..132958.244 rows=183541 loops=1)
                                                                                                               Merge Cond: (ci.movie_id = cc.movie_id)
                                                                                                               Buffers: shared hit=8437132 read=229951
                                                                                                               ->  Sort  (cost=498005.22..498086.21 rows=1043217 width=24) (actual time=132413.384..132523.021 rows=623586 loops=1)
                                                                                                                     Sort Key: ci.movie_id
                                                                                                                     Sort Method: quicksort  Memory: 71409kB
                                                                                                                     Buffers: shared hit=8269698 read=228861
                                                                                                                     ->  Merge Join  (cost=0.03..494766.61 rows=1043217 width=24) (actual time=14880.947..132031.591 rows=623586 loops=1)
                                                                                                                           Merge Cond: (chn.id = ci.person_role_id)
                                                                                                                           Buffers: shared hit=8269698 read=228861
                                                                                                                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=20) (actual time=79.588..17765.301 rows=180152 loops=1)
                                                                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                                                                 Rows Removed by Filter: 2960187
                                                                                                                                 Buffers: shared hit=3100270 read=47612
                                                                                                                           ->  Index Scan using cast_info_idx_cid on cast_info ci  (cost=0.02..941334.49 rows=36244344 width=12) (actual time=0.027..110245.908 rows=17571520 loops=1)
                                                                                                                                 Buffers: shared hit=5169428 read=181249
                                                                                                               ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.020..235.376 rows=255166 loops=1)
                                                                                                                     Buffers: shared hit=167434 read=1090
                                                                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=24.657..10719.518 rows=1381055 loops=1)
                                                                                                               Filter: (production_year > 2000)
                                                                                                               Rows Removed by Filter: 1144612
                                                                                                               Buffers: shared hit=2488147 read=42859
                                                                                 ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.014..1084.373 rows=1409430 loops=1)
                                                                                       Buffers: shared hit=15129 read=12209
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.040..0.041 rows=1 loops=1)
                                                               Sort Key: cct1.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.031..0.032 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'cast'::text)
                                                                     Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2405.109 rows=5426734 loops=1)
                                                   Buffers: shared hit=33679 read=36790
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..9.19 rows=1 width=4) (actual time=0.022..0.024 rows=2 loops=1)
                           Filter: ((kind)::text ~~ '%complete%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=2
         ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.014..2671.543 rows=2699679 loops=1)
               Buffers: shared hit=2585243 read=45884
 Planning Time: 10082.165 ms
 Execution Time: 152799.568 ms
(123 rows)


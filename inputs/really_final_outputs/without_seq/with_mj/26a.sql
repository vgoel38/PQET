                                                                                                                                   QUERY PLAN                                                                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=624355.09..624355.09 rows=1 width=128) (actual time=157437.606..157437.606 rows=1 loops=1)
   Buffers: shared hit=13560083 read=367745
   ->  Merge Join  (cost=624355.09..624355.09 rows=1 width=54) (actual time=157423.775..157424.416 rows=1728 loops=1)
         Merge Cond: (mi_idx.info_type_id = it.id)
         Buffers: shared hit=13560083 read=367745
         ->  Sort  (cost=624348.96..624348.96 rows=1 width=58) (actual time=157423.628..157423.767 rows=2429 loops=1)
               Sort Key: mi_idx.info_type_id
               Sort Method: quicksort  Memory: 413kB
               Buffers: shared hit=13560082 read=367744
               ->  Merge Join  (cost=624339.78..624348.96 rows=1 width=58) (actual time=157417.511..157418.298 rows=2429 loops=1)
                     Merge Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=13560078 read=367744
                     ->  Sort  (cost=624339.78..624339.78 rows=1 width=62) (actual time=157417.497..157417.642 rows=2429 loops=1)
                           Sort Key: cc.status_id
                           Sort Method: quicksort  Memory: 424kB
                           Buffers: shared hit=13560076 read=367744
                           ->  Merge Join  (cost=576764.56..624339.78 rows=1 width=62) (actual time=154490.831..157415.956 rows=2429 loops=1)
                                 Merge Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=13560076 read=367744
                                 ->  Sort  (cost=576764.51..576764.51 rows=1 width=51) (actual time=154442.831..154443.377 rows=2429 loops=1)
                                       Sort Key: ci.person_id
                                       Sort Method: quicksort  Memory: 361kB
                                       Buffers: shared hit=10974833 read=321860
                                       ->  Merge Join  (cost=576764.51..576764.51 rows=1 width=51) (actual time=154441.098..154441.825 rows=2429 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=10974833 read=321860
                                             ->  Sort  (cost=576758.39..576758.39 rows=1 width=55) (actual time=154441.061..154441.176 rows=2430 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 409kB
                                                   Buffers: shared hit=10974832 read=321859
                                                   ->  Merge Join  (cost=576757.42..576758.38 rows=1 width=55) (actual time=154312.640..154440.148 rows=2580 loops=1)
                                                         Merge Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=10974832 read=321859
                                                         ->  Sort  (cost=576696.09..576696.57 rows=6227 width=59) (actual time=154237.282..154300.526 rows=406132 loops=1)
                                                               Sort Key: mk.keyword_id
                                                               Sort Method: quicksort  Memory: 98644kB
                                                               Buffers: shared hit=10974812 read=321836
                                                               ->  Merge Join  (cost=553357.91..576683.90 rows=6227 width=59) (actual time=144471.905..153957.387 rows=562451 loops=1)
                                                                     Merge Cond: (mk.movie_id = t.id)
                                                                     Buffers: shared hit=10974812 read=321836
                                                                     ->  Sort  (cost=553357.71..553358.60 rows=11396 width=54) (actual time=143944.137..144067.716 rows=2125448 loops=1)
                                                                           Sort Key: ci.movie_id
                                                                           Sort Method: quicksort  Memory: 355251kB
                                                                           Buffers: shared hit=8487209 read=278978
                                                                           ->  Merge Join  (cost=553326.00..553333.86 rows=11396 width=54) (actual time=142329.647..143086.988 rows=2125448 loops=1)
                                                                                 Merge Cond: (cc.subject_id = cct.id)
                                                                                 Buffers: shared hit=8487209 read=278978
                                                                                 ->  Sort  (cost=553319.87..553323.41 rows=45582 width=58) (actual time=142329.586..142433.985 rows=2125449 loops=1)
                                                                                       Sort Key: cc.subject_id
                                                                                       Sort Method: quicksort  Memory: 566156kB
                                                                                       Buffers: shared hit=8487208 read=278977
                                                                                       ->  Merge Join  (cost=498006.33..553210.33 rows=45582 width=58) (actual time=132542.678..140560.872 rows=3478276 loops=1)
                                                                                             Merge Cond: (ci.movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=8487208 read=278977
                                                                                             ->  Merge Join  (cost=498006.31..513569.31 rows=10820 width=50) (actual time=132542.080..134658.784 rows=67159 loops=1)
                                                                                                   Merge Cond: (ci.movie_id = cc.movie_id)
                                                                                                   Buffers: shared hit=8421257 read=242171
                                                                                                   ->  Merge Join  (cost=498005.23..510329.10 rows=127015 width=38) (actual time=132516.714..134320.759 rows=135918 loops=1)
                                                                                                         Merge Cond: (ci.movie_id = mi_idx.movie_id)
                                                                                                         Buffers: shared hit=8300767 read=241081
                                                                                                         ->  Sort  (cost=498005.22..498086.21 rows=1043217 width=24) (actual time=132516.650..132638.290 rows=623566 loops=1)
                                                                                                               Sort Key: ci.movie_id
                                                                                                               Sort Method: quicksort  Memory: 71409kB
                                                                                                               Buffers: shared hit=8269698 read=228861
                                                                                                               ->  Merge Join  (cost=0.03..494766.61 rows=1043217 width=24) (actual time=14800.847..132171.662 rows=623586 loops=1)
                                                                                                                     Merge Cond: (ci.person_role_id = chn.id)
                                                                                                                     Buffers: shared hit=8269698 read=228861
                                                                                                                     ->  Index Scan using cast_info_idx_cid on cast_info ci  (cost=0.02..941334.49 rows=36244344 width=12) (actual time=0.037..109996.741 rows=17571520 loops=1)
                                                                                                                           Buffers: shared hit=5169428 read=181249
                                                                                                                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=20) (actual time=63.892..18077.674 rows=180152 loops=1)
                                                                                                                           Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                                                           Rows Removed by Filter: 2960187
                                                                                                                           Buffers: shared hit=3100270 read=47612
                                                                                                         ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=192955 width=14) (actual time=0.049..1451.627 rows=267014 loops=1)
                                                                                                               Filter: (info > '7.0'::text)
                                                                                                               Rows Removed by Filter: 1668152
                                                                                                               Buffers: shared hit=31069 read=12220
                                                                                                   ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.010..254.967 rows=179594 loops=1)
                                                                                                         Buffers: shared hit=120490 read=1090
                                                                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.030..3988.575 rows=7596216 loops=1)
                                                                                                   Buffers: shared hit=65951 read=36806
                                                                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.055..0.055 rows=1 loops=1)
                                                                                       Sort Key: cct.id
                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                       Buffers: shared hit=1 read=1
                                                                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.043..0.044 rows=1 loops=1)
                                                                                             Index Cond: ((kind)::text = 'cast'::text)
                                                                                             Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=55.345..9298.710 rows=1380840 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1144219
                                                                           Buffers: shared hit=2487603 read=42858
                                                         ->  Sort  (cost=61.33..61.33 rows=10 width=4) (actual time=48.763..48.765 rows=10 loops=1)
                                                               Sort Key: k.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=20 read=23
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=21.004..48.720 rows=10 loops=1)
                                                                     Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                                     Buffers: shared hit=20 read=23
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                                   Sort Key: kt.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.025..0.026 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                         Buffers: shared hit=1 read=1
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=0.012..2626.540 rows=2699679 loops=1)
                                       Buffers: shared hit=2585243 read=45884
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.011..0.012 rows=2 loops=1)
                           Filter: ((kind)::text ~~ '%complete%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=2
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
               Sort Key: it.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=1 read=1
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                     Index Cond: ((info)::text = 'rating'::text)
                     Buffers: shared hit=1 read=1
 Planning Time: 10079.860 ms
 Execution Time: 157505.162 ms
(121 rows)


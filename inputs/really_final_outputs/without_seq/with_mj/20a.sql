                                                                                                                          QUERY PLAN                                                                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=608872.98..608872.98 rows=1 width=32) (actual time=143579.578..143579.578 rows=1 loops=1)
   Buffers: shared hit=12466977 read=335925
   ->  Merge Join  (cost=561297.76..608872.98 rows=1 width=17) (actual time=142037.601..143579.517 rows=33 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=12466977 read=335925
         ->  Sort  (cost=561297.71..561297.71 rows=1 width=21) (actual time=141536.615..141536.624 rows=33 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=10686299 read=304322
               ->  Merge Join  (cost=561288.53..561297.71 rows=1 width=21) (actual time=141531.851..141531.862 rows=33 loops=1)
                     Merge Cond: (cc.status_id = cct2.id)
                     Buffers: shared hit=10686295 read=304322
                     ->  Sort  (cost=561288.53..561288.53 rows=1 width=25) (actual time=141531.839..141531.841 rows=33 loops=1)
                           Sort Key: cc.status_id
                           Sort Method: quicksort  Memory: 27kB
                           Buffers: shared hit=10686293 read=304322
                           ->  Merge Join  (cost=561288.53..561288.53 rows=1 width=25) (actual time=141531.809..141531.819 rows=33 loops=1)
                                 Merge Cond: (cc.subject_id = cct1.id)
                                 Buffers: shared hit=10686293 read=304322
                                 ->  Sort  (cost=561282.40..561282.40 rows=1 width=29) (actual time=141531.779..141531.780 rows=33 loops=1)
                                       Sort Key: cc.subject_id
                                       Sort Method: quicksort  Memory: 27kB
                                       Buffers: shared hit=10686292 read=304321
                                       ->  Merge Join  (cost=561282.40..561282.40 rows=1 width=29) (actual time=141531.738..141531.751 rows=33 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=10686292 read=304321
                                             ->  Sort  (cost=561276.28..561276.28 rows=1 width=33) (actual time=141531.688..141531.691 rows=33 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 27kB
                                                   Buffers: shared hit=10686291 read=304320
                                                   ->  Merge Join  (cost=534652.64..561276.28 rows=1 width=33) (actual time=139414.503..141531.646 rows=33 loops=1)
                                                         Merge Cond: (mk.movie_id = t.id)
                                                         Buffers: shared hit=10686291 read=304320
                                                         ->  Merge Join  (cost=534652.43..537882.02 rows=1 width=24) (actual time=132208.996..132263.022 rows=33 loops=1)
                                                               Merge Cond: (mk.movie_id = cc.movie_id)
                                                               Buffers: shared hit=8341813 read=263583
                                                               ->  Sort  (cost=534652.42..534652.42 rows=1 width=12) (actual time=131971.962..131971.997 rows=176 loops=1)
                                                                     Sort Key: ci.movie_id
                                                                     Sort Method: quicksort  Memory: 33kB
                                                                     Buffers: shared hit=8257437 read=262495
                                                                     ->  Merge Join  (cost=534650.12..534652.42 rows=1 width=12) (actual time=131970.330..131971.784 rows=176 loops=1)
                                                                           Merge Cond: (mk.keyword_id = k.id)
                                                                           Buffers: shared hit=8257437 read=262495
                                                                           ->  Sort  (cost=534601.06..534602.21 rows=14821 width=16) (actual time=131890.542..131891.038 rows=2216 loops=1)
                                                                                 Sort Key: mk.keyword_id
                                                                                 Sort Method: quicksort  Memory: 275kB
                                                                                 Buffers: shared hit=8257422 read=262475
                                                                                 ->  Merge Join  (cost=494930.58..534569.17 rows=14821 width=16) (actual time=128831.287..131888.733 rows=3810 loops=1)
                                                                                       Merge Cond: (ci.movie_id = mk.movie_id)
                                                                                       Buffers: shared hit=8257422 read=262475
                                                                                       ->  Sort  (cost=494930.56..494930.84 rows=3518 width=8) (actual time=128558.216..128558.333 rows=556 loops=1)
                                                                                             Sort Key: ci.movie_id
                                                                                             Sort Method: quicksort  Memory: 51kB
                                                                                             Buffers: shared hit=8236097 read=226163
                                                                                             ->  Merge Join  (cost=0.03..494924.13 rows=3518 width=8) (actual time=103352.585..128557.961 rows=556 loops=1)
                                                                                                   Merge Cond: (chn.id = ci.person_role_id)
                                                                                                   Buffers: shared hit=8236097 read=226163
                                                                                                   ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36726.35 rows=628 width=4) (actual time=301.043..12520.677 rows=30 loops=1)
                                                                                                         Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                                                                                                         Rows Removed by Filter: 3140309
                                                                                                         Buffers: shared hit=3100270 read=47612
                                                                                                   ->  Index Scan using cast_info_idx_cid on cast_info ci  (cost=0.02..941334.49 rows=36244344 width=12) (actual time=0.017..112244.143 rows=16788386 loops=1)
                                                                                                         Buffers: shared hit=5135827 read=178551
                                                                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2571.266 rows=4463351 loops=1)
                                                                                             Buffers: shared hit=21325 read=36312
                                                                           ->  Sort  (cost=49.06..49.06 rows=8 width=4) (actual time=79.656..79.658 rows=8 loops=1)
                                                                                 Sort Key: k.id
                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                 Buffers: shared hit=15 read=20
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=27.399..79.613 rows=8 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                                                       Buffers: shared hit=15 read=20
                                                               ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.031..262.531 rows=131489 loops=1)
                                                                     Buffers: shared hit=84376 read=1088
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=25) (actual time=0.030..9025.870 rows=2174198 loops=1)
                                                               Filter: (production_year > 1950)
                                                               Rows Removed by Filter: 205852
                                                               Buffers: shared hit=2344478 read=40737
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.046 rows=1 loops=1)
                                                   Sort Key: kt.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                         Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                       Sort Key: cct1.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'cast'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..9.19 rows=1 width=4) (actual time=0.008..0.009 rows=2 loops=1)
                           Filter: ((kind)::text ~~ '%complete%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=2
         ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.013..1810.048 rows=1857974 loops=1)
               Buffers: shared hit=1780678 read=31603
 Planning Time: 5703.461 ms
 Execution Time: 143597.284 ms
(100 rows)


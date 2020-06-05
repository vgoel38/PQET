                                                                                                                          QUERY PLAN                                                                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=608819.53..608819.53 rows=1 width=32) (actual time=143734.736..143734.736 rows=1 loops=1)
   Buffers: shared hit=14624901 read=375004
   ->  Merge Join  (cost=561227.46..608819.53 rows=1 width=17) (actual time=140050.255..143734.696 rows=17 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=14624901 read=375004
         ->  Sort  (cost=561227.44..561227.45 rows=1 width=21) (actual time=139584.236..139584.239 rows=18 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=10686299 read=304322
               ->  Merge Join  (cost=561218.26..561227.44 rows=1 width=21) (actual time=139579.545..139579.578 rows=33 loops=1)
                     Merge Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=10686295 read=304322
                     ->  Sort  (cost=561218.26..561218.26 rows=1 width=25) (actual time=139579.517..139579.522 rows=33 loops=1)
                           Sort Key: cc.status_id
                           Sort Method: quicksort  Memory: 27kB
                           Buffers: shared hit=10686293 read=304322
                           ->  Merge Join  (cost=561218.26..561218.26 rows=1 width=25) (actual time=139579.446..139579.478 rows=33 loops=1)
                                 Merge Cond: (cc.subject_id = cct.id)
                                 Buffers: shared hit=10686293 read=304322
                                 ->  Sort  (cost=561212.13..561212.13 rows=1 width=29) (actual time=139579.391..139579.397 rows=33 loops=1)
                                       Sort Key: cc.subject_id
                                       Sort Method: quicksort  Memory: 27kB
                                       Buffers: shared hit=10686292 read=304321
                                       ->  Merge Join  (cost=561212.13..561212.13 rows=1 width=29) (actual time=139579.316..139579.351 rows=33 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=10686292 read=304321
                                             ->  Sort  (cost=561206.01..561206.01 rows=1 width=33) (actual time=139579.233..139579.239 rows=33 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 27kB
                                                   Buffers: shared hit=10686291 read=304320
                                                   ->  Merge Join  (cost=534652.63..561206.01 rows=1 width=33) (actual time=137377.164..139579.188 rows=33 loops=1)
                                                         Merge Cond: (mk.movie_id = t.id)
                                                         Buffers: shared hit=10686291 read=304320
                                                         ->  Merge Join  (cost=534652.43..537882.02 rows=1 width=24) (actual time=130470.845..130563.428 rows=33 loops=1)
                                                               Merge Cond: (mk.movie_id = cc.movie_id)
                                                               Buffers: shared hit=8341813 read=263583
                                                               ->  Sort  (cost=534652.42..534652.42 rows=1 width=12) (actual time=130238.156..130238.204 rows=176 loops=1)
                                                                     Sort Key: ci.movie_id
                                                                     Sort Method: quicksort  Memory: 33kB
                                                                     Buffers: shared hit=8257437 read=262495
                                                                     ->  Merge Join  (cost=534650.12..534652.42 rows=1 width=12) (actual time=130237.191..130238.055 rows=176 loops=1)
                                                                           Merge Cond: (mk.keyword_id = k.id)
                                                                           Buffers: shared hit=8257437 read=262495
                                                                           ->  Sort  (cost=534601.06..534602.21 rows=14821 width=16) (actual time=130143.768..130144.094 rows=2216 loops=1)
                                                                                 Sort Key: mk.keyword_id
                                                                                 Sort Method: quicksort  Memory: 275kB
                                                                                 Buffers: shared hit=8257422 read=262475
                                                                                 ->  Merge Join  (cost=494930.58..534569.17 rows=14821 width=16) (actual time=127306.226..130141.864 rows=3810 loops=1)
                                                                                       Merge Cond: (ci.movie_id = mk.movie_id)
                                                                                       Buffers: shared hit=8257422 read=262475
                                                                                       ->  Sort  (cost=494930.56..494930.84 rows=3518 width=8) (actual time=127033.888..127033.975 rows=556 loops=1)
                                                                                             Sort Key: ci.movie_id
                                                                                             Sort Method: quicksort  Memory: 51kB
                                                                                             Buffers: shared hit=8236097 read=226163
                                                                                             ->  Merge Join  (cost=0.03..494924.13 rows=3518 width=8) (actual time=102283.819..127033.600 rows=556 loops=1)
                                                                                                   Merge Cond: (chn.id = ci.person_role_id)
                                                                                                   Buffers: shared hit=8236097 read=226163
                                                                                                   ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36726.35 rows=628 width=4) (actual time=293.883..12365.922 rows=30 loops=1)
                                                                                                         Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                                                                                                         Rows Removed by Filter: 3140309
                                                                                                         Buffers: shared hit=3100270 read=47612
                                                                                                   ->  Index Scan using cast_info_idx_cid on cast_info ci  (cost=0.02..941334.49 rows=36244344 width=12) (actual time=0.020..110805.067 rows=16788386 loops=1)
                                                                                                         Buffers: shared hit=5135827 read=178551
                                                                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.016..2399.760 rows=4463351 loops=1)
                                                                                             Buffers: shared hit=21325 read=36312
                                                                           ->  Sort  (cost=49.06..49.06 rows=8 width=4) (actual time=93.291..93.292 rows=8 loops=1)
                                                                                 Sort Key: k.id
                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                 Buffers: shared hit=15 read=20
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=41.015..93.245 rows=8 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                                                       Buffers: shared hit=15 read=20
                                                               ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.017..291.450 rows=131489 loops=1)
                                                                     Buffers: shared hit=84376 read=1088
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=21.167..8863.847 rows=1315331 loops=1)
                                                               Filter: (production_year > 2000)
                                                               Rows Removed by Filter: 1064719
                                                               Buffers: shared hit=2344478 read=40737
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.075..0.075 rows=1 loops=1)
                                                   Sort Key: kt.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.041..0.042 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                         Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.049..0.049 rows=1 loops=1)
                                       Sort Key: cct.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'cast'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.023..0.024 rows=2 loops=1)
                           Filter: ((kind)::text ~~ '%complete%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=2
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=4) (actual time=466.011..4150.443 rows=2 loops=1)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 4167489
               Buffers: shared hit=3938602 read=70682
 Planning Time: 5836.778 ms
 Execution Time: 143752.514 ms
(102 rows)


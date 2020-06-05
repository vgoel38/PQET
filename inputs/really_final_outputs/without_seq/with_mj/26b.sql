                                                                                                                                      QUERY PLAN                                                                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=624112.77..624112.77 rows=1 width=96) (actual time=150786.935..150786.935 rows=1 loops=1)
   Buffers: shared hit=13466845 read=367590
   ->  Merge Join  (cost=624112.77..624112.77 rows=1 width=39) (actual time=150786.735..150786.806 rows=93 loops=1)
         Merge Cond: (mi_idx.info_type_id = it.id)
         Buffers: shared hit=13466845 read=367590
         ->  Sort  (cost=624106.65..624106.65 rows=1 width=43) (actual time=150786.650..150786.678 rows=226 loops=1)
               Sort Key: mi_idx.info_type_id
               Sort Method: quicksort  Memory: 45kB
               Buffers: shared hit=13466844 read=367589
               ->  Merge Join  (cost=624106.64..624106.65 rows=1 width=43) (actual time=150781.694..150781.872 rows=226 loops=1)
                     Merge Cond: (t.kind_id = kt.id)
                     Buffers: shared hit=13466840 read=367589
                     ->  Sort  (cost=624100.52..624100.52 rows=1 width=47) (actual time=150781.640..150781.670 rows=227 loops=1)
                           Sort Key: t.kind_id
                           Sort Method: quicksort  Memory: 49kB
                           Buffers: shared hit=13466839 read=367588
                           ->  Merge Join  (cost=600805.32..624100.52 rows=1 width=47) (actual time=141967.128..150781.477 rows=246 loops=1)
                                 Merge Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=13466839 read=367588
                                 ->  Sort  (cost=600805.12..600805.12 rows=1 width=42) (actual time=141212.662..141212.907 rows=1020 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 113kB
                                       Buffers: shared hit=10987681 read=324754
                                       ->  Merge Join  (cost=553229.90..600805.12 rows=1 width=42) (actual time=138252.957..141211.753 rows=1020 loops=1)
                                             Merge Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=10987681 read=324754
                                             ->  Sort  (cost=553229.85..553229.85 rows=1 width=46) (actual time=138210.591..138210.863 rows=1020 loops=1)
                                                   Sort Key: ci.person_id
                                                   Sort Method: quicksort  Memory: 121kB
                                                   Buffers: shared hit=8408723 read=278978
                                                   ->  Merge Join  (cost=553229.73..553229.85 rows=1 width=46) (actual time=138078.958..138210.121 rows=1020 loops=1)
                                                         Merge Cond: (k.id = mk.keyword_id)
                                                         Buffers: shared hit=8408723 read=278978
                                                         ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=40.531..40.533 rows=4 loops=1)
                                                               Sort Key: k.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=7 read=12
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=15.901..40.501 rows=4 loops=1)
                                                                     Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                                                                     Buffers: shared hit=7 read=12
                                                         ->  Sort  (cost=553205.20..553205.26 rows=779 width=50) (actual time=138017.283..138076.249 rows=412015 loops=1)
                                                               Sort Key: mk.keyword_id
                                                               Sort Method: quicksort  Memory: 100810kB
                                                               Buffers: shared hit=8408716 read=278966
                                                               ->  Merge Join  (cost=513566.94..553204.04 rows=779 width=50) (actual time=134710.549..137618.809 rows=692523 loops=1)
                                                                     Merge Cond: (ci.movie_id = mk.movie_id)
                                                                     Buffers: shared hit=8408716 read=278966
                                                                     ->  Sort  (cost=513566.92..513566.94 rows=185 width=42) (actual time=134657.124..134658.675 rows=12845 loops=1)
                                                                           Sort Key: mi_idx.movie_id
                                                                           Sort Method: quicksort  Memory: 1472kB
                                                                           Buffers: shared hit=8378965 read=242172
                                                                           ->  Merge Join  (cost=513557.40..513566.71 rows=185 width=42) (actual time=134648.421..134651.994 rows=12845 loops=1)
                                                                                 Merge Cond: (cct.id = cc.status_id)
                                                                                 Buffers: shared hit=8378965 read=242172
                                                                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.043..0.049 rows=2 loops=1)
                                                                                       Filter: ((kind)::text ~~ '%complete%'::text)
                                                                                       Rows Removed by Filter: 2
                                                                                       Buffers: shared hit=2
                                                                                 ->  Sort  (cost=513557.39..513557.45 rows=741 width=46) (actual time=134648.374..134648.983 rows=12845 loops=1)
                                                                                       Sort Key: cc.status_id
                                                                                       Sort Method: quicksort  Memory: 1561kB
                                                                                       Buffers: shared hit=8378963 read=242172
                                                                                       ->  Merge Join  (cost=513555.78..513556.30 rows=741 width=46) (actual time=134640.298..134644.109 rows=12845 loops=1)
                                                                                             Merge Cond: (cct.id = cc.subject_id)
                                                                                             Buffers: shared hit=8378963 read=242172
                                                                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.053..0.054 rows=1 loops=1)
                                                                                                   Sort Key: cct.id
                                                                                                   Sort Method: quicksort  Memory: 25kB
                                                                                                   Buffers: shared hit=1 read=1
                                                                                                   ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.035..0.036 rows=1 loops=1)
                                                                                                         Index Cond: ((kind)::text = 'cast'::text)
                                                                                                         Buffers: shared hit=1 read=1
                                                                                             ->  Sort  (cost=513549.66..513549.89 rows=2964 width=50) (actual time=134640.239..134640.849 rows=12846 loops=1)
                                                                                                   Sort Key: cc.subject_id
                                                                                                   Sort Method: quicksort  Memory: 2919kB
                                                                                                   Buffers: shared hit=8378962 read=242171
                                                                                                   ->  Merge Join  (cost=498006.30..513544.35 rows=2964 width=50) (actual time=132718.157..134623.932 rows=20701 loops=1)
                                                                                                         Merge Cond: (ci.movie_id = cc.movie_id)
                                                                                                         Buffers: shared hit=8378962 read=242171
                                                                                                         ->  Merge Join  (cost=498005.23..510311.85 rows=34796 width=38) (actual time=132712.052..134339.359 rows=41676 loops=1)
                                                                                                               Merge Cond: (mi_idx.movie_id = ci.movie_id)
                                                                                                               Buffers: shared hit=8283269 read=241081
                                                                                                               ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=0.122..1306.513 rows=52862 loops=1)
                                                                                                                     Filter: (info > '8.0'::text)
                                                                                                                     Rows Removed by Filter: 1327173
                                                                                                                     Buffers: shared hit=13571 read=12220
                                                                                                               ->  Sort  (cost=498005.22..498086.21 rows=1043217 width=24) (actual time=132711.894..132840.613 rows=625456 loops=1)
                                                                                                                     Sort Key: ci.movie_id
                                                                                                                     Sort Method: quicksort  Memory: 71409kB
                                                                                                                     Buffers: shared hit=8269698 read=228861
                                                                                                                     ->  Merge Join  (cost=0.03..494766.61 rows=1043217 width=24) (actual time=14868.419..132349.268 rows=623586 loops=1)
                                                                                                                           Merge Cond: (chn.id = ci.person_role_id)
                                                                                                                           Buffers: shared hit=8269698 read=228861
                                                                                                                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=20) (actual time=64.832..18383.132 rows=180152 loops=1)
                                                                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                                                                 Rows Removed by Filter: 2960187
                                                                                                                                 Buffers: shared hit=3100270 read=47612
                                                                                                                           ->  Index Scan using cast_info_idx_cid on cast_info ci  (cost=0.02..941334.49 rows=36244344 width=12) (actual time=0.043..109986.201 rows=17571520 loops=1)
                                                                                                                                 Buffers: shared hit=5169428 read=181249
                                                                                                         ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.018..231.188 rows=146851 loops=1)
                                                                                                               Buffers: shared hit=95693 read=1090
                                                                     ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2131.863 rows=5079601 loops=1)
                                                                           Buffers: shared hit=29751 read=36794
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.025..2648.426 rows=2693151 loops=1)
                                                   Buffers: shared hit=2578958 read=45776
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=3.692..9453.211 rows=1010298 loops=1)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1506294
                                       Buffers: shared hit=2479158 read=42834
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.047 rows=1 loops=1)
                           Sort Key: kt.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'movie'::text)
                                 Buffers: shared hit=1 read=1
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
               Sort Key: it.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=1 read=1
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                     Index Cond: ((info)::text = 'rating'::text)
                     Buffers: shared hit=1 read=1
 Planning Time: 10141.719 ms
 Execution Time: 150828.937 ms
(125 rows)


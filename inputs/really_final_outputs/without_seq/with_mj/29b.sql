                                                                                                                                                                     QUERY PLAN                                                                                                                                                                     
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1269480.44..1269480.44 rows=1 width=96) (actual time=143069.681..143069.681 rows=1 loops=1)
   Buffers: shared hit=11890327 read=690277
   ->  Merge Join  (cost=1269480.44..1269480.44 rows=1 width=48) (actual time=143069.622..143069.627 rows=15 loops=1)
         Merge Cond: (cct2.id = cc.status_id)
         Buffers: shared hit=11890327 read=690277
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=10.778..10.779 rows=1 loops=1)
               Sort Key: cct2.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=5 read=1
               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.047..0.048 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'complete+verified'::text)
                     Buffers: shared hit=1 read=1
         ->  Sort  (cost=1269474.31..1269474.31 rows=1 width=52) (actual time=143058.837..143058.838 rows=15 loops=1)
               Sort Key: cc.status_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=11890322 read=690276
               ->  Merge Join  (cost=1269474.31..1269474.31 rows=1 width=52) (actual time=143058.799..143058.805 rows=15 loops=1)
                     Merge Cond: (cct1.id = cc.subject_id)
                     Buffers: shared hit=11890322 read=690276
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.041..0.041 rows=1 loops=1)
                           Sort Key: cct1.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=2
                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'cast'::text)
                                 Buffers: shared hit=2
                     ->  Sort  (cost=1269468.19..1269468.19 rows=1 width=56) (actual time=143058.754..143058.755 rows=15 loops=1)
                           Sort Key: cc.subject_id
                           Sort Method: quicksort  Memory: 26kB
                           Buffers: shared hit=11890320 read=690276
                           ->  Merge Join  (cost=1266174.20..1269468.19 rows=1 width=56) (actual time=143058.717..143058.731 rows=15 loops=1)
                                 Merge Cond: (t.id = cc.movie_id)
                                 Buffers: shared hit=11890320 read=690276
                                 ->  Sort  (cost=1266174.19..1266174.19 rows=1 width=68) (actual time=142802.255..142802.256 rows=15 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 27kB
                                       Buffers: shared hit=11819694 read=689245
                                       ->  Merge Join  (cost=1266174.19..1266174.19 rows=1 width=68) (actual time=142802.208..142802.224 rows=15 loops=1)
                                             Merge Cond: (k.id = mk.keyword_id)
                                             Buffers: shared hit=11819694 read=689245
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=20.190..20.191 rows=1 loops=1)
                                                   Sort Key: k.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=20.171..20.174 rows=1 loops=1)
                                                         Index Cond: (keyword = 'computer-animation'::text)
                                                         Buffers: shared read=4
                                             ->  Sort  (cost=1266168.06..1266168.06 rows=2 width=72) (actual time=142781.328..142781.482 rows=931 loops=1)
                                                   Sort Key: mk.keyword_id
                                                   Sort Method: quicksort  Memory: 276kB
                                                   Buffers: shared hit=11819694 read=689241
                                                   ->  Merge Join  (cost=1226531.04..1266168.06 rows=2 width=72) (actual time=142776.377..142778.763 rows=1620 loops=1)
                                                         Merge Cond: (t.id = mk.movie_id)
                                                         Buffers: shared hit=11819694 read=689241
                                                         ->  Sort  (cost=1226531.02..1226531.02 rows=1 width=64) (actual time=140216.968..140216.974 rows=15 loops=1)
                                                               Sort Key: mc.movie_id
                                                               Sort Method: quicksort  Memory: 26kB
                                                               Buffers: shared hit=11802597 read=661705
                                                               ->  Merge Join  (cost=1226531.02..1226531.02 rows=1 width=64) (actual time=140216.920..140216.938 rows=15 loops=1)
                                                                     Merge Cond: (it.id = mi.info_type_id)
                                                                     Buffers: shared hit=11802597 read=661705
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.067..0.068 rows=1 loops=1)
                                                                           Sort Key: it.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.047..0.048 rows=1 loops=1)
                                                                                 Index Cond: ((info)::text = 'release dates'::text)
                                                                                 Buffers: shared hit=1 read=1
                                                                     ->  Sort  (cost=1226524.90..1226524.90 rows=1 width=68) (actual time=140216.844..140216.847 rows=15 loops=1)
                                                                           Sort Key: mi.info_type_id
                                                                           Sort Method: quicksort  Memory: 27kB
                                                                           Buffers: shared hit=11802596 read=661704
                                                                           ->  Merge Join  (cost=609846.45..1226524.90 rows=1 width=68) (actual time=140216.245..140216.802 rows=15 loops=1)
                                                                                 Merge Cond: (mi.movie_id = t.id)
                                                                                 Buffers: shared hit=11802596 read=661704
                                                                                 ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..616648.54 rows=385264 width=8) (actual time=114.286..83762.800 rows=338857 loops=1)
                                                                                       Filter: (info ~~ 'USA:%200%'::text)
                                                                                       Rows Removed by Filter: 11527353
                                                                                       Buffers: shared hit=7344239 read=166280
                                                                                 ->  Sort  (cost=609846.44..609846.44 rows=1 width=60) (actual time=56339.919..56339.924 rows=15 loops=1)
                                                                                       Sort Key: mc.movie_id
                                                                                       Sort Method: quicksort  Memory: 26kB
                                                                                       Buffers: shared hit=4458357 read=495424
                                                                                       ->  Merge Join  (cost=609846.44..609846.44 rows=1 width=60) (actual time=56339.858..56339.878 rows=15 loops=1)
                                                                                             Merge Cond: (ci.person_role_id = chn.id)
                                                                                             Buffers: shared hit=4458357 read=495424
                                                                                             ->  Sort  (cost=609840.31..609840.31 rows=1 width=48) (actual time=56282.110..56282.113 rows=15 loops=1)
                                                                                                   Sort Key: ci.person_role_id
                                                                                                   Sort Method: quicksort  Memory: 26kB
                                                                                                   Buffers: shared hit=4458357 read=495420
                                                                                                   ->  Merge Join  (cost=609840.30..609840.30 rows=1 width=48) (actual time=56282.079..56282.084 rows=15 loops=1)
                                                                                                         Merge Cond: (ci.role_id = rt.id)
                                                                                                         Buffers: shared hit=4458357 read=495420
                                                                                                         ->  Sort  (cost=609834.18..609834.18 rows=1 width=52) (actual time=56282.046..56282.047 rows=15 loops=1)
                                                                                                               Sort Key: ci.role_id
                                                                                                               Sort Method: quicksort  Memory: 26kB
                                                                                                               Buffers: shared hit=4458356 read=495419
                                                                                                               ->  Merge Join  (cost=561941.14..609834.18 rows=1 width=52) (actual time=55412.040..56282.023 rows=15 loops=1)
                                                                                                                     Merge Cond: (ci.person_id = n.id)
                                                                                                                     Buffers: shared hit=4458356 read=495419
                                                                                                                     ->  Sort  (cost=561941.12..561941.12 rows=1 width=49) (actual time=53499.435..53499.469 rows=257 loops=1)
                                                                                                                           Sort Key: pi.person_id
                                                                                                                           Sort Method: quicksort  Memory: 45kB
                                                                                                                           Buffers: shared hit=1995026 read=451695
                                                                                                                           ->  Merge Join  (cost=561941.12..561941.12 rows=1 width=49) (actual time=53499.239..53499.342 rows=257 loops=1)
                                                                                                                                 Merge Cond: (pi.info_type_id = it3.id)
                                                                                                                                 Buffers: shared hit=1995026 read=451695
                                                                                                                                 ->  Sort  (cost=561935.00..561935.00 rows=5 width=53) (actual time=53496.762..53497.600 rows=16268 loops=1)
                                                                                                                                       Sort Key: pi.info_type_id
                                                                                                                                       Sort Method: quicksort  Memory: 4275kB
                                                                                                                                       Buffers: shared hit=1995024 read=451695
                                                                                                                                       ->  Merge Join  (cost=390567.62..561935.00 rows=5 width=53) (actual time=45718.651..53479.597 rows=35051 loops=1)
                                                                                                                                             Merge Cond: (an.person_id = ci.person_id)
                                                                                                                                             Buffers: shared hit=1995024 read=451695
                                                                                                                                             ->  Merge Join  (cost=0.03..199531.94 rows=5042528 width=12) (actual time=0.095..7649.375 rows=3996159 loops=1)
                                                                                                                                                   Merge Cond: (an.person_id = pi.person_id)
                                                                                                                                                   Buffers: shared hit=313092 read=70261
                                                                                                                                                   ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.034..639.051 rows=558417 loops=1)
                                                                                                                                                         Buffers: shared hit=194856 read=12918
                                                                                                                                                   ->  Materialize  (cost=0.01..156069.36 rows=2963664 width=8) (actual time=0.057..5147.066 rows=4755044 loops=1)
                                                                                                                                                         Buffers: shared hit=118236 read=57343
                                                                                                                                                         ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..155839.26 rows=2963664 width=8) (actual time=0.047..4340.353 rows=2444036 loops=1)
                                                                                                                                                               Buffers: shared hit=118236 read=57343
                                                                                                                                             ->  Materialize  (cost=390567.60..390567.60 rows=1 width=41) (actual time=45251.151..45253.896 rows=35141 loops=1)
                                                                                                                                                   Buffers: shared hit=1681932 read=381434
                                                                                                                                                   ->  Sort  (cost=390567.60..390567.60 rows=1 width=41) (actual time=45251.147..45251.220 rows=218 loops=1)
                                                                                                                                                         Sort Key: ci.person_id
                                                                                                                                                         Sort Method: quicksort  Memory: 42kB
                                                                                                                                                         Buffers: shared hit=1681932 read=381434
                                                                                                                                                         ->  Merge Join  (cost=390291.78..390567.60 rows=1 width=41) (actual time=45250.988..45251.057 rows=218 loops=1)
                                                                                                                                                               Merge Cond: (t.id = ci.movie_id)
                                                                                                                                                               Buffers: shared hit=1681932 read=381434
                                                                                                                                                               ->  Merge Join  (cost=67531.83..67678.11 rows=1 width=25) (actual time=15667.531..15667.538 rows=6 loops=1)
                                                                                                                                                                     Merge Cond: (mc.movie_id = t.id)
                                                                                                                                                                     Buffers: shared hit=1681925 read=29753
                                                                                                                                                                     ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=15435.774..15508.189 rows=921644 loops=1)
                                                                                                                                                                           Sort Key: mc.movie_id
                                                                                                                                                                           Sort Method: quicksort  Memory: 103237kB
                                                                                                                                                                           Buffers: shared hit=1681925 read=29747
                                                                                                                                                                           ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.048..14902.380 rows=1153798 loops=1)
                                                                                                                                                                                 Merge Cond: (cn.id = mc.company_id)
                                                                                                                                                                                 Buffers: shared hit=1681925 read=29747
                                                                                                                                                                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.027..1690.252 rows=84843 loops=1)
                                                                                                                                                                                       Filter: ((country_code)::text = '[us]'::text)
                                                                                                                                                                                       Rows Removed by Filter: 150154
                                                                                                                                                                                       Buffers: shared hit=231720 read=3834
                                                                                                                                                                                 ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.019..12617.610 rows=2609129 loops=1)
                                                                                                                                                                                       Buffers: shared hit=1450205 read=25913
                                                                                                                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=21) (actual time=48.885..48.885 rows=2 loops=1)
                                                                                                                                                                           Sort Key: t.id
                                                                                                                                                                           Sort Method: quicksort  Memory: 25kB
                                                                                                                                                                           Buffers: shared read=6
                                                                                                                                                                           ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=44.733..48.863 rows=2 loops=1)
                                                                                                                                                                                 Index Cond: (title = 'Shrek 2'::text)
                                                                                                                                                                                 Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                                                                                                                 Rows Removed by Filter: 1
                                                                                                                                                                                 Buffers: shared read=6
                                                                                                                                                               ->  Sort  (cost=322759.95..322824.72 rows=834248 width=16) (actual time=29437.135..29498.716 rows=778568 loops=1)
                                                                                                                                                                     Sort Key: ci.movie_id
                                                                                                                                                                     Sort Method: quicksort  Memory: 63797kB
                                                                                                                                                                     Buffers: shared hit=7 read=351681
                                                                                                                                                                     ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..320211.85 rows=834248 width=16) (actual time=33.659..28930.916 rows=836701 loops=1)
                                                                                                                                                                           Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                                                                                                           Rows Removed by Filter: 35407643
                                                                                                                                                                           Buffers: shared hit=7 read=351681
                                                                                                                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=1)
                                                                                                                                       Sort Key: it3.id
                                                                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                                                                       Buffers: shared hit=2
                                                                                                                                       ->  Index Scan using info_type_info_key on info_type it3  (cost=0.00..6.13 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                                                                                                                             Index Cond: ((info)::text = 'height'::text)
                                                                                                                                             Buffers: shared hit=2
                                                                                                                     ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1888.377..2776.906 rows=44377 loops=1)
                                                                                                                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                                                                                           Rows Removed by Filter: 2527794
                                                                                                                           Buffers: shared hit=2463330 read=43724
                                                                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                                                                                               Sort Key: rt.id
                                                                                                               Sort Method: quicksort  Memory: 25kB
                                                                                                               Buffers: shared hit=1 read=1
                                                                                                               ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                                                                                                     Index Cond: ((role)::text = 'actress'::text)
                                                                                                                     Buffers: shared hit=1 read=1
                                                                                             ->  Sort  (cost=6.13..6.13 rows=1 width=20) (actual time=57.739..57.739 rows=1 loops=1)
                                                                                                   Sort Key: chn.id
                                                                                                   Sort Method: quicksort  Memory: 25kB
                                                                                                   Buffers: shared read=4
                                                                                                   ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=57.727..57.730 rows=1 loops=1)
                                                                                                         Index Cond: (name = 'Queen'::text)
                                                                                                         Buffers: shared read=4
                                                         ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.032..1996.989 rows=3385133 loops=1)
                                                               Buffers: shared hit=17097 read=27536
                                 ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.030..232.140 rows=110770 loops=1)
                                       Buffers: shared hit=70626 read=1031
 Planning Time: 19911.755 ms
 Execution Time: 143110.143 ms
(196 rows)


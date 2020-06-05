                                                                                                                                 QUERY PLAN                                                                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1455903.08..1455903.08 rows=1 width=128) (actual time=181909.739..181909.739 rows=1 loops=1)
   Buffers: shared hit=16373455 read=590240
   ->  Merge Join  (cost=1455903.07..1455903.07 rows=1 width=80) (actual time=181909.642..181909.692 rows=28 loops=1)
         Merge Cond: (k.id = mk.keyword_id)
         Buffers: shared hit=16373455 read=590240
         ->  Sort  (cost=42.93..42.93 rows=7 width=4) (actual time=74.183..74.184 rows=7 loops=1)
               Sort Key: k.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=18 read=17
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=28.736..69.352 rows=7 loops=1)
                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                     Buffers: shared hit=14 read=17
         ->  Sort  (cost=1455860.14..1455860.14 rows=2 width=84) (actual time=181835.442..181835.461 rows=146 loops=1)
               Sort Key: mk.keyword_id
               Sort Method: quicksort  Memory: 155kB
               Buffers: shared hit=16373437 read=590223
               ->  Merge Join  (cost=1392395.86..1455860.14 rows=2 width=84) (actual time=178387.349..181834.864 rows=1060 loops=1)
                     Merge Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=16373437 read=590223
                     ->  Merge Join  (cost=1392395.84..1416223.11 rows=1 width=100) (actual time=176854.897..179170.457 rows=7 loops=1)
                           Merge Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=16356850 read=563437
                           ->  Sort  (cost=1392395.83..1392395.83 rows=1 width=79) (actual time=169861.225..169861.497 rows=2091 loops=1)
                                 Sort Key: mi.movie_id
                                 Sort Method: quicksort  Memory: 330kB
                                 Buffers: shared hit=13866974 read=520535
                                 ->  Merge Join  (cost=1392395.83..1392395.83 rows=1 width=79) (actual time=169859.679..169860.331 rows=2091 loops=1)
                                       Merge Cond: (cc.status_id = cct2.id)
                                       Buffers: shared hit=13866974 read=520535
                                       ->  Sort  (cost=1392389.70..1392389.70 rows=1 width=83) (actual time=169859.126..169859.356 rows=4779 loops=1)
                                             Sort Key: cc.status_id
                                             Sort Method: quicksort  Memory: 815kB
                                             Buffers: shared hit=13866973 read=520534
                                             ->  Merge Join  (cost=1392380.52..1392389.70 rows=1 width=83) (actual time=169855.975..169857.424 rows=4779 loops=1)
                                                   Merge Cond: (cct1.id = cc.subject_id)
                                                   Buffers: shared hit=13866973 read=520534
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..9.19 rows=2 width=4) (actual time=0.023..0.030 rows=2 loops=1)
                                                         Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=2
                                                   ->  Sort  (cost=1392380.52..1392380.52 rows=1 width=87) (actual time=169855.946..169856.174 rows=4779 loops=1)
                                                         Sort Key: cc.subject_id
                                                         Sort Method: quicksort  Memory: 859kB
                                                         Buffers: shared hit=13866971 read=520534
                                                         ->  Merge Join  (cost=1389149.45..1392380.52 rows=1 width=87) (actual time=169606.208..169853.079 rows=4779 loops=1)
                                                               Merge Cond: (mi.movie_id = cc.movie_id)
                                                               Buffers: shared hit=13866971 read=520534
                                                               ->  Sort  (cost=1389149.43..1389149.43 rows=2 width=75) (actual time=169553.236..169554.372 rows=11663 loops=1)
                                                                     Sort Key: mi.movie_id
                                                                     Sort Method: quicksort  Memory: 1356kB
                                                                     Buffers: shared hit=13781258 read=519444
                                                                     ->  Merge Join  (cost=1389149.40..1389149.43 rows=2 width=75) (actual time=169544.835..169548.447 rows=11663 loops=1)
                                                                           Merge Cond: (mi.info_type_id = it1.id)
                                                                           Buffers: shared hit=13781258 read=519444
                                                                           ->  Sort  (cost=1389143.27..1389143.29 rows=241 width=79) (actual time=169544.805..169545.341 rows=11664 loops=1)
                                                                                 Sort Key: mi.info_type_id
                                                                                 Sort Method: quicksort  Memory: 1578kB
                                                                                 Buffers: shared hit=13781256 read=519444
                                                                                 ->  Merge Join  (cost=1389138.72..1389142.97 rows=241 width=79) (actual time=169536.868..169541.094 rows=12026 loops=1)
                                                                                       Merge Cond: (it2.id = mi_idx.info_type_id)
                                                                                       Buffers: shared hit=13781256 read=519444
                                                                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.057..0.057 rows=1 loops=1)
                                                                                             Sort Key: it2.id
                                                                                             Sort Method: quicksort  Memory: 25kB
                                                                                             Buffers: shared hit=1 read=1
                                                                                             ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.042..0.043 rows=1 loops=1)
                                                                                                   Index Cond: ((info)::text = 'votes'::text)
                                                                                                   Buffers: shared hit=1 read=1
                                                                                       ->  Sort  (cost=1389132.60..1389134.71 rows=27282 width=83) (actual time=169533.451..169536.069 rows=24053 loops=1)
                                                                                             Sort Key: mi_idx.info_type_id
                                                                                             Sort Method: quicksort  Memory: 6122kB
                                                                                             Buffers: shared hit=13781255 read=519443
                                                                                             ->  Merge Join  (cost=760284.06..1389070.17 rows=27282 width=83) (actual time=65083.125..169474.734 rows=36140 loops=1)
                                                                                                   Merge Cond: (mi.movie_id = mi_idx.movie_id)
                                                                                                   Buffers: shared hit=13781255 read=519443
                                                                                                   ->  Merge Join  (cost=760284.05..1376987.57 rows=30926 width=69) (actual time=64255.364..164980.675 rows=20103 loops=1)
                                                                                                         Merge Cond: (mi.movie_id = ci.movie_id)
                                                                                                         Buffers: shared hit=13767239 read=507223
                                                                                                         ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..616648.54 rows=73417 width=50) (actual time=267.609..102167.404 rows=73047 loops=1)
                                                                                                               Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                                                                               Rows Removed by Filter: 14762673
                                                                                                               Buffers: shared hit=9072952 read=202423
                                                                                                         ->  Sort  (cost=760284.04..760324.41 rows=519996 width=19) (actual time=62404.275..62543.052 rows=561730 loops=1)
                                                                                                               Sort Key: ci.movie_id
                                                                                                               Sort Method: quicksort  Memory: 65537kB
                                                                                                               Buffers: shared hit=4694287 read=304800
                                                                                                               ->  Merge Join  (cost=0.06..758750.85 rows=519996 width=19) (actual time=38.125..61984.664 rows=558518 loops=1)
                                                                                                                     Merge Cond: (n.id = ci.person_id)
                                                                                                                     Buffers: shared hit=4694287 read=304800
                                                                                                                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.029..9576.777 rows=1739579 loops=1)
                                                                                                                           Filter: ((gender)::text = 'm'::text)
                                                                                                                           Rows Removed by Filter: 2427912
                                                                                                                           Buffers: shared hit=3938602 read=70682
                                                                                                                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=26.447..51678.862 rows=558519 loops=1)
                                                                                                                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                                                                                                           Rows Removed by Filter: 17022207
                                                                                                                           Buffers: shared hit=755685 read=234118
                                                                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.021..3984.288 rows=1392004 loops=1)
                                                                                                         Buffers: shared hit=14016 read=12220
                                                                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                                                 Sort Key: it1.id
                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'genres'::text)
                                                                                       Buffers: shared hit=2
                                                               ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.015..261.649 rows=133858 loops=1)
                                                                     Buffers: shared hit=85713 read=1090
                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                             Sort Key: cct2.id
                                             Sort Method: quicksort  Memory: 25kB
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'complete+verified'::text)
                                                   Buffers: shared hit=1 read=1
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23827.24 rows=516 width=21) (actual time=616.075..9308.326 rows=533 loops=1)
                                 Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                 Rows Removed by Filter: 2527779
                                 Buffers: shared hit=2489876 read=42902
                     ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.018..2093.216 rows=3292212 loops=1)
                           Buffers: shared hit=16587 read=26786
 Planning Time: 15318.905 ms
 Execution Time: 181933.386 ms
(123 rows)


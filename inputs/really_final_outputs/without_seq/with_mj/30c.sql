                                                                                                                                 QUERY PLAN                                                                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1457344.98..1457344.98 rows=1 width=128) (actual time=195365.386..195365.386 rows=1 loops=1)
   Buffers: shared hit=16772004 read=600214
   ->  Merge Join  (cost=1457344.98..1457344.98 rows=1 width=80) (actual time=195325.262..195332.392 rows=8024 loops=1)
         Merge Cond: (cc.status_id = cct.id)
         Buffers: shared hit=16772004 read=600214
         ->  Sort  (cost=1457338.85..1457338.85 rows=1 width=84) (actual time=195323.985..195325.498 rows=14123 loops=1)
               Sort Key: cc.status_id
               Sort Method: quicksort  Memory: 1908kB
               Buffers: shared hit=16772002 read=600214
               ->  Merge Join  (cost=1457338.85..1457338.85 rows=1 width=84) (actual time=195308.832..195314.308 rows=14123 loops=1)
                     Merge Cond: (it.id = mi_idx.info_type_id)
                     Buffers: shared hit=16771998 read=600214
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.075..0.076 rows=1 loops=1)
                           Sort Key: it.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.058..0.060 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'votes'::text)
                                 Buffers: shared hit=1 read=1
                     ->  Sort  (cost=1457332.73..1457332.73 rows=1 width=88) (actual time=195303.198..195306.558 rows=28247 loops=1)
                           Sort Key: mi_idx.info_type_id
                           Sort Method: quicksort  Memory: 6812kB
                           Buffers: shared hit=16771997 read=600213
                           ->  Merge Join  (cost=1445194.60..1457332.73 rows=1 width=88) (actual time=194085.978..195274.306 rows=42761 loops=1)
                                 Merge Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=16771997 read=600213
                                 ->  Sort  (cost=1445194.59..1445194.59 rows=1 width=98) (actual time=193984.318..193986.212 rows=14156 loops=1)
                                       Sort Key: ci.movie_id
                                       Sort Method: quicksort  Memory: 2373kB
                                       Buffers: shared hit=16756926 read=588004
                                       ->  Merge Join  (cost=1445194.58..1445194.58 rows=1 width=98) (actual time=193973.730..193978.590 rows=14156 loops=1)
                                             Merge Cond: (mi.info_type_id = it.id)
                                             Buffers: shared hit=16756926 read=588004
                                             ->  Sort  (cost=1445188.46..1445188.46 rows=1 width=102) (actual time=193973.702..193974.371 rows=14157 loops=1)
                                                   Sort Key: mi.info_type_id
                                                   Sort Method: quicksort  Memory: 3140kB
                                                   Buffers: shared hit=16756924 read=588004
                                                   ->  Merge Join  (cost=1445188.46..1445188.46 rows=1 width=102) (actual time=193961.851..193967.176 rows=16860 loops=1)
                                                         Merge Cond: (cct.id = cc.subject_id)
                                                         Buffers: shared hit=16756924 read=588004
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.052..0.052 rows=1 loops=1)
                                                               Sort Key: cct.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.036..0.037 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'cast'::text)
                                                                     Buffers: shared hit=1 read=1
                                                         ->  Sort  (cost=1445182.33..1445182.33 rows=1 width=106) (actual time=193961.794..193962.572 rows=16861 loops=1)
                                                               Sort Key: cc.subject_id
                                                               Sort Method: quicksort  Memory: 4007kB
                                                               Buffers: shared hit=16756923 read=588003
                                                               ->  Merge Join  (cost=1441888.35..1445182.33 rows=1 width=106) (actual time=193720.050..193949.020 rows=23013 loops=1)
                                                                     Merge Cond: (t.id = cc.movie_id)
                                                                     Buffers: shared hit=16756923 read=588003
                                                                     ->  Sort  (cost=1441888.34..1441888.34 rows=4 width=94) (actual time=193661.795..193666.985 rows=30117 loops=1)
                                                                           Sort Key: ci.movie_id
                                                                           Sort Method: quicksort  Memory: 4929kB
                                                                           Buffers: shared hit=16661952 read=586913
                                                                           ->  Merge Join  (cost=1441877.53..1441888.34 rows=4 width=94) (actual time=193585.653..193648.213 rows=30117 loops=1)
                                                                                 Merge Cond: (k.id = mk.keyword_id)
                                                                                 Buffers: shared hit=16661952 read=586913
                                                                                 ->  Sort  (cost=42.93..42.93 rows=7 width=4) (actual time=69.259..69.262 rows=7 loops=1)
                                                                                       Sort Key: k.id
                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                       Buffers: shared hit=14 read=17
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=28.602..69.216 rows=7 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                             Buffers: shared hit=14 read=17
                                                                                 ->  Sort  (cost=1441834.59..1441840.00 rows=69615 width=98) (actual time=193507.844..193536.009 rows=176668 loops=1)
                                                                                       Sort Key: mk.keyword_id
                                                                                       Sort Method: quicksort  Memory: 204691kB
                                                                                       Buffers: shared hit=16661938 read=586896
                                                                                       ->  Merge Join  (cost=760284.10..1441660.70 rows=69615 width=98) (actual time=64999.410..192217.587 rows=1106684 loops=1)
                                                                                             Merge Cond: (t.id = mk.movie_id)
                                                                                             Buffers: shared hit=16661938 read=586896
                                                                                             ->  Merge Join  (cost=760284.08..1402610.18 rows=38906 width=90) (actual time=64970.119..181203.377 rows=46591 loops=1)
                                                                                                   Merge Cond: (t.id = mi.movie_id)
                                                                                                   Buffers: shared hit=16630522 read=550086
                                                                                                   ->  Merge Join  (cost=760284.07..783617.60 rows=519996 width=40) (actual time=62947.703..81676.899 rows=558504 loops=1)
                                                                                                         Merge Cond: (ci.movie_id = t.id)
                                                                                                         Buffers: shared hit=7182436 read=347663
                                                                                                         ->  Sort  (cost=760284.04..760324.41 rows=519996 width=19) (actual time=62790.923..62967.888 rows=558504 loops=1)
                                                                                                               Sort Key: ci.movie_id
                                                                                                               Sort Method: quicksort  Memory: 65537kB
                                                                                                               Buffers: shared hit=4694287 read=304800
                                                                                                               ->  Merge Join  (cost=0.06..758750.85 rows=519996 width=19) (actual time=47.822..62397.608 rows=558518 loops=1)
                                                                                                                     Merge Cond: (ci.person_id = n.id)
                                                                                                                     Buffers: shared hit=4694287 read=304800
                                                                                                                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=35.918..52304.445 rows=558519 loops=1)
                                                                                                                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                                                                                                           Rows Removed by Filter: 17022207
                                                                                                                           Buffers: shared hit=755685 read=234118
                                                                                                                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.043..9337.686 rows=1739579 loops=1)
                                                                                                                           Filter: ((gender)::text = 'm'::text)
                                                                                                                           Rows Removed by Filter: 2427912
                                                                                                                           Buffers: shared hit=3938602 read=70682
                                                                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.021..17298.039 rows=2525823 loops=1)
                                                                                                               Buffers: shared hit=2488149 read=42863
                                                                                                   ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..618952.22 rows=189170 width=50) (actual time=186.353..99259.476 rows=198427 loops=1)
                                                                                                         Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                                                                                         Rows Removed by Filter: 15250106
                                                                                                         Buffers: shared hit=9448086 read=202423
                                                                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.032..8967.656 rows=5192606 loops=1)
                                                                                                   Buffers: shared hit=31416 read=36810
                                                                     ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.022..234.070 rows=151884 loops=1)
                                                                           Buffers: shared hit=94971 read=1090
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                   Sort Key: it.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'genres'::text)
                                                         Buffers: shared hit=2
                                 ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.013..965.514 rows=1413432 loops=1)
                                       Buffers: shared hit=15071 read=12209
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
               Sort Key: cct.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=2
               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'complete+verified'::text)
                     Buffers: shared hit=2
 Planning Time: 15237.408 ms
 Execution Time: 195409.705 ms
(124 rows)


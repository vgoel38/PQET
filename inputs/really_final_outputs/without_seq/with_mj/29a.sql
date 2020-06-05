                                                                                                                                                                    QUERY PLAN                                                                                                                                                                     
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1276947.95..1276947.95 rows=1 width=96) (actual time=131580.871..131580.871 rows=1 loops=1)
   Buffers: shared hit=10957774 read=676598
   ->  Merge Join  (cost=1229054.90..1276947.95 rows=1 width=48) (actual time=131579.886..131580.341 rows=1620 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=10957774 read=676598
         ->  Sort  (cost=1229054.89..1229054.89 rows=1 width=45) (actual time=129654.980..129655.064 rows=1620 loops=1)
               Sort Key: an.person_id
               Sort Method: quicksort  Memory: 175kB
               Buffers: shared hit=9266929 read=646612
               ->  Merge Join  (cost=1229054.89..1229054.89 rows=1 width=45) (actual time=129618.427..129618.897 rows=1620 loops=1)
                     Merge Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=9266925 read=646612
                     ->  Sort  (cost=1229048.77..1229048.77 rows=1 width=49) (actual time=129618.397..129618.470 rows=1620 loops=1)
                           Sort Key: cc.status_id
                           Sort Method: quicksort  Memory: 175kB
                           Buffers: shared hit=9266923 read=646612
                           ->  Merge Join  (cost=1229048.76..1229048.77 rows=1 width=49) (actual time=129617.301..129617.956 rows=1620 loops=1)
                                 Merge Cond: (k.id = mk.keyword_id)
                                 Buffers: shared hit=9266923 read=646612
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=20.317..20.317 rows=1 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=20.292..20.294 rows=1 loops=1)
                                             Index Cond: (keyword = 'computer-animation'::text)
                                             Buffers: shared read=4
                                 ->  Sort  (cost=1229042.63..1229042.63 rows=2 width=53) (actual time=129569.207..129580.068 rows=100441 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 19813kB
                                       Buffers: shared hit=9266923 read=646608
                                       ->  Merge Join  (cost=1189405.61..1229042.63 rows=2 width=53) (actual time=129431.407..129502.768 rows=174960 loops=1)
                                             Merge Cond: (t.id = mk.movie_id)
                                             Buffers: shared hit=9266923 read=646608
                                             ->  Sort  (cost=1189405.60..1189405.60 rows=1 width=69) (actual time=126920.464..126920.583 rows=1620 loops=1)
                                                   Sort Key: cc.movie_id
                                                   Sort Method: quicksort  Memory: 276kB
                                                   Buffers: shared hit=9249826 read=619072
                                                   ->  Merge Join  (cost=1189405.60..1189405.60 rows=1 width=69) (actual time=126919.335..126919.915 rows=1620 loops=1)
                                                         Merge Cond: (pi.info_type_id = it3.id)
                                                         Buffers: shared hit=9249826 read=619072
                                                         ->  Sort  (cost=1189399.47..1189399.47 rows=1 width=73) (actual time=126919.216..126919.319 rows=2191 loops=1)
                                                               Sort Key: pi.info_type_id
                                                               Sort Method: quicksort  Memory: 880kB
                                                               Buffers: shared hit=9249824 read=619072
                                                               ->  Merge Join  (cost=1189399.47..1189399.47 rows=1 width=73) (actual time=126915.760..126917.316 rows=4890 loops=1)
                                                                     Merge Cond: (chn.id = ci.person_role_id)
                                                                     Buffers: shared hit=9249824 read=619072
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=20) (actual time=49.043..49.043 rows=1 loops=1)
                                                                           Sort Key: chn.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared read=4
                                                                           ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=49.013..49.017 rows=1 loops=1)
                                                                                 Index Cond: (name = 'Queen'::text)
                                                                                 Buffers: shared read=4
                                                                     ->  Sort  (cost=1189393.34..1189393.34 rows=1 width=61) (actual time=126866.710..126866.939 rows=4891 loops=1)
                                                                           Sort Key: ci.person_role_id
                                                                           Sort Method: quicksort  Memory: 3658kB
                                                                           Buffers: shared hit=9249824 read=619068
                                                                           ->  Merge Join  (cost=1189393.33..1189393.33 rows=1 width=61) (actual time=126852.143..126858.887 rows=20550 loops=1)
                                                                                 Merge Cond: (rt.id = ci.role_id)
                                                                                 Buffers: shared hit=9249824 read=619068
                                                                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.067..0.067 rows=1 loops=1)
                                                                                       Sort Key: rt.id
                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                       Buffers: shared hit=1 read=1
                                                                                       ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.051..0.052 rows=1 loops=1)
                                                                                             Index Cond: ((role)::text = 'actress'::text)
                                                                                             Buffers: shared hit=1 read=1
                                                                                 ->  Sort  (cost=1189387.21..1189387.21 rows=5 width=65) (actual time=126842.117..126845.138 rows=68720 loops=1)
                                                                                       Sort Key: ci.role_id
                                                                                       Sort Method: quicksort  Memory: 12736kB
                                                                                       Buffers: shared hit=9249823 read=619067
                                                                                       ->  Merge Join  (cost=1018019.83..1189387.21 rows=5 width=65) (actual time=118664.806..126802.849 rows=68720 loops=1)
                                                                                             Merge Cond: (an.person_id = ci.person_id)
                                                                                             Buffers: shared hit=9249823 read=619067
                                                                                             ->  Merge Join  (cost=0.03..199531.94 rows=5042528 width=12) (actual time=0.074..7868.644 rows=3996159 loops=1)
                                                                                                   Merge Cond: (an.person_id = pi.person_id)
                                                                                                   Buffers: shared hit=313092 read=70261
                                                                                                   ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.031..618.092 rows=558417 loops=1)
                                                                                                         Buffers: shared hit=194856 read=12918
                                                                                                   ->  Materialize  (cost=0.01..156069.36 rows=2963664 width=8) (actual time=0.036..5348.898 rows=4755044 loops=1)
                                                                                                         Buffers: shared hit=118236 read=57343
                                                                                                         ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..155839.26 rows=2963664 width=8) (actual time=0.029..4523.161 rows=2444036 loops=1)
                                                                                                               Buffers: shared hit=118236 read=57343
                                                                                             ->  Materialize  (cost=1018019.81..1018019.81 rows=1 width=53) (actual time=118317.834..118322.473 rows=68890 loops=1)
                                                                                                   Buffers: shared hit=8936731 read=548806
                                                                                                   ->  Sort  (cost=1018019.81..1018019.81 rows=1 width=53) (actual time=118317.828..118317.927 rows=380 loops=1)
                                                                                                         Sort Key: ci.person_id
                                                                                                         Sort Method: quicksort  Memory: 54kB
                                                                                                         Buffers: shared hit=8936731 read=548806
                                                                                                         ->  Merge Join  (cost=1017890.26..1018019.81 rows=1 width=53) (actual time=118317.565..118317.676 rows=380 loops=1)
                                                                                                               Merge Cond: (t.id = ci.movie_id)
                                                                                                               Buffers: shared hit=8936731 read=548806
                                                                                                               ->  Sort  (cost=695130.32..695130.32 rows=1 width=37) (actual time=89962.175..89962.177 rows=10 loops=1)
                                                                                                                     Sort Key: cc.movie_id
                                                                                                                     Sort Method: quicksort  Memory: 25kB
                                                                                                                     Buffers: shared hit=8936724 read=197125
                                                                                                                     ->  Merge Join  (cost=695130.32..695130.32 rows=1 width=37) (actual time=89962.137..89962.150 rows=10 loops=1)
                                                                                                                           Merge Cond: (cc.subject_id = cct.id)
                                                                                                                           Buffers: shared hit=8936724 read=197125
                                                                                                                           ->  Sort  (cost=695124.19..695124.19 rows=1 width=41) (actual time=89962.074..89962.076 rows=10 loops=1)
                                                                                                                                 Sort Key: cc.subject_id
                                                                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                                                                 Buffers: shared hit=8936723 read=197124
                                                                                                                                 ->  Merge Join  (cost=695124.19..695124.19 rows=1 width=41) (actual time=89962.034..89962.047 rows=10 loops=1)
                                                                                                                                       Merge Cond: (it.id = mi.info_type_id)
                                                                                                                                       Buffers: shared hit=8936723 read=197124
                                                                                                                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.061..0.062 rows=1 loops=1)
                                                                                                                                             Sort Key: it.id
                                                                                                                                             Sort Method: quicksort  Memory: 25kB
                                                                                                                                             Buffers: shared hit=1 read=1
                                                                                                                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.037..0.038 rows=1 loops=1)
                                                                                                                                                   Index Cond: ((info)::text = 'release dates'::text)
                                                                                                                                                   Buffers: shared hit=1 read=1
                                                                                                                                       ->  Sort  (cost=695118.07..695118.07 rows=1 width=45) (actual time=89961.965..89961.967 rows=10 loops=1)
                                                                                                                                             Sort Key: mi.info_type_id
                                                                                                                                             Sort Method: quicksort  Memory: 25kB
                                                                                                                                             Buffers: shared hit=8936722 read=197123
                                                                                                                                             ->  Merge Join  (cost=77264.84..695118.07 rows=1 width=45) (actual time=89959.542..89961.931 rows=10 loops=1)
                                                                                                                                                   Merge Cond: (t.id = mi.movie_id)
                                                                                                                                                   Buffers: shared hit=8936722 read=197123
                                                                                                                                                   ->  Merge Join  (cost=77264.83..77282.86 rows=1 width=37) (actual time=5382.210..5382.225 rows=5 loops=1)
                                                                                                                                                         Merge Cond: (mc.movie_id = t.id)
                                                                                                                                                         Buffers: shared hit=1589531 read=30843
                                                                                                                                                         ->  Sort  (cost=77258.69..77267.71 rows=116146 width=16) (actual time=5251.813..5276.048 rows=207444 loops=1)
                                                                                                                                                               Sort Key: cc.movie_id
                                                                                                                                                               Sort Method: quicksort  Memory: 25546kB
                                                                                                                                                               Buffers: shared hit=1589531 read=30837
                                                                                                                                                               ->  Merge Join  (cost=72293.48..76955.24 rows=116146 width=16) (actual time=3976.845..5122.839 rows=282816 loops=1)
                                                                                                                                                                     Merge Cond: (mc.company_id = cn.id)
                                                                                                                                                                     Buffers: shared hit=1589531 read=30837
                                                                                                                                                                     ->  Sort  (cost=72293.47..72318.45 rows=321700 width=20) (actual time=3976.815..4070.403 rows=612638 loops=1)
                                                                                                                                                                           Sort Key: mc.company_id
                                                                                                                                                                           Sort Method: quicksort  Memory: 72439kB
                                                                                                                                                                           Buffers: shared hit=1357811 read=27003
                                                                                                                                                                           ->  Merge Join  (cost=4.18..71379.56 rows=321700 width=20) (actual time=46.635..3679.706 rows=612638 loops=1)
                                                                                                                                                                                 Merge Cond: (cc.movie_id = mc.movie_id)
                                                                                                                                                                                 Buffers: shared hit=1357811 read=27003
                                                                                                                                                                                 ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.030..184.330 rows=132440 loops=1)
                                                                                                                                                                                       Buffers: shared hit=85110 read=1090
                                                                                                                                                                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.030..2788.725 rows=2807067 loops=1)
                                                                                                                                                                                       Buffers: shared hit=1272701 read=25913
                                                                                                                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.024..882.901 rows=84843 loops=1)
                                                                                                                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                                                                                                                           Rows Removed by Filter: 150154
                                                                                                                                                                           Buffers: shared hit=231720 read=3834
                                                                                                                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=21) (actual time=65.246..65.248 rows=3 loops=1)
                                                                                                                                                               Sort Key: t.id
                                                                                                                                                               Sort Method: quicksort  Memory: 25kB
                                                                                                                                                               Buffers: shared read=6
                                                                                                                                                               ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=55.538..65.206 rows=3 loops=1)
                                                                                                                                                                     Index Cond: (title = 'Shrek 2'::text)
                                                                                                                                                                     Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                                                                                     Buffers: shared read=6
                                                                                                                                                   ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..617800.38 rows=448472 width=8) (actual time=99.103..84445.729 rows=398385 loops=1)
                                                                                                                                                         Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                                                                                                         Rows Removed by Filter: 11469601
                                                                                                                                                         Buffers: shared hit=7347191 read=166280
                                                                                                                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.056..0.056 rows=1 loops=1)
                                                                                                                                 Sort Key: cct.id
                                                                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                                                                 Buffers: shared hit=1 read=1
                                                                                                                                 ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.040..0.041 rows=1 loops=1)
                                                                                                                                       Index Cond: ((kind)::text = 'cast'::text)
                                                                                                                                       Buffers: shared hit=1 read=1
                                                                                                               ->  Sort  (cost=322759.95..322824.72 rows=834248 width=16) (actual time=28212.811..28272.749 rows=778730 loops=1)
                                                                                                                     Sort Key: ci.movie_id
                                                                                                                     Sort Method: quicksort  Memory: 63797kB
                                                                                                                     Buffers: shared hit=7 read=351681
                                                                                                                     ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..320211.85 rows=834248 width=16) (actual time=33.437..27746.046 rows=836701 loops=1)
                                                                                                                           Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                                                           Rows Removed by Filter: 35407643
                                                                                                                           Buffers: shared hit=7 read=351681
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=1)
                                                               Sort Key: it3.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=2
                                                               ->  Index Scan using info_type_info_key on info_type it3  (cost=0.00..6.13 rows=1 width=4) (actual time=0.015..0.016 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'trivia'::text)
                                                                     Buffers: shared hit=2
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.010..1973.747 rows=3558473 loops=1)
                                                   Buffers: shared hit=17097 read=27536
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                           Sort Key: cct.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=2
                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'complete+verified'::text)
                                 Buffers: shared hit=2
         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1900.523..1924.476 rows=4355 loops=1)
               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 1759588
               Buffers: shared hit=1690845 read=29986
 Planning Time: 19700.099 ms
 Execution Time: 131658.557 ms
(195 rows)


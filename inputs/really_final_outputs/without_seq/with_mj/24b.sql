                                                                                                                                             QUERY PLAN                                                                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1185854.20..1185854.20 rows=1 width=96) (actual time=151951.065..151951.065 rows=1 loops=1)
   Buffers: shared hit=16642073 read=726189
   ->  Merge Join  (cost=1162419.56..1185854.20 rows=1 width=48) (actual time=150173.730..151950.984 rows=45 loops=1)
         Merge Cond: (mi.movie_id = t.id)
         Buffers: shared hit=16642073 read=726189
         ->  Sort  (cost=1162419.55..1162419.55 rows=1 width=47) (actual time=142280.375..142280.383 rows=61 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 30kB
               Buffers: shared hit=14152199 read=683285
               ->  Merge Join  (cost=1162419.55..1162419.55 rows=1 width=47) (actual time=142269.524..142269.601 rows=75 loops=1)
                     Merge Cond: (it.id = mi.info_type_id)
                     Buffers: shared hit=14152195 read=683285
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.068..0.068 rows=1 loops=1)
                           Sort Key: it.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.051..0.052 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'release dates'::text)
                                 Buffers: shared hit=1 read=1
                     ->  Sort  (cost=1162413.42..1162413.42 rows=1 width=51) (actual time=142269.446..142269.459 rows=75 loops=1)
                           Sort Key: mi.info_type_id
                           Sort Method: quicksort  Memory: 30kB
                           Buffers: shared hit=14152194 read=683284
                           ->  Merge Join  (cost=544644.59..1162413.42 rows=1 width=51) (actual time=127115.678..142269.335 rows=75 loops=1)
                                 Merge Cond: (mi.movie_id = mc.movie_id)
                                 Buffers: shared hit=14152194 read=683284
                                 ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..617800.38 rows=302987 width=8) (actual time=127.903..84598.641 rows=274652 loops=1)
                                       Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                       Rows Removed by Filter: 11592274
                                       Buffers: shared hit=7347187 read=166291
                                 ->  Sort  (cost=544644.57..544644.57 rows=1 width=43) (actual time=57578.937..57578.967 rows=109 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 31kB
                                       Buffers: shared hit=6805007 read=516993
                                       ->  Merge Join  (cost=544644.57..544644.57 rows=1 width=43) (actual time=57578.288..57578.851 rows=77 loops=1)
                                             Merge Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=6805007 read=516993
                                             ->  Sort  (cost=544620.04..544620.04 rows=1 width=47) (actual time=57522.861..57523.205 rows=1747 loops=1)
                                                   Sort Key: mk.keyword_id
                                                   Sort Method: quicksort  Memory: 350kB
                                                   Buffers: shared hit=6804999 read=516983
                                                   ->  Merge Join  (cost=496727.00..544620.04 rows=1 width=47) (actual time=56541.851..57521.761 rows=3250 loops=1)
                                                         Merge Cond: (ci.person_id = n.id)
                                                         Buffers: shared hit=6804999 read=516983
                                                         ->  Sort  (cost=496726.98..496726.98 rows=5 width=40) (actual time=54660.058..54662.478 rows=35881 loops=1)
                                                               Sort Key: an.person_id
                                                               Sort Method: quicksort  Memory: 4344kB
                                                               Buffers: shared hit=4223891 read=471160
                                                               ->  Merge Join  (cost=460488.27..496726.98 rows=5 width=40) (actual time=45221.107..54648.793 rows=35881 loops=1)
                                                                     Merge Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=4223891 read=471160
                                                                     ->  Sort  (cost=460488.26..460488.26 rows=10 width=28) (actual time=44986.600..44989.053 rows=35882 loops=1)
                                                                           Sort Key: ci.person_role_id
                                                                           Sort Method: quicksort  Memory: 4429kB
                                                                           Buffers: shared hit=1145297 read=423626
                                                                           ->  Merge Join  (cost=420852.69..460488.25 rows=10 width=28) (actual time=42240.977..44968.461 rows=37020 loops=1)
                                                                                 Merge Cond: (mc.movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=1145297 read=423626
                                                                                 ->  Sort  (cost=420852.68..420852.68 rows=1 width=20) (actual time=41913.348..41913.472 rows=629 loops=1)
                                                                                       Sort Key: mc.movie_id
                                                                                       Sort Method: quicksort  Memory: 73kB
                                                                                       Buffers: shared hit=1123921 read=388106
                                                                                       ->  Merge Join  (cost=384370.62..420852.68 rows=1 width=20) (actual time=41804.271..41913.103 rows=629 loops=1)
                                                                                             Merge Cond: (an.person_id = ci.person_id)
                                                                                             Buffers: shared hit=1123921 read=388106
                                                                                             ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.034..1883.545 rows=577853 loops=1)
                                                                                                   Buffers: shared hit=202283 read=12971
                                                                                             ->  Sort  (cost=384370.61..384370.61 rows=1 width=16) (actual time=39880.293..39880.374 rows=725 loops=1)
                                                                                                   Sort Key: ci.person_id
                                                                                                   Sort Method: quicksort  Memory: 39kB
                                                                                                   Buffers: shared hit=921638 read=375135
                                                                                                   ->  Merge Join  (cost=384370.61..384370.61 rows=1 width=16) (actual time=39880.097..39880.178 rows=313 loops=1)
                                                                                                         Merge Cond: (rt.id = ci.role_id)
                                                                                                         Buffers: shared hit=921638 read=375135
                                                                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.069..0.069 rows=1 loops=1)
                                                                                                               Sort Key: rt.id
                                                                                                               Sort Method: quicksort  Memory: 25kB
                                                                                                               Buffers: shared hit=1 read=1
                                                                                                               ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.046..0.047 rows=1 loops=1)
                                                                                                                     Index Cond: ((role)::text = 'actress'::text)
                                                                                                                     Buffers: shared hit=1 read=1
                                                                                                         ->  Sort  (cost=384364.48..384364.48 rows=7 width=20) (actual time=39879.867..39879.927 rows=1271 loops=1)
                                                                                                               Sort Key: ci.role_id
                                                                                                               Sort Method: quicksort  Memory: 146kB
                                                                                                               Buffers: shared hit=921637 read=375134
                                                                                                               ->  Merge Join  (cost=384230.07..384364.48 rows=7 width=20) (actual time=39747.459..39879.536 rows=1272 loops=1)
                                                                                                                     Merge Cond: (mc.movie_id = ci.movie_id)
                                                                                                                     Buffers: shared hit=921637 read=375134
                                                                                                                     ->  Sort  (cost=59960.09..59960.09 rows=11 width=4) (actual time=11964.889..11964.904 rows=99 loops=1)
                                                                                                                           Sort Key: mc.movie_id
                                                                                                                           Sort Method: quicksort  Memory: 29kB
                                                                                                                           Buffers: shared hit=921630 read=23453
                                                                                                                           ->  Merge Join  (cost=6.15..59960.08 rows=11 width=4) (actual time=11964.760..11964.844 rows=99 loops=1)
                                                                                                                                 Merge Cond: (mc.company_id = cn.id)
                                                                                                                                 Buffers: shared hit=921630 read=23453
                                                                                                                                 ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.030..11584.464 rows=1729623 loops=1)
                                                                                                                                       Buffers: shared hit=921630 read=23449
                                                                                                                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=52.121..52.121 rows=1 loops=1)
                                                                                                                                       Sort Key: cn.id
                                                                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                                                                       Buffers: shared read=4
                                                                                                                                       ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=52.088..52.091 rows=1 loops=1)
                                                                                                                                             Index Cond: (name = 'DreamWorks Animation'::text)
                                                                                                                                             Filter: ((country_code)::text = '[us]'::text)
                                                                                                                                             Buffers: shared read=4
                                                                                                                     ->  Sort  (cost=324269.98..324337.19 rows=865636 width=16) (actual time=27754.967..27822.462 rows=858823 loops=1)
                                                                                                                           Sort Key: ci.movie_id
                                                                                                                           Sort Method: quicksort  Memory: 65239kB
                                                                                                                           Buffers: shared hit=7 read=351681
                                                                                                                           ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=18.184..27277.295 rows=867477 loops=1)
                                                                                                                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                                                                 Rows Removed by Filter: 35376867
                                                                                                                                 Buffers: shared hit=7 read=351681
                                                                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.014..2351.173 rows=4399337 loops=1)
                                                                                       Buffers: shared hit=21376 read=35520
                                                                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.017..9261.246 rows=3118604 loops=1)
                                                                           Buffers: shared hit=3078594 read=47534
                                                         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1856.446..2847.892 rows=49807 loops=1)
                                                               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 2645583
                                                               Buffers: shared hit=2581108 read=45823
                                             ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=55.008..55.008 rows=3 loops=1)
                                                   Sort Key: k.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=8 read=10
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=46.640..54.987 rows=3 loops=1)
                                                         Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                                                         Buffers: shared hit=8 read=10
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=29 width=21) (actual time=2271.241..9670.548 rows=8 loops=1)
               Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
               Rows Removed by Filter: 2528304
               Buffers: shared hit=2489874 read=42904
 Planning Time: 10916.670 ms
 Execution Time: 152030.094 ms
(134 rows)


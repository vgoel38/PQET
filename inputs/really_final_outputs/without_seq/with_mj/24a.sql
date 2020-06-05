                                                                                                                                       QUERY PLAN                                                                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1193619.45..1193619.45 rows=1 width=96) (actual time=169023.318..169023.318 rows=1 loops=1)
   Buffers: shared hit=19042762 read=768209
   ->  Merge Join  (cost=1193619.44..1193619.45 rows=1 width=48) (actual time=169020.263..169023.161 rows=275 loops=1)
         Merge Cond: (k.id = mk.keyword_id)
         Buffers: shared hit=19042762 read=768209
         ->  Sort  (cost=18.40..18.40 rows=3 width=4) (actual time=22.171..22.172 rows=3 loops=1)
               Sort Key: k.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=11 read=8
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=11.728..17.392 rows=3 loops=1)
                     Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                     Buffers: shared hit=7 read=8
         ->  Sort  (cost=1193601.05..1193601.05 rows=2 width=52) (actual time=168995.951..168997.896 rows=13563 loops=1)
               Sort Key: mk.keyword_id
               Sort Method: quicksort  Memory: 3345kB
               Buffers: shared hit=19042751 read=768201
               ->  Merge Join  (cost=1153964.03..1193601.05 rows=2 width=52) (actual time=165927.552..168983.567 rows=27602 loops=1)
                     Merge Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=19042751 read=768201
                     ->  Sort  (cost=1153964.01..1153964.01 rows=1 width=64) (actual time=165807.734..165807.904 rows=1634 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 272kB
                           Buffers: shared hit=19021027 read=731873
                           ->  Merge Join  (cost=1153964.01..1153964.01 rows=1 width=64) (actual time=165806.213..165806.925 rows=1634 loops=1)
                                 Merge Cond: (it.id = mi.info_type_id)
                                 Buffers: shared hit=19021027 read=731873
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.051..0.051 rows=1 loops=1)
                                       Sort Key: it.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.036..0.037 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'release dates'::text)
                                             Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=1153957.89..1153957.89 rows=2 width=68) (actual time=165806.155..165806.270 rows=1634 loops=1)
                                       Sort Key: mi.info_type_id
                                       Sort Method: quicksort  Memory: 272kB
                                       Buffers: shared hit=19021026 read=731872
                                       ->  Merge Join  (cost=536133.99..1153957.89 rows=2 width=68) (actual time=70060.205..165804.249 rows=1634 loops=1)
                                             Merge Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=19021026 read=731872
                                             ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..617800.38 rows=302987 width=8) (actual time=127.079..99100.914 rows=299879 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                   Rows Removed by Filter: 14365814
                                                   Buffers: shared hit=8967052 read=201108
                                             ->  Sort  (cost=536133.98..536133.98 rows=16 width=60) (actual time=66597.716..66598.161 rows=1639 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 217kB
                                                   Buffers: shared hit=10053974 read=530764
                                                   ->  Merge Join  (cost=451758.29..536133.97 rows=16 width=60) (actual time=65285.581..66597.153 rows=1224 loops=1)
                                                         Merge Cond: (ci.person_id = n.id)
                                                         Buffers: shared hit=10053974 read=530764
                                                         ->  Merge Join  (cost=451758.28..488240.77 rows=1757 width=53) (actual time=61718.195..63414.836 rows=49319 loops=1)
                                                               Merge Cond: (an.person_id = ci.person_id)
                                                               Buffers: shared hit=7468022 read=484861
                                                               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.033..1537.032 rows=578748 loops=1)
                                                                     Buffers: shared hit=202611 read=12974
                                                               ->  Sort  (cost=451758.27..451758.42 rows=2021 width=49) (actual time=61704.277..61708.849 rows=55881 loops=1)
                                                                     Sort Key: ci.person_id
                                                                     Sort Method: quicksort  Memory: 2929kB
                                                                     Buffers: shared hit=7265411 read=471887
                                                                     ->  Merge Join  (cost=451750.92..451754.82 rows=2021 width=49) (actual time=61691.120..61696.594 rows=19505 loops=1)
                                                                           Merge Cond: (rt.id = ci.role_id)
                                                                           Buffers: shared hit=7265411 read=471887
                                                                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.060..0.060 rows=1 loops=1)
                                                                                 Sort Key: rt.id
                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                 Buffers: shared hit=1 read=1
                                                                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.042..0.044 rows=1 loops=1)
                                                                                       Index Cond: ((role)::text = 'actress'::text)
                                                                                       Buffers: shared hit=1 read=1
                                                                           ->  Sort  (cost=451744.79..451746.67 rows=24247 width=53) (actual time=61681.764..61685.170 rows=70264 loops=1)
                                                                                 Sort Key: ci.role_id
                                                                                 Sort Method: quicksort  Memory: 11477kB
                                                                                 Buffers: shared hit=7265410 read=471886
                                                                                 ->  Merge Join  (cost=415445.80..451689.95 rows=24247 width=53) (actual time=52642.710..61652.445 rows=70264 loops=1)
                                                                                       Merge Cond: (chn.id = ci.person_role_id)
                                                                                       Buffers: shared hit=7265410 read=471886
                                                                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.030..8591.655 rows=3135387 loops=1)
                                                                                             Buffers: shared hit=3095330 read=47597
                                                                                       ->  Sort  (cost=415445.78..415449.66 rows=49962 width=41) (actual time=52642.674..52654.993 rows=70265 loops=1)
                                                                                             Sort Key: ci.person_role_id
                                                                                             Sort Method: quicksort  Memory: 10340kB
                                                                                             Buffers: shared hit=4170080 read=424289
                                                                                             ->  Merge Join  (cost=391795.69..415324.69 rows=49962 width=41) (actual time=43267.744..52604.283 rows=74425 loops=1)
                                                                                                   Merge Cond: (t.id = ci.movie_id)
                                                                                                   Buffers: shared hit=4170080 read=424289
                                                                                                   ->  Merge Join  (cost=67525.71..90927.17 rows=145927 width=25) (actual time=14746.716..24466.073 rows=128115 loops=1)
                                                                                                         Merge Cond: (mc.movie_id = t.id)
                                                                                                         Buffers: shared hit=4170073 read=72608
                                                                                                         ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14692.054..14832.674 rows=1153798 loops=1)
                                                                                                               Sort Key: mc.movie_id
                                                                                                               Sort Method: quicksort  Memory: 103237kB
                                                                                                               Buffers: shared hit=1681925 read=29747
                                                                                                               ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.071..14178.467 rows=1153798 loops=1)
                                                                                                                     Merge Cond: (cn.id = mc.company_id)
                                                                                                                     Buffers: shared hit=1681925 read=29747
                                                                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.036..1344.558 rows=84843 loops=1)
                                                                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                                                                           Rows Removed by Filter: 150154
                                                                                                                           Buffers: shared hit=231720 read=3834
                                                                                                                     ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.029..12236.204 rows=2609129 loops=1)
                                                                                                                           Buffers: shared hit=1450205 read=25913
                                                                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=54.645..9397.447 rows=391512 loops=1)
                                                                                                               Filter: (production_year > 2010)
                                                                                                               Rows Removed by Filter: 2134232
                                                                                                               Buffers: shared hit=2488148 read=42861
                                                                                                   ->  Sort  (cost=324269.98..324337.19 rows=865636 width=16) (actual time=27890.938..27994.705 rows=909108 loops=1)
                                                                                                         Sort Key: ci.movie_id
                                                                                                         Sort Method: quicksort  Memory: 65239kB
                                                                                                         Buffers: shared hit=7 read=351681
                                                                                                         ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=36.238..27424.891 rows=867477 loops=1)
                                                                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                                               Rows Removed by Filter: 35376867
                                                                                                               Buffers: shared hit=7 read=351681
                                                         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1907.371..3170.704 rows=49997 loops=1)
                                                               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 2650511
                                                               Buffers: shared hit=2585952 read=45903
                     ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.033..2443.332 rows=4490382 loops=1)
                           Buffers: shared hit=21724 read=36328
 Planning Time: 11132.126 ms
 Execution Time: 169058.982 ms
(122 rows)


                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1149952.05..1149952.05 rows=1 width=64) (actual time=85630.835..85630.835 rows=1 loops=1)
   Buffers: shared hit=10215776 read=657821
   ->  Merge Join  (cost=1065576.93..1149952.05 rows=1 width=32) (actual time=84082.190..85612.320 rows=3575 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=10215776 read=657821
         ->  Merge Join  (cost=1065576.92..1102058.99 rows=63 width=25) (actual time=80747.576..82461.636 rows=265993 loops=1)
               Merge Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=7629824 read=611918
               ->  Sort  (cost=1065576.90..1065576.91 rows=72 width=21) (actual time=80302.788..80317.828 rows=121777 loops=1)
                     Sort Key: ci.person_id
                     Sort Method: quicksort  Memory: 12102kB
                     Buffers: shared hit=7364474 read=598944
                     ->  Merge Join  (cost=1029338.11..1065576.83 rows=72 width=21) (actual time=69836.819..80256.963 rows=121777 loops=1)
                           Merge Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7364470 read=598944
                           ->  Sort  (cost=1029338.09..1029338.10 rows=149 width=25) (actual time=69764.509..69783.849 rows=121778 loops=1)
                                 Sort Key: ci.person_role_id
                                 Sort Method: quicksort  Memory: 16916kB
                                 Buffers: shared hit=4264649 read=551333
                                 ->  Merge Join  (cost=1005897.62..1029337.92 rows=149 width=25) (actual time=59274.324..69716.580 rows=132216 loops=1)
                                       Merge Cond: (t.id = ci.movie_id)
                                       Buffers: shared hit=4264649 read=551333
                                       ->  Merge Join  (cost=684016.62..707470.57 rows=2806 width=29) (actual time=36867.079..47628.448 rows=391371 loops=1)
                                             Merge Cond: (t.id = mc.movie_id)
                                             Buffers: shared hit=4264644 read=275469
                                             ->  Merge Join  (cost=616490.92..639819.89 rows=2169 width=25) (actual time=21731.524..32056.805 rows=424568 loops=1)
                                                   Merge Cond: (mi.movie_id = t.id)
                                                   Buffers: shared hit=2582719 read=245722
                                                   ->  Sort  (cost=616490.91..616491.22 rows=3969 width=4) (actual time=21702.935..21755.128 rows=451039 loops=1)
                                                         Sort Key: mi.movie_id
                                                         Sort Method: quicksort  Memory: 33431kB
                                                         Buffers: shared hit=94256 read=202848
                                                         ->  Merge Join  (cost=0.02..616483.54 rows=3969 width=4) (actual time=13034.812..21520.937 rows=451039 loops=1)
                                                               Merge Cond: (it.id = mi.info_type_id)
                                                               Buffers: shared hit=94256 read=202848
                                                               ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.037..0.059 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=2
                                                               ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=448472 width=8) (actual time=92.973..21412.814 rows=451104 loops=1)
                                                                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                     Rows Removed by Filter: 14384616
                                                                     Buffers: shared hit=94254 read=202848
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=28.578..9964.479 rows=1381290 loops=1)
                                                         Filter: (production_year > 2000)
                                                         Rows Removed by Filter: 1145142
                                                         Buffers: shared hit=2488463 read=42874
                                             ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=15135.545..15285.175 rows=1279876 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 103237kB
                                                   Buffers: shared hit=1681925 read=29747
                                                   ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.075..14631.893 rows=1153798 loops=1)
                                                         Merge Cond: (cn.id = mc.company_id)
                                                         Buffers: shared hit=1681925 read=29747
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.038..1441.379 rows=84843 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 150154
                                                               Buffers: shared hit=231720 read=3834
                                                         ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.032..12618.605 rows=2609129 loops=1)
                                                               Buffers: shared hit=1450205 read=25913
                                       ->  Sort  (cost=321881.00..321886.60 rows=72136 width=12) (actual time=21948.198..21985.058 rows=375518 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 25234kB
                                             Buffers: shared hit=5 read=275864
                                             ->  Merge Join  (cost=0.02..321700.23 rows=72136 width=12) (actual time=9658.515..21809.058 rows=276166 loops=1)
                                                   Merge Cond: (ci.role_id = rt.id)
                                                   Buffers: shared hit=5 read=275864
                                                   ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=17.808..21556.475 rows=867127 loops=1)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 27955144
                                                         Buffers: shared hit=3 read=275864
                                                   ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.015..0.020 rows=1 loops=1)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 11
                                                         Buffers: shared hit=2
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=4) (actual time=0.017..10055.015 rows=3139890 loops=1)
                                 Buffers: shared hit=3099821 read=47611
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.016..1913.758 rows=839752 loops=1)
                     Buffers: shared hit=265350 read=12974
         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1865.967..3116.894 rows=49997 loops=1)
               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 2650511
               Buffers: shared hit=2585952 read=45903
 Planning Time: 7019.070 ms
 Execution Time: 85671.027 ms
(85 rows)


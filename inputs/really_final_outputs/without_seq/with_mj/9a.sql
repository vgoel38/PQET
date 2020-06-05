                                                                                                        QUERY PLAN                                                                                                        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=531073.22..531073.22 rows=1 width=96) (actual time=62903.884..62903.884 rows=1 loops=1)
   Buffers: shared hit=11424148 read=479729
   ->  Merge Join  (cost=446700.22..531073.22 rows=1 width=49) (actual time=60258.645..62903.715 rows=121 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=11424148 read=479729
         ->  Merge Join  (cost=446700.20..483182.52 rows=1039 width=57) (actual time=56312.170..58479.105 rows=66616 loops=1)
               Merge Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=7485544 read=409049
               ->  Sort  (cost=446700.19..446700.28 rows=1195 width=37) (actual time=55833.656..55837.941 rows=28337 loops=1)
                     Sort Key: ci.person_id
                     Sort Method: quicksort  Memory: 3379kB
                     Buffers: shared hit=7267801 read=396075
                     ->  Merge Join  (cost=410459.31..446698.29 rows=1195 width=37) (actual time=46785.017..55815.628 rows=28368 loops=1)
                           Merge Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7267797 read=396075
                           ->  Sort  (cost=410459.30..410459.49 rows=2461 width=25) (actual time=46784.996..46790.335 rows=28369 loops=1)
                                 Sort Key: ci.person_role_id
                                 Sort Method: quicksort  Memory: 3228kB
                                 Buffers: shared hit=4168085 read=348464
                                 ->  Merge Join  (cost=386945.53..410454.99 rows=2461 width=25) (actual time=37099.281..46772.238 rows=30619 loops=1)
                                       Merge Cond: (t.id = ci.movie_id)
                                       Buffers: shared hit=4168085 read=348464
                                       ->  Merge Join  (cost=65064.53..88580.92 rows=46351 width=25) (actual time=14848.542..24631.270 rows=144120 loops=1)
                                             Merge Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=4168080 read=72600
                                             ->  Sort  (cost=65064.51..65072.72 rows=105777 width=4) (actual time=14845.060..14915.485 rows=542096 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 49987kB
                                                   Buffers: shared hit=1679933 read=29741
                                                   ->  Merge Join  (cost=0.03..64790.37 rows=105777 width=4) (actual time=0.078..14593.378 rows=542096 loops=1)
                                                         Merge Cond: (cn.id = mc.company_id)
                                                         Buffers: shared hit=1679933 read=29741
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.038..1602.082 rows=84448 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 148554
                                                               Buffers: shared hit=229728 read=3828
                                                         ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..60156.52 rows=292980 width=8) (actual time=0.034..12828.327 rows=590994 loops=1)
                                                               Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                               Rows Removed by Filter: 2018135
                                                               Buffers: shared hit=1450205 read=25913
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1107888 width=21) (actual time=3.476..9459.220 rows=1107557 loops=1)
                                                   Filter: ((production_year >= 2005) AND (production_year <= 2015))
                                                   Rows Removed by Filter: 1418113
                                                   Buffers: shared hit=2488147 read=42859
                                       ->  Sort  (cost=321881.00..321886.60 rows=72136 width=12) (actual time=22047.155..22080.331 rows=285468 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 25234kB
                                             Buffers: shared hit=5 read=275864
                                             ->  Merge Join  (cost=0.02..321700.23 rows=72136 width=12) (actual time=9650.070..21905.697 rows=276166 loops=1)
                                                   Merge Cond: (ci.role_id = rt.id)
                                                   Buffers: shared hit=5 read=275864
                                                   ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=29.266..21661.687 rows=867127 loops=1)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 27955144
                                                         Buffers: shared hit=3 read=275864
                                                   ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.015..0.021 rows=1 loops=1)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 11
                                                         Buffers: shared hit=2
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.015..8632.689 rows=3139781 loops=1)
                                 Buffers: shared hit=3099712 read=47611
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.013..2469.690 rows=640777 loops=1)
                     Buffers: shared hit=217743 read=12974
         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=3787 width=4) (actual time=1867.215..4416.618 rows=6768 loops=1)
               Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 4160723
               Buffers: shared hit=3938604 read=70680
 Planning Time: 4571.586 ms
 Execution Time: 62934.069 ms
(69 rows)


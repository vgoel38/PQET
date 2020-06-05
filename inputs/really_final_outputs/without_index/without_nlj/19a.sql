                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32714.60..32714.60 rows=1 width=64) (actual time=29105.559..29105.559 rows=1 loops=1)
   Buffers: shared hit=6694 read=576184
   ->  Hash Join  (cost=16569.32..32714.60 rows=1 width=32) (actual time=21014.110..29105.394 rows=184 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6694 read=576184
         ->  Hash Join  (cost=14748.02..30893.30 rows=1 width=36) (actual time=19274.149..27365.343 rows=189 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6689 read=539739
               ->  Hash Join  (cost=11574.25..27719.52 rows=7 width=25) (actual time=16026.331..24196.788 rows=40272 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=6685 read=472735
                     ->  Hash Join  (cost=0.03..16136.93 rows=71973 width=12) (actual time=4013.921..12087.498 rows=276166 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=6 read=252649
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.016..11860.019 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.009 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=11574.19..11574.19 rows=130 width=29) (actual time=12012.193..12012.193 rows=116277 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8369kB
                           Buffers: shared hit=6679 read=220086
                           ->  Hash Join  (cost=3129.54..11574.19 rows=130 width=29) (actual time=4454.267..11972.714 rows=116277 loops=1)
                                 Hash Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=6679 read=220086
                                 ->  Hash Join  (cost=0.05..8444.24 rows=3937 width=4) (actual time=1501.188..8886.465 rows=451039 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6673 read=162311
                                       ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=444887 width=8) (actual time=669.119..8769.733 rows=451104 loops=1)
                                             Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                             Rows Removed by Filter: 14384616
                                             Buffers: shared hit=6672 read=162311
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.022 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=3125.96..3125.96 rows=24038 width=25) (actual time=2952.976..2952.976 rows=86979 loops=1)
                                       Buckets: 131072 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 6240kB
                                       Buffers: shared hit=6 read=57775
                                       ->  Hash Join  (cost=1921.75..3125.96 rows=24038 width=25) (actual time=1856.893..2919.423 rows=86979 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=6 read=57775
                                             ->  Hash Join  (cost=1780.89..2979.67 rows=66579 width=29) (actual time=1714.604..2739.346 rows=100350 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=4 read=54783
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=0.012..856.797 rows=590994 loops=1)
                                                         Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                         Rows Removed by Filter: 2018135
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=1696.56..1696.56 rows=574556 width=21) (actual time=1712.029..1712.030 rows=574556 loops=1)
                                                         Buckets: 1048576  Batches: 1  Memory Usage: 38813kB
                                                         Buffers: shared hit=1 read=35997
                                                         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=574556 width=21) (actual time=3.982..1395.567 rows=574556 loops=1)
                                                               Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                                               Rows Removed by Filter: 1953756
                                                               Buffers: shared hit=1 read=35997
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.968..141.968 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=6.541..110.887 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=2 read=2992
               ->  Hash  (cost=3173.62..3173.62 rows=1040 width=23) (actual time=3161.318..3161.318 rows=1558 loops=1)
                     Buckets: 2048  Batches: 1  Memory Usage: 104kB
                     Buffers: shared hit=4 read=67004
                     ->  Hash Join  (cost=2680.39..3173.62 rows=1040 width=23) (actual time=2615.160..3160.425 rows=1558 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared hit=4 read=67004
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.007..332.159 rows=901343 loops=1)
                                 Buffers: shared hit=2 read=11393
                           ->  Hash  (cost=2679.69..2679.69 rows=4808 width=19) (actual time=2607.802..2607.802 rows=6768 loops=1)
                                 Buckets: 8192  Batches: 1  Memory Usage: 420kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4808 width=19) (actual time=1099.517..2603.156 rows=6768 loops=1)
                                       Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 4160723
                                       Buffers: shared hit=2 read=55611
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1730.099..1730.099 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=17.919..847.551 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 7478.859 ms
 Execution Time: 29110.588 ms
(94 rows)


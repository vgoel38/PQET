                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32714.92..32714.92 rows=1 width=64) (actual time=29447.137..29447.137 rows=1 loops=1)
   Buffers: shared hit=6694 read=576184
   ->  Hash Join  (cost=16569.44..32714.92 rows=1 width=32) (actual time=21122.478..29446.980 rows=184 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6694 read=576184
         ->  Hash Join  (cost=14748.14..30893.61 rows=1 width=36) (actual time=19249.596..27574.007 rows=189 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6689 read=539739
               ->  Hash Join  (cost=11574.55..27720.02 rows=7 width=25) (actual time=16016.437..24413.197 rows=40272 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=6685 read=472735
                     ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=3994.667..12294.568 rows=276166 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=6 read=252649
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.020..12072.706 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.011 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=11574.49..11574.49 rows=131 width=29) (actual time=12021.592..12021.592 rows=116277 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8369kB
                           Buffers: shared hit=6679 read=220086
                           ->  Hash Join  (cost=3129.54..11574.49 rows=131 width=29) (actual time=4484.289..11981.463 rows=116277 loops=1)
                                 Hash Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=6679 read=220086
                                 ->  Hash Join  (cost=0.05..8444.54 rows=3969 width=4) (actual time=1503.572..8866.770 rows=451039 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6673 read=162311
                                       ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=671.505..8752.994 rows=451104 loops=1)
                                             Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                             Rows Removed by Filter: 14384616
                                             Buffers: shared hit=6672 read=162311
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.022 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=3125.96..3125.96 rows=24038 width=25) (actual time=2980.606..2980.606 rows=86979 loops=1)
                                       Buckets: 131072 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 6240kB
                                       Buffers: shared hit=6 read=57775
                                       ->  Hash Join  (cost=1921.75..3125.96 rows=24038 width=25) (actual time=1856.052..2945.843 rows=86979 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=6 read=57775
                                             ->  Hash Join  (cost=1780.89..2979.67 rows=66579 width=29) (actual time=1714.045..2766.215 rows=100350 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=4 read=54783
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=0.010..884.295 rows=590994 loops=1)
                                                         Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                         Rows Removed by Filter: 2018135
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=1696.56..1696.56 rows=574556 width=21) (actual time=1711.647..1711.647 rows=574556 loops=1)
                                                         Buckets: 1048576  Batches: 1  Memory Usage: 38813kB
                                                         Buffers: shared hit=1 read=35997
                                                         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=574556 width=21) (actual time=4.147..1402.316 rows=574556 loops=1)
                                                               Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                                               Rows Removed by Filter: 1953756
                                                               Buffers: shared hit=1 read=35997
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.698..141.698 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=6.276..113.002 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=2 read=2992
               ->  Hash  (cost=3173.47..3173.47 rows=819 width=23) (actual time=3153.808..3153.808 rows=1558 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 104kB
                     Buffers: shared hit=4 read=67004
                     ->  Hash Join  (cost=2680.24..3173.47 rows=819 width=23) (actual time=2607.035..3152.717 rows=1558 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared hit=4 read=67004
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.005..318.587 rows=901343 loops=1)
                                 Buffers: shared hit=2 read=11393
                           ->  Hash  (cost=2679.69..2679.69 rows=3787 width=19) (actual time=2599.990..2599.990 rows=6768 loops=1)
                                 Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 420kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=3787 width=19) (actual time=1091.760..2595.668 rows=6768 loops=1)
                                       Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 4160723
                                       Buffers: shared hit=2 read=55611
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1863.336..1863.336 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=18.165..958.847 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 7412.071 ms
 Execution Time: 29452.127 ms
(94 rows)


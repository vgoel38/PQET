                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24464.65..24464.65 rows=1 width=96) (actual time=40605.976..40605.976 rows=1 loops=1)
   Buffers: shared hit=1299033 read=413891
   ->  Nested Loop  (cost=7578.53..24464.65 rows=1 width=49) (actual time=19831.553..40605.691 rows=121 loops=1)
         Join Filter: (n.id = an.person_id)
         Rows Removed by Join Filter: 103654324
         Buffers: shared hit=1299033 read=413891
         ->  Nested Loop  (cost=7578.53..23912.61 rows=1 width=41) (actual time=19816.597..21476.271 rows=115 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 10520417
               Buffers: shared hit=3 read=402496
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=17.909..86.030 rows=84843 loops=1)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 150154
                     Buffers: shared read=2994
               ->  Materialize  (cost=7578.53..23708.04 rows=4 width=45) (actual time=0.137..0.239 rows=124 loops=84843)
                     Buffers: shared hit=3 read=399502
                     ->  Hash Join  (cost=7578.53..23708.04 rows=4 width=45) (actual time=11597.431..19781.807 rows=124 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=3 read=399502
                           ->  Hash Join  (cost=5757.23..21886.73 rows=8 width=33) (actual time=9533.707..17717.911 rows=135 loops=1)
                                 Hash Cond: (ci.movie_id = t.id)
                                 Buffers: shared read=363055
                                 ->  Hash Join  (cost=2680.43..18809.92 rows=83 width=16) (actual time=6650.760..14859.799 rows=727 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared read=308268
                                       ->  Hash Join  (cost=2680.39..18809.80 rows=996 width=20) (actual time=6628.880..14837.442 rows=728 loops=1)
                                             Hash Cond: (ci.person_id = n.id)
                                             Buffers: shared read=308267
                                             ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=28.156..12030.276 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared read=252654
                                             ->  Hash  (cost=2679.69..2679.69 rows=4808 width=4) (actual time=2643.130..2643.130 rows=6768 loops=1)
                                                   Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                                   Buffers: shared read=55613
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4808 width=4) (actual time=1134.956..2638.876 rows=6768 loops=1)
                                                         Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4160723
                                                         Buffers: shared read=55613
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.860..21.860 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.843..21.850 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=3057.96..3057.96 rows=128382 width=29) (actual time=2857.116..2857.116 rows=166911 loops=1)
                                       Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 12694kB
                                       Buffers: shared read=54787
                                       ->  Hash Join  (cost=1859.17..3057.96 rows=128382 width=29) (actual time=1834.573..2795.157 rows=166911 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared read=54787
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=6.320..785.986 rows=590994 loops=1)
                                                   Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                   Rows Removed by Filter: 2018135
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=1696.56..1696.56 rows=1107888 width=21) (actual time=1822.771..1822.771 rows=1107888 loops=1)
                                                   Buckets: 2097152  Batches: 1  Memory Usage: 75795kB
                                                   Buffers: shared read=35998
                                                   ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1107888 width=21) (actual time=6.407..1323.281 rows=1107888 loops=1)
                                                         Filter: ((production_year >= 2005) AND (production_year <= 2015))
                                                         Rows Removed by Filter: 1420424
                                                         Buffers: shared read=35998
                           ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=2039.312..2039.312 rows=3140339 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                 Buffers: shared read=36447
                                 ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=4.387..1026.114 rows=3140339 loops=1)
                                       Buffers: shared read=36447
         ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.040..67.097 rows=901343 loops=115)
               Buffers: shared hit=1299030 read=11395
 Planning Time: 3708.627 ms
 Execution Time: 40611.825 ms
(72 rows)


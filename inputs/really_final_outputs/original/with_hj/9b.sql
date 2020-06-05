                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21611.56..21611.56 rows=1 width=128) (actual time=19995.132..19995.132 rows=1 loops=1)
   Buffers: shared hit=3 read=413891
   ->  Hash Join  (cost=8295.40..21611.56 rows=1 width=64) (actual time=12103.016..19995.038 rows=40 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=3 read=413891
         ->  Hash Join  (cost=6474.09..19790.25 rows=1 width=52) (actual time=10209.630..18101.613 rows=40 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared read=377444
               ->  Hash Join  (cost=3173.44..16489.60 rows=34 width=39) (actual time=7258.023..15245.941 rows=265 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=319663
                     ->  Hash Join  (cost=0.03..13309.28 rows=59356 width=12) (actual time=4000.212..12008.850 rows=222686 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared read=252655
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=712274 width=16) (actual time=48.303..11773.667 rows=713828 loops=1)
                                 Filter: (note = '(voice)'::text)
                                 Rows Removed by Filter: 35530516
                                 Buffers: shared read=252654
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=30.065..30.065 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=30.047..30.053 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared read=1
                     ->  Hash  (cost=3173.32..3173.32 rows=597 width=39) (actual time=3196.219..3196.220 rows=1296 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 110kB
                           Buffers: shared read=67008
                           ->  Hash Join  (cost=2680.09..3173.32 rows=597 width=39) (actual time=2649.125..3195.217 rows=1296 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared read=67008
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=4.678..330.533 rows=901343 loops=1)
                                       Buffers: shared read=11395
                                 ->  Hash  (cost=2679.69..2679.69 rows=2762 width=19) (actual time=2636.381..2636.381 rows=5409 loops=1)
                                       Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                       Buffers: shared read=55613
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=2762 width=19) (actual time=1128.060..2632.523 rows=5409 loops=1)
                                             Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4162082
                                             Buffers: shared read=55613
               ->  Hash  (cost=3299.62..3299.62 rows=7062 width=25) (actual time=2855.477..2855.477 rows=47009 loops=1)
                     Buckets: 65536 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 3349kB
                     Buffers: shared read=57781
                     ->  Hash Join  (cost=1912.69..3299.62 rows=7062 width=25) (actual time=1958.868..2837.493 rows=47009 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=57781
                           ->  Hash Join  (cost=1771.83..3157.16 rows=19560 width=29) (actual time=1814.305..2671.622 rows=54971 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared read=54787
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=96436 width=8) (actual time=3.078..788.643 rows=198519 loops=1)
                                       Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                       Rows Removed by Filter: 2410610
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=1696.56..1696.56 rows=512825 width=21) (actual time=1809.804..1809.805 rows=512825 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 31488kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=512825 width=21) (actual time=10.494..1525.943 rows=512825 loops=1)
                                             Filter: ((production_year >= 2007) AND (production_year <= 2010))
                                             Rows Removed by Filter: 2015487
                                             Buffers: shared read=35998
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.219..144.219 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.873..112.873 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1882.390..1882.390 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=12.259..885.402 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 4183.132 ms
 Execution Time: 20000.876 ms
(74 rows)


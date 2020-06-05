                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21343.46..21343.46 rows=1 width=64) (actual time=19589.484..19589.485 rows=1 loops=1)
   Buffers: shared hit=3 read=377444
   ->  Hash Join  (cost=20047.37..21060.70 rows=1820954 width=33) (actual time=18987.072..19499.837 rows=323005 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=3 read=377444
         ->  Hash Join  (cost=17033.92..17673.79 rows=2625959 width=20) (actual time=14897.126..15288.211 rows=218966 loops=1)
               Hash Cond: (an1.person_id = n1.id)
               Buffers: shared read=319663
               ->  Seq Scan on aka_name an1  (cost=0.00..419.75 rows=901343 width=20) (actual time=10.321..167.008 rows=901343 loops=1)
                     Buffers: shared read=11395
               ->  Hash  (cost=16590.59..16590.59 rows=3020362 width=12) (actual time=14861.100..14861.100 rows=276403 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 44645kB
                     Buffers: shared read=308268
                     ->  Hash Join  (cost=2644.31..16590.59 rows=3020362 width=12) (actual time=12047.826..14798.338 rows=276403 loops=1)
                           Hash Cond: (ci.person_id = n1.id)
                           Buffers: shared read=308268
                           ->  Hash Join  (cost=0.03..13700.09 rows=3020362 width=8) (actual time=9300.053..11968.218 rows=276403 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared read=252655
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=9.018..5655.387 rows=36244344 loops=1)
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.814..21.814 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.796..21.801 rows=1 loops=1)
                                             Filter: ((role)::text = 'costume designer'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2737.933..2737.933 rows=4167491 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                 Buffers: shared read=55613
                                 ->  Seq Scan on name n1  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=3.596..1450.419 rows=4167491 loops=1)
                                       Buffers: shared read=55613
         ->  Hash  (cost=2875.18..2875.18 rows=941996 width=25) (actual time=4081.929..4081.930 rows=1153798 loops=1)
               Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 84892kB
               Buffers: shared read=57781
               ->  Hash Join  (cost=1815.93..2875.18 rows=941996 width=25) (actual time=2171.558..3673.959 rows=1153798 loops=1)
                     Hash Cond: (mc.movie_id = t.id)
                     Buffers: shared read=57781
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=166.527..1122.618 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=21783
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=26.765..345.628 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.707..138.707 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.218..108.086 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1986.442..1986.442 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=11.845..1104.794 rows=2528312 loops=1)
                                 Buffers: shared read=35998
 Planning Time: 3975.443 ms
 Execution Time: 19621.860 ms
(58 rows)


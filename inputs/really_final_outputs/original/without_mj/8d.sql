                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21343.46..21343.46 rows=1 width=64) (actual time=19656.080..19656.080 rows=1 loops=1)
   Buffers: shared hit=3 read=377444
   ->  Hash Join  (cost=20047.37..21060.70 rows=1820954 width=33) (actual time=19038.398..19563.001 rows=323005 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=3 read=377444
         ->  Hash Join  (cost=17033.92..17673.79 rows=2625959 width=20) (actual time=15001.358..15403.883 rows=218966 loops=1)
               Hash Cond: (an1.person_id = n1.id)
               Buffers: shared read=319663
               ->  Seq Scan on aka_name an1  (cost=0.00..419.75 rows=901343 width=20) (actual time=4.895..171.398 rows=901343 loops=1)
                     Buffers: shared read=11395
               ->  Hash  (cost=16590.59..16590.59 rows=3020362 width=12) (actual time=14975.046..14975.046 rows=276403 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 44645kB
                     Buffers: shared read=308268
                     ->  Hash Join  (cost=2644.31..16590.59 rows=3020362 width=12) (actual time=12071.313..14907.743 rows=276403 loops=1)
                           Hash Cond: (ci.person_id = n1.id)
                           Buffers: shared read=308268
                           ->  Hash Join  (cost=0.03..13700.09 rows=3020362 width=8) (actual time=9452.601..12202.285 rows=276403 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared read=252655
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=4.978..5823.175 rows=36244344 loops=1)
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.814..21.814 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.787..21.792 rows=1 loops=1)
                                             Filter: ((role)::text = 'costume designer'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2609.054..2609.054 rows=4167491 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                 Buffers: shared read=55613
                                 ->  Seq Scan on name n1  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=5.400..1336.743 rows=4167491 loops=1)
                                       Buffers: shared read=55613
         ->  Hash  (cost=2875.18..2875.18 rows=941996 width=25) (actual time=4029.187..4029.187 rows=1153798 loops=1)
               Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 84892kB
               Buffers: shared read=57781
               ->  Hash Join  (cost=1815.93..2875.18 rows=941996 width=25) (actual time=2163.385..3629.688 rows=1153798 loops=1)
                     Hash Cond: (mc.movie_id = t.id)
                     Buffers: shared read=57781
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=157.988..1088.838 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=21783
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=18.572..327.416 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.407..138.407 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.289..107.529 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1994.145..1994.145 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=11.222..1110.873 rows=2528312 loops=1)
                                 Buffers: shared read=35998
 Planning Time: 3820.272 ms
 Execution Time: 19720.000 ms
(58 rows)


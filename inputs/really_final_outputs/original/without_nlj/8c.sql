                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21343.46..21343.46 rows=1 width=64) (actual time=22437.337..22437.338 rows=1 loops=1)
   Buffers: shared hit=18 read=377429
   ->  Hash Join  (cost=20047.37..21060.70 rows=1820954 width=33) (actual time=20203.614..21885.470 rows=2487611 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=18 read=377429
         ->  Hash Join  (cost=17033.92..17673.79 rows=2625959 width=20) (actual time=16216.148..16969.812 rows=2343724 loops=1)
               Hash Cond: (a.person_id = n.id)
               Buffers: shared hit=9 read=319654
               ->  Seq Scan on aka_name a  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.014..143.513 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
               ->  Hash  (cost=16590.59..16590.59 rows=3020362 width=12) (actual time=16206.657..16206.657 rows=2728943 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 150028kB
                     Buffers: shared hit=7 read=308261
                     ->  Hash Join  (cost=2644.31..16590.59 rows=3020362 width=12) (actual time=10467.254..15574.764 rows=2728943 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=7 read=308261
                           ->  Hash Join  (cost=0.03..13700.09 rows=3020362 width=8) (actual time=7851.915..12137.888 rows=2728943 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=5 read=252650
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=0.008..5558.618 rows=36244344 loops=1)
                                       Buffers: shared hit=4 read=252650
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                             Filter: ((role)::text = 'writer'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2605.701..2605.701 rows=4167491 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=5.901..1328.918 rows=4167491 loops=1)
                                       Buffers: shared hit=2 read=55611
         ->  Hash  (cost=2875.18..2875.18 rows=941996 width=25) (actual time=3979.646..3979.646 rows=1153798 loops=1)
               Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 84892kB
               Buffers: shared hit=6 read=57775
               ->  Hash Join  (cost=1815.93..2875.18 rows=941996 width=25) (actual time=2121.693..3580.700 rows=1153798 loops=1)
                     Hash Cond: (mc.movie_id = t.id)
                     Buffers: shared hit=6 read=57775
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=248.752..1172.581 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.013..303.858 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=247.731..247.731 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=20.816..218.105 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1862.640..1862.640 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=13.066..965.963 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
 Planning Time: 4562.984 ms
 Execution Time: 22459.305 ms
(58 rows)


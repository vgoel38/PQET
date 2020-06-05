                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21339.94..21339.94 rows=1 width=64) (actual time=22552.411..22552.411 rows=1 loops=1)
   Buffers: shared hit=18 read=377429
   ->  Hash Join  (cost=20047.37..21059.21 rows=1807869 width=33) (actual time=20314.110..22002.885 rows=2487611 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=18 read=377429
         ->  Hash Join  (cost=17033.92..17673.78 rows=2615521 width=20) (actual time=16371.744..17135.813 rows=2343724 loops=1)
               Hash Cond: (a1.person_id = n1.id)
               Buffers: shared hit=9 read=319654
               ->  Seq Scan on aka_name a1  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.016..151.292 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
               ->  Hash  (cost=16590.59..16590.59 rows=3020361 width=12) (actual time=16362.026..16362.026 rows=2728943 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 150028kB
                     Buffers: shared hit=7 read=308261
                     ->  Hash Join  (cost=2644.31..16590.59 rows=3020361 width=12) (actual time=10639.424..15744.076 rows=2728943 loops=1)
                           Hash Cond: (ci.person_id = n1.id)
                           Buffers: shared hit=7 read=308261
                           ->  Hash Join  (cost=0.03..13700.09 rows=3020361 width=8) (actual time=7973.280..12252.446 rows=2728943 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=5 read=252650
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=12) (actual time=0.009..5807.072 rows=36244344 loops=1)
                                       Buffers: shared hit=4 read=252650
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                                             Filter: ((role)::text = 'writer'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2655.794..2655.794 rows=4167491 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n1  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=8.876..1365.860 rows=4167491 loops=1)
                                       Buffers: shared hit=2 read=55611
         ->  Hash  (cost=2875.18..2875.18 rows=941996 width=25) (actual time=3939.612..3939.612 rows=1153798 loops=1)
               Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 84892kB
               Buffers: shared hit=6 read=57775
               ->  Hash Join  (cost=1815.93..2875.18 rows=941996 width=25) (actual time=2090.171..3541.789 rows=1153798 loops=1)
                     Hash Cond: (mc.movie_id = t.id)
                     Buffers: shared hit=6 read=57775
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=160.695..1081.744 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..307.150 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=160.374..160.374 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=23.411..127.890 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1918.641..1918.641 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=10.807..1033.425 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
 Planning Time: 4059.859 ms
 Execution Time: 22564.339 ms
(58 rows)


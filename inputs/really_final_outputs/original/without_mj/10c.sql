                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18446.36..18446.36 rows=1 width=64) (actual time=17545.259..17545.259 rows=1 loops=1)
   Buffers: shared hit=3 read=346884
   ->  Hash Join  (cost=4874.12..18394.67 rows=332865 width=33) (actual time=6311.220..17545.215 rows=10 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=3 read=346884
         ->  Hash Join  (cost=4874.08..18364.62 rows=332865 width=37) (actual time=6311.001..17544.983 rows=10 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared read=346883
               ->  Hash Join  (cost=4874.05..18328.79 rows=332865 width=41) (actual time=6310.868..17544.834 rows=10 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared read=346882
                     ->  Hash Join  (cost=1821.31..15182.87 rows=693889 width=24) (actual time=2757.934..13991.862 rows=15 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared read=289101
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=1429807 width=12) (actual time=865.832..11964.478 rows=1435439 loops=1)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 34808905
                                 Buffers: shared read=252654
                           ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1875.768..1875.768 rows=3140339 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                 Buffers: shared read=36447
                                 ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=9.254..866.624 rows=3140339 loops=1)
                                       Buffers: shared read=36447
                     ->  Hash  (cost=2957.09..2957.09 rows=651653 width=29) (actual time=3550.515..3550.515 rows=596250 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 46113kB
                           Buffers: shared read=57781
                           ->  Hash Join  (cost=1897.84..2957.09 rows=651653 width=29) (actual time=2002.323..3355.897 rows=596250 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared read=57781
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=145.802..1073.909 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=7.226..300.071 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.577..137.577 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.265..108.591 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1851.659..1851.660 rows=1749032 loops=1)
                                       Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=10.132..1174.388 rows=1749032 loops=1)
                                             Filter: (production_year > 1990)
                                             Rows Removed by Filter: 779280
                                             Buffers: shared read=35998
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.103..0.103 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.089..0.092 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=12 width=4) (actual time=0.148..0.148 rows=12 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=12 width=4) (actual time=0.112..0.120 rows=12 loops=1)
                     Buffers: shared read=1
 Planning Time: 2219.531 ms
 Execution Time: 17571.015 ms
(60 rows)


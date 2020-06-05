                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18448.66..18448.66 rows=1 width=64) (actual time=17730.653..17730.653 rows=1 loops=1)
   Buffers: shared hit=17 read=346870
   ->  Hash Join  (cost=4874.12..18396.74 rows=334373 width=33) (actual time=6514.856..17730.577 rows=10 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=17 read=346870
         ->  Hash Join  (cost=4874.08..18366.55 rows=334373 width=37) (actual time=6514.754..17730.465 rows=10 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=13 read=346870
               ->  Hash Join  (cost=4874.05..18330.56 rows=334373 width=41) (actual time=6514.708..17730.408 rows=10 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=12 read=346870
                     ->  Hash Join  (cost=1821.31..15183.91 rows=699287 width=24) (actual time=2900.939..14116.605 rows=15 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=6 read=289095
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=1442662 width=12) (actual time=855.772..11933.437 rows=1435439 loops=1)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 34808905
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=2031.956..2031.956 rows=3140339 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                 Buffers: shared hit=2 read=36445
                                 ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=4.151..1001.442 rows=3140339 loops=1)
                                       Buffers: shared hit=2 read=36445
                     ->  Hash  (cost=2957.09..2957.09 rows=651653 width=29) (actual time=3611.365..3611.365 rows=596250 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 46113kB
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=1897.84..2957.09 rows=651653 width=29) (actual time=1974.341..3410.489 rows=596250 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=6 read=57775
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=142.881..1138.711 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.006..325.434 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=142.566..142.566 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=7.201..112.443 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1826.510..1826.510 rows=1749032 loops=1)
                                       Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=10.006..1135.154 rows=1749032 loops=1)
                                             Filter: (production_year > 1990)
                                             Rows Removed by Filter: 779280
                                             Buffers: shared hit=1 read=35997
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.020..0.020 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.008 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=12 width=4) (actual time=0.040..0.040 rows=12 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=12 width=4) (actual time=0.012..0.020 rows=12 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2416.832 ms
 Execution Time: 17738.391 ms
(60 rows)


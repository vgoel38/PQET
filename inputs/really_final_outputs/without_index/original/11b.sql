                                                                        QUERY PLAN                                                                         
-----------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4288.91..4288.91 rows=1 width=96) (actual time=4446.212..4446.212 rows=1 loops=1)
   Buffers: shared hit=181 read=83334
   ->  Nested Loop  (cost=221.64..4288.91 rows=1 width=48) (actual time=2774.099..4446.164 rows=14 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Rows Removed by Join Filter: 2302
         Buffers: shared hit=181 read=83334
         ->  Nested Loop  (cost=221.61..4278.82 rows=1 width=48) (actual time=2732.814..4390.222 rows=2 loops=1)
               Join Filter: (mc.movie_id = t.id)
               Rows Removed by Join Filter: 224254
               Buffers: shared hit=15 read=83173
               ->  Nested Loop  (cost=49.46..3194.85 rows=1 width=25) (actual time=2034.045..3165.827 rows=1 loops=1)
                     Join Filter: (mk.movie_id = t.id)
                     Rows Removed by Join Filter: 379549
                     Buffers: shared hit=9 read=61395
                     ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=140.063..1250.433 rows=10544 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=8 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..502.069 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=139.800..139.801 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=80.074..139.781 rows=1 loops=1)
                                       Filter: (keyword = 'sequel'::text)
                                       Rows Removed by Filter: 134169
                                       Buffers: shared hit=2 read=947
                     ->  Materialize  (cost=0.00..1696.56 rows=24 width=21) (actual time=0.007..0.178 rows=36 loops=10544)
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=24 width=21) (actual time=70.454..1853.303 rows=36 loops=1)
                                 Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
                                 Rows Removed by Filter: 2528276
                                 Buffers: shared hit=1 read=35997
               ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=687.481..1203.746 rows=224256 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=6 read=21778
                     ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=150.201..1145.820 rows=240875 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.021..758.614 rows=1271989 loops=1)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 1337140
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=145.403..145.404 rows=48302 loops=1)
                                 Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=9.379..126.355 rows=48302 loops=1)
                                       Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                       Rows Removed by Filter: 186695
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
         ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.051..27.718 rows=1158 loops=2)
               Hash Cond: (ml.link_type_id = lt.id)
               Buffers: shared hit=166 read=161
               ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.007..18.070 rows=29997 loops=2)
                     Buffers: shared hit=165 read=161
               ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.015..0.015 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.007..0.010 rows=1 loops=1)
                           Filter: ((link)::text ~~ '%follows%'::text)
                           Rows Removed by Filter: 17
                           Buffers: shared hit=1
 Planning Time: 3450.102 ms
 Execution Time: 4447.278 ms
(70 rows)


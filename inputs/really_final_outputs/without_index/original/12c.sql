                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12039.19..12039.19 rows=1 width=96) (actual time=5725352.379..5725352.380 rows=1 loops=1)
   Buffers: shared hit=413454425 read=228116
   ->  Nested Loop  (cost=1558.49..12039.19 rows=1 width=42) (actual time=11397.464..5725328.690 rows=4711 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Rows Removed by Join Filter: 12112507087
         Buffers: shared hit=413454425 read=228116
         ->  Nested Loop  (cost=1558.49..10189.57 rows=1 width=37) (actual time=10257.024..485034.167 rows=12752 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 3242601865
               Buffers: shared hit=15 read=192119
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=80.782..219.351 rows=84843 loops=1)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 150154
                     Buffers: shared hit=2 read=2992
               ->  Materialize  (cost=1558.49..10004.04 rows=3 width=22) (actual time=0.108..1.790 rows=38219 loops=84843)
                     Buffers: shared hit=13 read=189127
                     ->  Hash Join  (cost=1558.49..10004.04 rows=3 width=22) (actual time=9186.550..10105.831 rows=38219 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=13 read=189127
                           ->  Hash Join  (cost=1558.44..10003.97 rows=320 width=26) (actual time=6473.966..10091.927 rows=40392 loops=1)
                                 Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=9 read=189127
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=326272 width=8) (actual time=4784.424..8299.714 rows=327313 loops=1)
                                       Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                                       Rows Removed by Filter: 14508407
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=1558.29..1558.29 rows=1030 width=18) (actual time=1689.509..1689.509 rows=154495 loops=1)
                                       Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 9290kB
                                       Buffers: shared hit=7 read=27237
                                       ->  Hash Join  (cost=483.95..1558.29 rows=1030 width=18) (actual time=1184.758..1647.800 rows=154495 loops=1)
                                             Hash Cond: (mc.company_type_id = ct.id)
                                             Buffers: shared hit=7 read=27237
                                             ->  Hash Join  (cost=483.92..1557.81 rows=4120 width=22) (actual time=624.069..1582.669 rows=383016 loops=1)
                                                   Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=6 read=27237
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.005..366.492 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=483.66..483.66 rows=1708 width=10) (actual time=623.959..623.959 rows=121572 loops=1)
                                                         Buckets: 131072 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 5773kB
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Hash Join  (cost=0.05..483.66 rows=1708 width=10) (actual time=0.068..583.543 rows=121572 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=3 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=0.028..524.098 rows=192967 loops=1)
                                                                     Filter: (info > '7.0'::text)
                                                                     Rows Removed by Filter: 1187068
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.021 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.012 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'production companies'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.070..0.070 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.022..0.062 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=21) (actual time=0.004..334.891 rows=949852 loops=12752)
               Filter: ((production_year >= 2000) AND (production_year <= 2010))
               Rows Removed by Filter: 1321329
               Buffers: shared hit=413454410 read=35997
 Planning Time: 4871.914 ms
 Execution Time: 5725355.093 ms
(74 rows)


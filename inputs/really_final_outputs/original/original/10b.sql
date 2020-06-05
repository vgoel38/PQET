                                                                               QUERY PLAN                                                                               
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3123.93..3123.93 rows=1 width=64) (actual time=185366.875..185366.876 rows=1 loops=1)
   Buffers: shared hit=64202 read=54200
   ->  Hash Join  (cost=128.72..3123.92 rows=100 width=33) (actual time=185366.858..185366.858 rows=0 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=64202 read=54200
         ->  Nested Loop  (cost=128.68..3123.88 rows=100 width=37) (actual time=185366.770..185366.770 rows=0 loops=1)
               Buffers: shared hit=64198 read=54200
               ->  Hash Join  (cost=128.67..3100.26 rows=206 width=25) (actual time=185366.769..185366.769 rows=0 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared hit=64198 read=54200
                     ->  Nested Loop  (cost=128.64..3100.01 rows=2478 width=29) (actual time=746.237..185362.238 rows=2614 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=64197 read=54200
                           ->  Nested Loop  (cost=128.62..2077.78 rows=2341 width=29) (actual time=208.311..31657.249 rows=1259 loops=1)
                                 Buffers: shared hit=27864 read=29119
                                 ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=154.021..2459.576 rows=8790 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.002..1262.289 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=150.350..150.351 rows=1361 loops=1)
                                             Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=0.080..149.559 rows=1361 loops=1)
                                                   Filter: ((country_code)::text = '[ru]'::text)
                                                   Rows Removed by Filter: 233636
                                                   Buffers: shared hit=2 read=2992
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=3.318..3.318 rows=0 loops=8790)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=27859 read=7341
                           ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=72.026..122.077 rows=2 loops=1259)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 44
                                 Buffers: shared hit=36333 read=25081
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.005 rows=1 loops=1)
                                 Filter: ((role)::text = 'actor'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared hit=1
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.11 rows=1 width=20) (never executed)
                     Index Cond: (id = ci.person_role_id)
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.029..0.029 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.008..0.009 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2623.697 ms
 Execution Time: 185367.687 ms
(53 rows)


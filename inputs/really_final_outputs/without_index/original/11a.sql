                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4434.85..4434.85 rows=1 width=96) (actual time=177369.181..177369.181 rows=1 loops=1)
   Buffers: shared hit=7567765 read=83334
   ->  Nested Loop  (cost=221.64..4434.85 rows=1 width=48) (actual time=11062.989..177362.003 rows=310 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Rows Removed by Join Filter: 96298665
         Buffers: shared hit=7567765 read=83334
         ->  Nested Loop  (cost=221.64..2604.63 rows=1 width=43) (actual time=10932.670..128614.859 rows=402 loops=1)
               Join Filter: (mc.movie_id = ml.movie_id)
               Rows Removed by Join Filter: 44626542
               Buffers: shared hit=3720239 read=47337
               ->  Nested Loop  (cost=49.50..1520.66 rows=1 width=20) (actual time=1417.419..4799.272 rows=199 loops=1)
                     Join Filter: (mk.movie_id = ml.movie_id)
                     Rows Removed by Join Filter: 24409161
                     Buffers: shared hit=11 read=25559
                     ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.158..64.003 rows=2315 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=6 read=161
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.016..59.077 rows=29997 loops=1)
                                 Buffers: shared hit=2 read=161
                           ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.043..0.043 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.013..0.027 rows=2 loops=1)
                                       Filter: ((link)::text ~~ '%follow%'::text)
                                       Rows Removed by Filter: 16
                                       Buffers: shared hit=1
                     ->  Materialize  (cost=49.46..1498.11 rows=34 width=4) (actual time=0.041..1.054 rows=10544 loops=2315)
                           Buffers: shared hit=5 read=25398
                           ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=93.811..1380.195 rows=10544 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=5 read=25398
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.010..656.543 rows=4523930 loops=1)
                                       Buffers: shared hit=3 read=24451
                                 ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=93.296..93.296 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=2 read=947
                                       ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=32.565..93.284 rows=1 loops=1)
                                             Filter: (keyword = 'sequel'::text)
                                             Rows Removed by Filter: 134169
                                             Buffers: shared hit=2 read=947
               ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=167.808..602.562 rows=224256 loops=199)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=3720228 read=21778
                     ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=1.302..548.065 rows=240875 loops=199)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=3720227 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.014..345.876 rows=1271989 loops=199)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 1337140
                                 Buffers: shared hit=3720225 read=18786
                           ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=144.660..144.660 rows=48302 loops=1)
                                 Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=3.781..127.010 rows=48302 loops=1)
                                       Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                       Rows Removed by Filter: 186695
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.008 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=910581 width=21) (actual time=0.036..101.492 rows=239550 loops=402)
               Filter: ((production_year >= 1950) AND (production_year <= 2000))
               Rows Removed by Filter: 436076
               Buffers: shared hit=3847526 read=35997
 Planning Time: 3197.264 ms
 Execution Time: 177437.580 ms
(70 rows)


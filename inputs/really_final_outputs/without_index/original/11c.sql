                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4324.92..4324.92 rows=1 width=96) (actual time=69360.343..69360.343 rows=1 loops=1)
   Buffers: shared hit=6963 read=83334
   ->  Nested Loop  (cost=1109.14..4324.92 rows=1 width=60) (actual time=3131.792..69357.409 rows=6946 loops=1)
         Join Filter: (ml.link_type_id = lt.id)
         Rows Removed by Join Filter: 42158
         Buffers: shared hit=6963 read=83334
         ->  Nested Loop  (cost=1109.14..4324.88 rows=1 width=64) (actual time=3131.778..69341.430 rows=6946 loops=1)
               Join Filter: (mk.movie_id = ml.movie_id)
               Rows Removed by Join Filter: 397846433
               Buffers: shared hit=17 read=83334
               ->  Hash Join  (cost=54.67..1503.31 rows=101 width=4) (actual time=84.837..1535.437 rows=47403 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=8 read=25398
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..841.189 rows=4523930 loops=1)
                           Buffers: shared hit=3 read=24451
                     ->  Hash  (cost=54.67..54.67 rows=3 width=4) (actual time=84.460..84.460 rows=3 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=2 read=947
                           ->  Seq Scan on keyword k  (cost=0.00..54.67 rows=3 width=4) (actual time=22.440..84.438 rows=3 loops=1)
                                 Filter: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                 Rows Removed by Filter: 134167
                                 Buffers: shared hit=2 read=947
               ->  Materialize  (cost=1054.47..2821.12 rows=20 width=76) (actual time=0.025..0.434 rows=8393 loops=47403)
                     Buffers: shared hit=9 read=57936
                     ->  Hash Join  (cost=1054.47..2821.11 rows=20 width=76) (actual time=1187.352..3022.367 rows=8393 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=9 read=57936
                           ->  Hash Join  (cost=1054.44..2821.08 rows=27 width=80) (actual time=1187.281..3018.151 rows=8402 loops=1)
                                 Hash Cond: (t.id = ml.movie_id)
                                 Buffers: shared hit=8 read=57936
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=2287272 width=21) (actual time=27.329..1493.486 rows=2287271 loops=1)
                                       Filter: (production_year > 1950)
                                       Rows Removed by Filter: 241041
                                       Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=1054.44..1054.44 rows=30 width=59) (actual time=1087.301..1087.301 rows=8402 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1134kB
                                       Buffers: shared hit=7 read=21939
                                       ->  Hash Join  (cost=1043.76..1054.44 rows=30 width=59) (actual time=1064.816..1081.648 rows=8402 loops=1)
                                             Hash Cond: (ml.movie_id = mc.movie_id)
                                             Buffers: shared hit=7 read=21939
                                             ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.015..32.222 rows=29997 loops=1)
                                                   Buffers: shared hit=2 read=161
                                             ->  Hash  (cost=1043.67..1043.67 rows=569 width=51) (actual time=1037.021..1037.022 rows=13893 loops=1)
                                                   Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1531kB
                                                   Buffers: shared hit=5 read=21778
                                                   ->  Hash Join  (cost=164.91..1043.67 rows=569 width=51) (actual time=148.403..1030.545 rows=13893 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=5 read=21778
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1337140 width=36) (actual time=0.011..698.473 rows=1337140 loops=1)
                                                               Filter: (note IS NOT NULL)
                                                               Rows Removed by Filter: 1271989
                                                               Buffers: shared hit=3 read=18786
                                                         ->  Hash  (cost=164.90..164.90 rows=100 width=23) (actual time=143.151..143.151 rows=89 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=100 width=23) (actual time=8.650..143.071 rows=89 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                                                                     Rows Removed by Filter: 234908
                                                                     Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.023..0.023 rows=3 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.011..0.015 rows=3 loops=1)
                                       Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=1
         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.000..0.001 rows=7 loops=6946)
               Buffers: shared hit=6946
 Planning Time: 3174.162 ms
 Execution Time: 69361.443 ms
(70 rows)


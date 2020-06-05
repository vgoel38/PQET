                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16045.81..16045.81 rows=1 width=96) (actual time=1596720.753..1596720.753 rows=1 loops=1)
   Buffers: shared hit=58341786 read=211877
   ->  Nested Loop  (cost=49.53..16045.81 rows=1 width=48) (actual time=77263.746..1596707.684 rows=1874 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Rows Removed by Join Filter: 189939594
         Buffers: shared hit=58341786 read=211877
         ->  Nested Loop  (cost=49.53..14070.31 rows=1 width=47) (actual time=77192.290..1543347.157 rows=1874 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 139188431
               Buffers: shared hit=54772512 read=209227
               ->  Nested Loop  (cost=49.53..13898.20 rows=1 width=32) (actual time=10245.233..1354885.897 rows=4395 loops=1)
                     Join Filter: (mc.movie_id = ml.movie_id)
                     Rows Removed by Join Filter: 890665893
                     Buffers: shared hit=46052438 read=206235
                     ->  Nested Loop  (cost=49.50..12944.94 rows=1 width=24) (actual time=9679.373..844965.566 rows=746 loops=1)
                           Join Filter: (ml.movie_id = mi.movie_id)
                           Rows Removed by Join Filter: 186307631
                           Buffers: shared hit=32054629 read=187449
                           ->  Nested Loop  (cost=49.50..1520.66 rows=1 width=20) (actual time=1271.200..4606.272 rows=199 loops=1)
                                 Join Filter: (mk.movie_id = ml.movie_id)
                                 Rows Removed by Join Filter: 24409161
                                 Buffers: shared hit=11 read=25559
                                 ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.055..19.731 rows=2315 loops=1)
                                       Hash Cond: (ml.link_type_id = lt.id)
                                       Buffers: shared hit=6 read=161
                                       ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.005..14.876 rows=29997 loops=1)
                                             Buffers: shared hit=2 read=161
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.019..0.019 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.007..0.011 rows=2 loops=1)
                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                   Rows Removed by Filter: 16
                                                   Buffers: shared hit=1
                                 ->  Materialize  (cost=49.46..1498.11 rows=34 width=4) (actual time=0.035..0.989 rows=10544 loops=2315)
                                       Buffers: shared hit=5 read=25398
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=79.739..1234.449 rows=10544 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=5 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.003..547.424 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=79.515..79.515 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=19.837..79.501 rows=1 loops=1)
                                                         Filter: (keyword = 'sequel'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared hit=2 read=947
                           ->  Seq Scan on movie_info mi  (cost=0.00..11287.12 rows=934488 width=4) (actual time=0.042..4146.148 rows=936223 loops=199)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                 Rows Removed by Filter: 13899497
                                 Buffers: shared hit=32054618 read=161890
                     ->  Hash Join  (cost=0.03..906.58 rows=317997 width=8) (actual time=144.584..590.672 rows=1193928 loops=746)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=13997809 read=18786
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.014..318.994 rows=1271989 loops=746)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 1337140
                                 Buffers: shared hit=13997808 read=18786
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.007 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=0.004..40.277 rows=31670 loops=4395)
                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                     Rows Removed by Filter: 124172
                     Buffers: shared hit=8720074 read=2992
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1900368 width=21) (actual time=0.009..20.506 rows=101356 loops=1874)
               Filter: ((production_year >= 1950) AND (production_year <= 2010))
               Rows Removed by Filter: 28660
               Buffers: shared hit=3569274 read=2650
 Planning Time: 5594.043 ms
 Execution Time: 1596721.627 ms
(76 rows)


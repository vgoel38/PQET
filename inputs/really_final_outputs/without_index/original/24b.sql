                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34064.61..34064.61 rows=1 width=96) (actual time=158998.228..158998.229 rows=1 loops=1)
   Buffers: shared hit=7134241 read=589714
   ->  Nested Loop  (cost=5890.47..34064.61 rows=1 width=48) (actual time=30878.235..158998.064 rows=45 loops=1)
         Join Filter: (it.id = mi.info_type_id)
         Buffers: shared hit=7134241 read=589714
         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.025..0.063 rows=1 loops=1)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 112
               Buffers: shared hit=1
         ->  Nested Loop  (cost=5890.47..34064.56 rows=1 width=52) (actual time=30878.204..158997.964 rows=45 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Rows Removed by Join Filter: 7531130
               Buffers: shared hit=7134240 read=589714
               ->  Nested Loop  (cost=5890.47..25612.29 rows=1 width=64) (actual time=28484.977..79844.208 rows=25 loops=1)
                     Join Filter: (chn.id = ci.person_role_id)
                     Rows Removed by Join Filter: 53006200
                     Buffers: shared hit=3072432 read=427403
                     ->  Nested Loop  (cost=5890.47..23790.99 rows=1 width=52) (actual time=27288.984..69474.996 rows=25 loops=1)
                           Join Filter: (rt.id = ci.role_id)
                           Buffers: shared hit=2482559 read=402826
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.015 rows=1 loops=1)
                                 Filter: ((role)::text = 'actress'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared hit=1
                           ->  Nested Loop  (cost=5890.47..23790.95 rows=1 width=56) (actual time=27288.972..69474.950 rows=25 loops=1)
                                 Join Filter: (n.id = ci.person_id)
                                 Rows Removed by Join Filter: 1136675
                                 Buffers: shared hit=2482558 read=402826
                                 ->  Nested Loop  (cost=3205.13..20611.16 rows=1 width=45) (actual time=15980.328..42831.125 rows=108 loops=1)
                                       Join Filter: (t.id = ci.movie_id)
                                       Rows Removed by Join Filter: 5204754
                                       Buffers: shared hit=1263289 read=335822
                                       ->  Nested Loop  (cost=3205.13..4425.39 rows=1 width=29) (actual time=3757.518..4173.368 rows=6 loops=1)
                                             Join Filter: (cn.id = mc.company_id)
                                             Rows Removed by Join Filter: 56
                                             Buffers: shared hit=14 read=83173
                                             ->  Seq Scan on company_name cn  (cost=0.00..146.65 rows=1 width=4) (actual time=58.325..159.342 rows=1 loops=1)
                                                   Filter: (((country_code)::text = '[us]'::text) AND (name = 'DreamWorks Animation'::text))
                                                   Rows Removed by Filter: 234996
                                                   Buffers: shared hit=2 read=2992
                                             ->  Hash Join  (cost=3205.13..4278.74 rows=1 width=33) (actual time=3175.461..4014.004 rows=62 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=12 read=80181
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..499.043 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=3205.13..3205.13 rows=1 width=25) (actual time=3086.519..3086.519 rows=7 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=6 read=61395
                                                         ->  Nested Loop  (cost=1696.56..3205.13 rows=1 width=25) (actual time=1900.868..3086.508 rows=7 loops=1)
                                                               Join Filter: (mk.keyword_id = k.id)
                                                               Rows Removed by Join Filter: 252
                                                               Buffers: shared hit=6 read=61395
                                                               ->  Hash Join  (cost=1696.56..3145.20 rows=52 width=29) (actual time=1814.655..3000.249 rows=88 loops=1)
                                                                     Hash Cond: (mk.movie_id = t.id)
                                                                     Buffers: shared hit=4 read=60448
                                                                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.004..707.353 rows=4523930 loops=1)
                                                                           Buffers: shared hit=3 read=24451
                                                                     ->  Hash  (cost=1696.56..1696.56 rows=29 width=21) (actual time=1712.851..1712.851 rows=8 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1 read=35997
                                                                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=29 width=21) (actual time=405.253..1712.804 rows=8 loops=1)
                                                                                 Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                                 Rows Removed by Filter: 2528304
                                                                                 Buffers: shared hit=1 read=35997
                                                               ->  Materialize  (cost=0.00..59.88 rows=4 width=4) (actual time=0.244..0.980 rows=3 loops=88)
                                                                     Buffers: shared hit=2 read=947
                                                                     ->  Seq Scan on keyword k  (cost=0.00..59.88 rows=4 width=4) (actual time=21.483..86.179 rows=3 loops=1)
                                                                           Filter: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                                                                           Rows Removed by Filter: 134167
                                                                           Buffers: shared hit=2 read=947
                                       ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.007..6363.623 rows=867477 loops=6)
                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 35376867
                                             Buffers: shared hit=1263275 read=252649
                                 ->  Hash Join  (cost=2685.35..3178.57 rows=8338 width=23) (actual time=24.238..245.680 rows=10525 loops=108)
                                       Hash Cond: (an.person_id = n.id)
                                       Buffers: shared hit=1219269 read=67004
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.002..69.652 rows=901343 loops=108)
                                             Buffers: shared hit=1219267 read=11393
                                       ->  Hash  (cost=2679.69..2679.69 rows=38551 width=19) (actual time=2605.257..2605.258 rows=50011 loops=1)
                                             Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                             Buffers: shared hit=2 read=55611
                                             ->  Seq Scan on name n  (cost=0.00..2679.69 rows=38551 width=19) (actual time=1096.897..2577.548 rows=50011 loops=1)
                                                   Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                   Rows Removed by Filter: 4117480
                                                   Buffers: shared hit=2 read=55611
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=0.718..178.714 rows=2120249 loops=25)
                           Buffers: shared hit=589873 read=24577
               ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=304878 width=8) (actual time=363.972..3141.031 rows=301247 loops=25)
                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                     Rows Removed by Filter: 14534473
                     Buffers: shared hit=4061808 read=162311
 Planning Time: 11313.547 ms
 Execution Time: 159016.291 ms
(94 rows)


                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17427.23..17427.23 rows=1 width=64) (actual time=1522464.172..1522464.172 rows=1 loops=1)
   Buffers: shared hit=91580939 read=582544
   ->  Nested Loop  (cost=1703.20..17427.16 rows=480 width=32) (actual time=17892.914..1521669.404 rows=1760645 loops=1)
         Buffers: shared hit=91580939 read=582544
         ->  Nested Loop  (cost=1703.18..17403.47 rows=1330 width=36) (actual time=12670.968..1472933.165 rows=6023690 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=67472208 read=579341
               ->  Nested Loop  (cost=1703.17..17395.56 rows=408 width=44) (actual time=12638.101..1450842.556 rows=702993 loops=1)
                     Buffers: shared hit=64317548 read=570000
                     ->  Nested Loop  (cost=1703.16..17368.44 rows=469 width=52) (actual time=5289.442..1408776.110 rows=341836 loops=1)
                           Buffers: shared hit=63018332 read=564883
                           ->  Nested Loop  (cost=1703.14..17192.26 rows=968 width=56) (actual time=5263.824..1277275.333 rows=371543 loops=1)
                                 Buffers: shared hit=61672778 read=542134
                                 ->  Hash Join  (cost=1703.13..16086.83 rows=4192 width=37) (actual time=5242.312..1193209.896 rows=371852 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=60196875 read=528718
                                       ->  Nested Loop  (cost=1703.10..16082.26 rows=50303 width=41) (actual time=5242.207..1192578.392 rows=1170967 loops=1)
                                             Join Filter: (t.id = ci.movie_id)
                                             Buffers: shared hit=60196872 read=528717
                                             ->  Hash Join  (cost=1703.08..9040.72 rows=71736 width=25) (actual time=3282.594..16060.041 rows=1798330 loops=1)
                                                   Hash Cond: (mi.movie_id = t.id)
                                                   Buffers: shared read=197891
                                                   ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1561.774..11155.881 rows=3036719 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared read=161893
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=20.143..5950.776 rows=14835720 loops=1)
                                                               Buffers: shared read=161892
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.508..19.508 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.463..19.497 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1711.592..1711.592 rows=1381453 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                                         Buffers: shared read=35998
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=4.045..1135.492 rows=1381453 loops=1)
                                                               Filter: (production_year > 2000)
                                                               Rows Removed by Filter: 1146859
                                                               Buffers: shared read=35998
                                             ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.10 rows=1 width=16) (actual time=0.597..0.653 rows=1 loops=1798330)
                                                   Index Cond: (movie_id = mi.movie_id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 30
                                                   Buffers: shared hit=60196872 read=330826
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.075..0.075 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.068..0.070 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared read=1
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.224..0.224 rows=1 loops=371852)
                                       Index Cond: (id = ci.person_id)
                                       Filter: ((gender)::text = 'f'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=1475903 read=13416
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=0.352..0.352 rows=1 loops=371543)
                                 Index Cond: (id = ci.person_role_id)
                                 Buffers: shared hit=1345554 read=22749
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=0.106..0.121 rows=2 loops=341836)
                           Index Cond: (person_id = n.id)
                           Buffers: shared hit=1299216 read=5117
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.020..0.027 rows=9 loops=702993)
                     Index Cond: (movie_id = mi.movie_id)
                     Buffers: shared hit=3154660 read=9341
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.008..0.008 rows=0 loops=6023690)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=24108731 read=3203
 Planning Time: 5602.965 ms
 Execution Time: 1522465.678 ms
(74 rows)


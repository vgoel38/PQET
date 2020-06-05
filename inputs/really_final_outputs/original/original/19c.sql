                                                                                              QUERY PLAN                                                                                               
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10958.76..10958.76 rows=1 width=64) (actual time=1329537.080..1329537.080 rows=1 loops=1)
   Buffers: shared hit=23706376 read=487835
   ->  Nested Loop  (cost=140.98..10958.76 rows=1 width=32) (actual time=85561.522..1329522.236 rows=3575 loops=1)
         Buffers: shared hit=23706376 read=487835
         ->  Nested Loop  (cost=140.96..10958.58 rows=1 width=36) (actual time=85548.077..1326483.125 rows=3744 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=23692458 read=487423
               ->  Nested Loop  (cost=140.95..10958.52 rows=1 width=44) (actual time=85493.805..1320715.569 rows=2830 loops=1)
                     Buffers: shared hit=23682046 read=487124
                     ->  Hash Join  (cost=140.94..10919.66 rows=147 width=25) (actual time=4807.914..1261731.957 rows=132216 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=23160661 read=478700
                           ->  Nested Loop  (cost=140.90..10919.46 rows=1764 width=29) (actual time=3993.437..1261475.439 rows=436929 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=23160657 read=478700
                                 ->  Nested Loop  (cost=140.89..9698.82 rows=2784 width=29) (actual time=1674.852..121243.348 rows=391371 loops=1)
                                       Join Filter: (mi.movie_id = t.id)
                                       Buffers: shared hit=3360028 read=228256
                                       ->  Hash Join  (cost=140.87..9372.12 rows=5095 width=8) (actual time=1663.206..23136.513 rows=424729 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=1699037 read=189257
                                             ->  Nested Loop  (cost=0.01..9230.11 rows=14112 width=12) (actual time=1521.313..22053.687 rows=890059 loops=1)
                                                   Buffers: shared hit=1699035 read=186265
                                                   ->  Nested Loop  (cost=0.00..8472.87 rows=3937 width=4) (actual time=1521.280..11038.348 rows=451039 loops=1)
                                                         Join Filter: (it.id = mi.info_type_id)
                                                         Rows Removed by Join Filter: 65
                                                         Buffers: shared hit=6673 read=162311
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.030 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=444887 width=8) (actual time=688.390..10751.058 rows=451104 loops=1)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                               Rows Removed by Filter: 14384616
                                                               Buffers: shared hit=6672 read=162311
                                                   ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.19 rows=2 width=8) (actual time=0.018..0.022 rows=2 loops=451039)
                                                         Index Cond: (movie_id = mi.movie_id)
                                                         Buffers: shared hit=1692362 read=23954
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.455..141.455 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=5.902..109.263 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=2 read=2992
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.229..0.229 rows=1 loops=424729)
                                             Index Cond: (id = mc.movie_id)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=1660991 read=38999
                                 ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.44 rows=1 width=16) (actual time=2.617..2.911 rows=1 loops=391371)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 48
                                       Buffers: shared hit=19800629 read=250444
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.041..0.041 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.021 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.445..0.445 rows=0 loops=132216)
                           Index Cond: (id = ci.person_id)
                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=521385 read=8424
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=1.969..2.035 rows=1 loops=2830)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=10412 read=299
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=0.809..0.809 rows=1 loops=3744)
               Index Cond: (id = ci.person_role_id)
               Buffers: shared hit=13918 read=412
 Planning Time: 6908.046 ms
 Execution Time: 1329537.752 ms
(75 rows)


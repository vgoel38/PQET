                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17421.03..17421.03 rows=1 width=64) (actual time=1527745.898..1527745.898 rows=1 loops=1)
   Buffers: shared hit=91580976 read=582507
   ->  Nested Loop  (cost=1703.20..17420.95 rows=475 width=32) (actual time=17985.517..1526941.443 rows=1760645 loops=1)
         Buffers: shared hit=91580976 read=582507
         ->  Nested Loop  (cost=1703.18..17397.51 rows=1316 width=36) (actual time=12830.881..1478011.452 rows=6023690 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=67472238 read=579311
               ->  Nested Loop  (cost=1703.17..17389.70 rows=403 width=44) (actual time=12830.702..1452204.829 rows=702993 loops=1)
                     Buffers: shared hit=64317575 read=569973
                     ->  Nested Loop  (cost=1703.16..17362.75 rows=466 width=52) (actual time=5223.731..1405628.926 rows=341836 loops=1)
                           Buffers: shared hit=63018357 read=564858
                           ->  Nested Loop  (cost=1703.14..17187.47 rows=961 width=56) (actual time=5206.430..1269913.895 rows=371543 loops=1)
                                 Buffers: shared hit=61672797 read=542115
                                 ->  Hash Join  (cost=1703.13..16086.80 rows=4165 width=37) (actual time=5184.927..1180374.141 rows=371852 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=60196892 read=528701
                                       ->  Nested Loop  (cost=1703.10..16082.26 rows=49983 width=41) (actual time=5184.882..1179731.643 rows=1170967 loops=1)
                                             Join Filter: (t.id = ci.movie_id)
                                             Buffers: shared hit=60196888 read=528701
                                             ->  Hash Join  (cost=1703.08..9040.72 rows=71736 width=25) (actual time=3250.516..16128.374 rows=1798330 loops=1)
                                                   Hash Cond: (mi.movie_id = t.id)
                                                   Buffers: shared hit=4 read=197887
                                                   ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1524.588..11232.315 rows=3036719 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared hit=3 read=161890
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=12.827..5973.404 rows=14835720 loops=1)
                                                               Buffers: shared hit=2 read=161890
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.067..0.067 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.025..0.059 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1718.532..1718.532 rows=1381453 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                                         Buffers: shared hit=1 read=35997
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=10.748..1134.278 rows=1381453 loops=1)
                                                               Filter: (production_year > 2000)
                                                               Rows Removed by Filter: 1146859
                                                               Buffers: shared hit=1 read=35997
                                             ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.10 rows=1 width=16) (actual time=0.589..0.646 rows=1 loops=1798330)
                                                   Index Cond: (movie_id = mi.movie_id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 30
                                                   Buffers: shared hit=60196884 read=330814
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.009 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared hit=1
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.239..0.239 rows=1 loops=371852)
                                       Index Cond: (id = ci.person_id)
                                       Filter: ((gender)::text = 'f'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=1475905 read=13414
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=0.364..0.364 rows=1 loops=371543)
                                 Index Cond: (id = ci.person_role_id)
                                 Buffers: shared hit=1345560 read=22743
                     ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=0.118..0.134 rows=2 loops=341836)
                           Index Cond: (person_id = n.id)
                           Buffers: shared hit=1299218 read=5115
               ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.025..0.033 rows=9 loops=702993)
                     Index Cond: (movie_id = mi.movie_id)
                     Buffers: shared hit=3154663 read=9338
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.008..0.008 rows=0 loops=6023690)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=24108738 read=3196
 Planning Time: 6859.989 ms
 Execution Time: 1527748.084 ms
(74 rows)


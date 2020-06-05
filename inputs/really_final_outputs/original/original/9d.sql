                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22218.56..22218.56 rows=1 width=128) (actual time=395048.937..395048.937 rows=1 loops=1)
   Buffers: shared hit=8366880 read=386118
   ->  Nested Loop  (cost=4318.68..22217.07 rows=4819 width=64) (actual time=8684.487..394493.311 rows=483082 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=8366880 read=386118
         ->  Nested Loop  (cost=4318.67..21908.44 rows=4819 width=55) (actual time=8631.939..241087.420 rows=483082 loops=1)
               Buffers: shared hit=6449623 read=369940
               ->  Nested Loop  (cost=4318.66..21670.67 rows=13347 width=59) (actual time=8531.811..213389.411 rows=909946 loops=1)
                     Buffers: shared hit=2812176 read=366434
                     ->  Nested Loop  (cost=4318.64..20933.04 rows=6972 width=51) (actual time=8485.658..27113.341 rows=482841 loops=1)
                           Buffers: shared hit=965938 read=351399
                           ->  Hash Join  (cost=4318.63..20467.36 rows=8051 width=43) (actual time=8429.662..20773.080 rows=255493 loops=1)
                                 Hash Cond: (ci.person_role_id = chn.id)
                                 Buffers: shared hit=13 read=344705
                                 ->  Hash Join  (cost=2497.32..18644.70 rows=16609 width=31) (actual time=6517.547..18545.493 rows=276005 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=8 read=308260
                                       ->  Hash Join  (cost=2497.29..18626.69 rows=199312 width=35) (actual time=6517.514..18283.455 rows=276090 loops=1)
                                             Hash Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=7 read=308260
                                             ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.012..15197.109 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared hit=5 read=252649
                                             ->  Hash  (cost=2356.12..2356.12 rows=961739 width=19) (actual time=2605.251..2605.251 rows=961555 loops=1)
                                                   Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                                   Buffers: shared hit=2 read=55611
                                                   ->  Seq Scan on name n  (cost=0.00..2356.12 rows=961739 width=19) (actual time=1096.727..2310.901 rows=961555 loops=1)
                                                         Filter: ((gender)::text = 'f'::text)
                                                         Rows Removed by Filter: 3205936
                                                         Buffers: shared hit=2 read=55611
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 11
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1887.322..1887.323 rows=3140339 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                       Buffers: shared hit=2 read=36445
                                       ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=25.338..893.654 rows=3140339 loops=1)
                                             Buffers: shared hit=2 read=36445
                           ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=0.021..0.023 rows=2 loops=255493)
                                 Index Cond: (person_id = n.id)
                                 Buffers: shared hit=965925 read=6694
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=0.328..0.384 rows=2 loops=482841)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=1846238 read=15035
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.029..0.029 rows=1 loops=909946)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=3637447 read=3506
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.316..0.316 rows=1 loops=483082)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=1917257 read=16178
 Planning Time: 4541.651 ms
 Execution Time: 395075.095 ms
(59 rows)


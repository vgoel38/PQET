                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17868.92..17868.92 rows=1 width=64) (actual time=16812.332..16812.332 rows=1 loops=1)
   Buffers: shared hit=17 read=346870
   ->  Hash Join  (cost=4481.03..17868.90 rows=100 width=33) (actual time=16812.289..16812.289 rows=0 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=17 read=346870
         ->  Hash Join  (cost=4481.00..17868.86 rows=100 width=37) (actual time=16812.200..16812.200 rows=0 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=13 read=346870
               ->  Hash Join  (cost=2659.69..16047.54 rows=205 width=25) (actual time=14758.817..14758.817 rows=0 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=11 read=310425
                     ->  Hash Join  (cost=0.03..13373.99 rows=119151 width=8) (actual time=894.798..11994.887 rows=13 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=5 read=252650
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=1429807 width=12) (actual time=894.753..11768.043 rows=1435439 loops=1)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 34808905
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.019..0.020 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.013 rows=1 loops=1)
                                       Filter: ((role)::text = 'actor'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=2659.31..2659.31 rows=2341 width=29) (actual time=2763.888..2763.888 rows=1259 loops=1)
                           Buckets: 4096  Batches: 1  Memory Usage: 108kB
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=1113.28..2659.31 rows=2341 width=29) (actual time=1059.156..2762.600 rows=1259 loops=1)
                                 Hash Cond: (t.id = mc.movie_id)
                                 Buffers: shared hit=6 read=57775
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=6.469..1594.866 rows=391666 loops=1)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 2136646
                                       Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=1111.06..1111.06 rows=15111 width=8) (actual time=1042.272..1042.272 rows=8790 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared hit=5 read=21778
                                       ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=147.155..1039.004 rows=8790 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.018..447.949 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=143.093..143.093 rows=1361 loops=1)
                                                   Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=7.874..142.249 rows=1361 loops=1)
                                                         Filter: ((country_code)::text = '[ru]'::text)
                                                         Rows Removed by Filter: 233636
                                                         Buffers: shared hit=2 read=2992
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=2030.109..2030.109 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=2 read=36445
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=18.408..1014.977 rows=3140339 loops=1)
                           Buffers: shared hit=2 read=36445
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.023..0.023 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.009..0.012 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2759.983 ms
 Execution Time: 16853.628 ms
(62 rows)


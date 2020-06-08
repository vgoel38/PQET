                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=19411.38..19411.38 rows=1 width=64) (actual time=18294.161..18294.161 rows=1 loops=1)
   Buffers: shared hit=18 read=377429
   ->  Hash Join  (cost=6157.20..19411.38 rows=1 width=33) (actual time=11679.433..18294.078 rows=62 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=18 read=377429
         ->  Hash Join  (cost=4482.12..17736.31 rows=1 width=24) (actual time=9717.644..16332.236 rows=62 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared hit=14 read=341432
               ->  Hash Join  (cost=3176.46..16430.62 rows=31 width=20) (actual time=8631.675..15246.060 rows=659 loops=1)
                     Hash Cond: (ci.person_id = an.person_id)
                     Buffers: shared hit=9 read=319654
                     ->  Hash Join  (cost=0.03..13253.30 rows=7638 width=8) (actual time=3988.134..11975.402 rows=34848 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=5 read=252650
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=91662 width=12) (actual time=13.825..11945.806 rows=93095 loops=1)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 36151249
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.012 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=3175.80..3175.80 rows=4260 width=24) (actual time=3263.787..3263.787 rows=4031 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 293kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2682.58..3175.80 rows=4260 width=24) (actual time=2613.348..3261.711 rows=4031 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.007..420.913 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=19696 width=4) (actual time=2607.873..2607.873 rows=20911 loops=1)
                                       Buckets: 32768  Batches: 1  Memory Usage: 992kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=19696 width=4) (actual time=11.150..2596.096 rows=20911 loops=1)
                                             Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                                             Rows Removed by Filter: 4146580
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=1305.59..1305.59 rows=458 width=4) (actual time=1085.950..1085.950 rows=48328 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2212kB
                     Buffers: shared hit=5 read=21778
                     ->  Hash Join  (cost=129.40..1305.59 rows=458 width=4) (actual time=193.873..1072.221 rows=48328 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=15927 width=8) (actual time=5.258..864.499 rows=48897 loops=1)
                                 Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                                 Rows Removed by Filter: 2560232
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=188.586..188.586 rows=6752 loops=1)
                                 Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=53.121..185.027 rows=6752 loops=1)
                                       Filter: ((country_code)::text = '[jp]'::text)
                                       Rows Removed by Filter: 228245
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1951.946..1951.946 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=1 read=35997
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=19.077..1056.641 rows=2528312 loops=1)
                     Buffers: shared hit=1 read=35997
 Planning Time: 4424.554 ms
 Execution Time: 18298.185 ms
(64 rows)


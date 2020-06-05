                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=19411.90..19411.90 rows=1 width=64) (actual time=18230.997..18230.997 rows=1 loops=1)
   Buffers: shared hit=18 read=377429
   ->  Hash Join  (cost=6157.55..19411.90 rows=1 width=33) (actual time=11524.855..18230.929 rows=62 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=18 read=377429
         ->  Hash Join  (cost=4482.48..17736.83 rows=1 width=24) (actual time=9644.548..16350.585 rows=62 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared hit=14 read=341432
               ->  Hash Join  (cost=3176.82..16431.14 rows=35 width=20) (actual time=8559.107..15264.938 rows=659 loops=1)
                     Hash Cond: (ci.person_id = an1.person_id)
                     Buffers: shared hit=9 read=319654
                     ->  Hash Join  (cost=0.03..13253.45 rows=7772 width=8) (actual time=3913.981..11996.660 rows=34848 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=5 read=252650
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=93269 width=12) (actual time=14.489..11965.844 rows=93095 loops=1)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 36151249
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.030..0.031 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.020 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=3176.10..3176.10 rows=4689 width=24) (actual time=3261.016..3261.017 rows=4031 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 293kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2682.87..3176.10 rows=4689 width=24) (actual time=2612.694..3258.584 rows=4031 loops=1)
                                 Hash Cond: (an1.person_id = n1.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an1  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.011..424.887 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=21680 width=4) (actual time=2607.597..2607.597 rows=20911 loops=1)
                                       Buckets: 32768  Batches: 1  Memory Usage: 992kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n1  (cost=0.00..2679.69 rows=21680 width=4) (actual time=10.379..2595.473 rows=20911 loops=1)
                                             Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                                             Rows Removed by Filter: 4146580
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=1305.59..1305.59 rows=458 width=4) (actual time=1085.418..1085.418 rows=48328 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2212kB
                     Buffers: shared hit=5 read=21778
                     ->  Hash Join  (cost=129.40..1305.59 rows=458 width=4) (actual time=193.211..1071.007 rows=48328 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=15927 width=8) (actual time=5.163..863.583 rows=48897 loops=1)
                                 Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                                 Rows Removed by Filter: 2560232
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=187.982..187.982 rows=6752 loops=1)
                                 Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=52.861..184.388 rows=6752 loops=1)
                                       Filter: ((country_code)::text = '[jp]'::text)
                                       Rows Removed by Filter: 228245
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1870.702..1870.702 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=1 read=35997
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=12.536..985.045 rows=2528312 loops=1)
                     Buffers: shared hit=1 read=35997
 Planning Time: 4472.719 ms
 Execution Time: 18234.193 ms
(64 rows)


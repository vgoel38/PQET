                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=19411.90..19411.90 rows=1 width=64) (actual time=18562.500..18562.500 rows=1 loops=1)
   Buffers: shared hit=3 read=377444
   ->  Hash Join  (cost=6157.55..19411.90 rows=1 width=33) (actual time=11754.486..18562.447 rows=62 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=3 read=377444
         ->  Hash Join  (cost=4482.48..17736.83 rows=1 width=24) (actual time=9751.310..16559.233 rows=62 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared read=341446
               ->  Hash Join  (cost=3176.82..16431.14 rows=35 width=20) (actual time=8674.655..15482.383 rows=659 loops=1)
                     Hash Cond: (ci.person_id = an.person_id)
                     Buffers: shared read=319663
                     ->  Hash Join  (cost=0.03..13253.45 rows=7772 width=8) (actual time=3989.645..12272.184 rows=34848 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared read=252655
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=93269 width=12) (actual time=47.536..12222.192 rows=93095 loops=1)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 36151249
                                 Buffers: shared read=252654
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=19.562..19.563 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=19.543..19.550 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared read=1
                     ->  Hash  (cost=3176.10..3176.10 rows=4689 width=24) (actual time=3203.129..3203.129 rows=4031 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 293kB
                           Buffers: shared read=67008
                           ->  Hash Join  (cost=2682.87..3176.10 rows=4689 width=24) (actual time=2645.833..3201.148 rows=4031 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared read=67008
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=3.942..328.967 rows=901343 loops=1)
                                       Buffers: shared read=11395
                                 ->  Hash  (cost=2679.69..2679.69 rows=21680 width=4) (actual time=2636.047..2636.047 rows=20911 loops=1)
                                       Buckets: 32768  Batches: 1  Memory Usage: 992kB
                                       Buffers: shared read=55613
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=21680 width=4) (actual time=39.535..2624.496 rows=20911 loops=1)
                                             Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                                             Rows Removed by Filter: 4146580
                                             Buffers: shared read=55613
               ->  Hash  (cost=1305.59..1305.59 rows=458 width=4) (actual time=1076.634..1076.634 rows=48328 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2212kB
                     Buffers: shared read=21783
                     ->  Hash Join  (cost=129.40..1305.59 rows=458 width=4) (actual time=185.536..1062.487 rows=48328 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=21783
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=15927 width=8) (actual time=5.689..862.992 rows=48897 loops=1)
                                 Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                                 Rows Removed by Filter: 2560232
                                 Buffers: shared read=18789
                           ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=179.807..179.808 rows=6752 loops=1)
                                 Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=44.049..176.493 rows=6752 loops=1)
                                       Filter: ((country_code)::text = '[jp]'::text)
                                       Rows Removed by Filter: 228245
                                       Buffers: shared read=2994
         ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1993.091..1993.092 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared read=35998
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=9.958..1093.413 rows=2528312 loops=1)
                     Buffers: shared read=35998
 Planning Time: 3824.430 ms
 Execution Time: 18567.405 ms
(64 rows)


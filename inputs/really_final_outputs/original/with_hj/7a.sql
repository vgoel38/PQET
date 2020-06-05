                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21879.32..21879.32 rows=1 width=64) (actual time=21158.606..21158.606 rows=1 loops=1)
   Buffers: shared hit=4 read=406642
   ->  Hash Join  (cost=8093.81..21879.32 rows=1 width=32) (actual time=7692.288..21158.551 rows=32 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=4 read=406642
         ->  Hash Join  (cost=7505.45..21290.96 rows=1 width=44) (actual time=7125.118..20591.366 rows=14 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=1 read=395247
               ->  Hash Join  (cost=7495.37..21280.88 rows=1 width=52) (actual time=7060.338..20542.329 rows=390 loops=1)
                     Hash Cond: (n.id = pi.person_id)
                     Buffers: shared hit=1 read=395083
                     ->  Hash Join  (cost=5466.29..19187.34 rows=553491 width=48) (actual time=4382.801..18014.515 rows=848203 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=1 read=344264
                           ->  Hash Join  (cost=3719.80..17105.50 rows=4113627 width=27) (actual time=2668.672..14814.409 rows=5504872 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=1 read=308266
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=47.095..5377.332 rows=36244344 loops=1)
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=3650.38..3650.38 rows=472998 width=19) (actual time=2620.201..2620.201 rows=543291 loops=1)
                                       Buckets: 1048576 (originally 524288)  Batches: 1 (originally 1)  Memory Usage: 36304kB
                                       Buffers: shared hit=1 read=55612
                                       ->  Seq Scan on name n  (cost=0.00..3650.38 rows=472998 width=19) (actual time=3.585..2441.646 rows=543291 loops=1)
                                             Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                                             Rows Removed by Filter: 3624200
                                             Buffers: shared hit=1 read=55612
                           ->  Hash  (cost=1696.56..1696.56 rows=340186 width=21) (actual time=1712.431..1712.431 rows=340186 loops=1)
                                 Buckets: 524288  Batches: 1  Memory Usage: 22393kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=340186 width=21) (actual time=4.430..1505.273 rows=340186 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1995))
                                       Rows Removed by Filter: 2188126
                                       Buffers: shared read=35998
                     ->  Hash  (cost=2029.07..2029.07 rows=1 width=4) (actual time=2433.951..2433.952 rows=64 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                           Buffers: shared read=50819
                           ->  Hash Join  (cost=0.05..2029.07 rows=1 width=4) (actual time=71.400..2433.743 rows=64 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared read=50819
                                 ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=44.851..2406.789 rows=64 loops=1)
                                       Filter: (note = 'Volker Boehm'::text)
                                       Rows Removed by Filter: 2963600
                                       Buffers: shared read=50818
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=26.526..26.526 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=26.480..26.513 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
               ->  Hash  (cost=9.84..9.84 rows=1666 width=4) (actual time=48.868..48.869 rows=5186 loops=1)
                     Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 247kB
                     Buffers: shared read=164
                     ->  Hash Join  (cost=0.03..9.84 rows=1666 width=4) (actual time=27.034..46.185 rows=5186 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared read=164
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=26.602..33.756 rows=29997 loops=1)
                                 Buffers: shared read=163
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.305..0.305 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.290..0.296 rows=1 loops=1)
                                       Filter: ((link)::text = 'features'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared read=1
         ->  Hash  (cost=489.73..489.73 rows=671965 width=4) (actual time=564.616..564.616 rows=674692 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 31912kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..489.73 rows=671965 width=4) (actual time=15.918..369.061 rows=674692 loops=1)
                     Filter: (name ~~ '%a%'::text)
                     Rows Removed by Filter: 226651
                     Buffers: shared read=11395
 Planning Time: 5963.406 ms
 Execution Time: 21161.132 ms
(74 rows)


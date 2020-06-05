                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21879.32..21879.32 rows=1 width=64) (actual time=21001.124..21001.124 rows=1 loops=1)
   Buffers: shared hit=18 read=406628
   ->  Hash Join  (cost=8093.81..21879.32 rows=1 width=32) (actual time=7720.092..21001.071 rows=32 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=18 read=406628
         ->  Hash Join  (cost=7505.45..21290.96 rows=1 width=44) (actual time=7144.500..20425.466 rows=14 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=13 read=395235
               ->  Hash Join  (cost=7495.37..21280.88 rows=1 width=52) (actual time=7089.588..20386.399 rows=390 loops=1)
                     Hash Cond: (n.id = pi.person_id)
                     Buffers: shared hit=10 read=395074
                     ->  Hash Join  (cost=5466.29..19187.34 rows=553491 width=48) (actual time=4355.112..17862.189 rows=848203 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=8 read=344257
                           ->  Hash Join  (cost=3719.80..17105.50 rows=4113627 width=27) (actual time=2632.346..14672.386 rows=5504872 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=7 read=308260
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.010..5182.369 rows=36244344 loops=1)
                                       Buffers: shared hit=4 read=252650
                                 ->  Hash  (cost=3650.38..3650.38 rows=472998 width=19) (actual time=2629.932..2629.933 rows=543291 loops=1)
                                       Buckets: 1048576 (originally 524288)  Batches: 1 (originally 1)  Memory Usage: 36304kB
                                       Buffers: shared hit=3 read=55610
                                       ->  Seq Scan on name n  (cost=0.00..3650.38 rows=472998 width=19) (actual time=7.010..2450.798 rows=543291 loops=1)
                                             Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                                             Rows Removed by Filter: 3624200
                                             Buffers: shared hit=3 read=55610
                           ->  Hash  (cost=1696.56..1696.56 rows=340186 width=21) (actual time=1718.568..1718.568 rows=340186 loops=1)
                                 Buckets: 524288  Batches: 1  Memory Usage: 22393kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=340186 width=21) (actual time=9.581..1509.345 rows=340186 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1995))
                                       Rows Removed by Filter: 2188126
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=2029.07..2029.07 rows=1 width=4) (actual time=2430.315..2430.315 rows=64 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                           Buffers: shared hit=2 read=50817
                           ->  Hash Join  (cost=0.05..2029.07 rows=1 width=4) (actual time=67.091..2430.090 rows=64 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=2 read=50817
                                 ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=40.615..2403.217 rows=64 loops=1)
                                       Filter: (note = 'Volker Boehm'::text)
                                       Rows Removed by Filter: 2963600
                                       Buffers: shared hit=2 read=50816
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=26.450..26.450 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=26.405..26.438 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
               ->  Hash  (cost=9.84..9.84 rows=1666 width=4) (actual time=38.873..38.873 rows=5186 loops=1)
                     Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 247kB
                     Buffers: shared hit=3 read=161
                     ->  Hash Join  (cost=0.03..9.84 rows=1666 width=4) (actual time=20.764..36.627 rows=5186 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=3 read=161
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=20.611..26.569 rows=29997 loops=1)
                                 Buffers: shared hit=2 read=161
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.022..0.028 rows=1 loops=1)
                                       Filter: ((link)::text = 'features'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared hit=1
         ->  Hash  (cost=489.73..489.73 rows=671965 width=4) (actual time=573.144..573.144 rows=674692 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 31912kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..489.73 rows=671965 width=4) (actual time=0.016..378.632 rows=674692 loops=1)
                     Filter: (name ~~ '%a%'::text)
                     Rows Removed by Filter: 226651
                     Buffers: shared hit=2 read=11393
 Planning Time: 6819.274 ms
 Execution Time: 21003.478 ms
(74 rows)


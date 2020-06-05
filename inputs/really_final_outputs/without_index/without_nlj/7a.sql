                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21878.94..21878.94 rows=1 width=64) (actual time=21197.811..21197.811 rows=1 loops=1)
   Buffers: shared hit=16 read=406630
   ->  Hash Join  (cost=8093.75..21878.94 rows=1 width=32) (actual time=7695.468..21197.745 rows=32 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=16 read=406630
         ->  Hash Join  (cost=7505.39..21290.58 rows=1 width=44) (actual time=7095.083..20597.346 rows=14 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=11 read=395237
               ->  Hash Join  (cost=7495.31..21280.49 rows=1 width=52) (actual time=7010.259..20553.320 rows=390 loops=1)
                     Hash Cond: (n.id = pi.person_id)
                     Buffers: shared hit=10 read=395074
                     ->  Hash Join  (cost=5466.24..19187.01 rows=553043 width=48) (actual time=4342.910..18030.848 rows=848203 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=8 read=344257
                           ->  Hash Join  (cost=3719.75..17105.44 rows=4110294 width=27) (actual time=2629.357..14864.201 rows=5504872 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=7 read=308260
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.013..5400.923 rows=36244344 loops=1)
                                       Buffers: shared hit=4 read=252650
                                 ->  Hash  (cost=3650.38..3650.38 rows=472615 width=19) (actual time=2627.954..2627.954 rows=543291 loops=1)
                                       Buckets: 1048576 (originally 524288)  Batches: 1 (originally 1)  Memory Usage: 36304kB
                                       Buffers: shared hit=3 read=55610
                                       ->  Seq Scan on name n  (cost=0.00..3650.38 rows=472615 width=19) (actual time=9.447..2443.906 rows=543291 loops=1)
                                             Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                                             Rows Removed by Filter: 3624200
                                             Buffers: shared hit=3 read=55610
                           ->  Hash  (cost=1696.56..1696.56 rows=340186 width=21) (actual time=1711.429..1711.430 rows=340186 loops=1)
                                 Buckets: 524288  Batches: 1  Memory Usage: 22393kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=340186 width=21) (actual time=3.817..1508.594 rows=340186 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1995))
                                       Rows Removed by Filter: 2188126
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=2029.07..2029.07 rows=1 width=4) (actual time=2431.050..2431.050 rows=64 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                           Buffers: shared hit=2 read=50817
                           ->  Hash Join  (cost=0.05..2029.07 rows=1 width=4) (actual time=68.379..2430.816 rows=64 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=2 read=50817
                                 ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=41.950..2403.948 rows=64 loops=1)
                                       Filter: (note = 'Volker Boehm'::text)
                                       Rows Removed by Filter: 2963600
                                       Buffers: shared hit=2 read=50816
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=26.407..26.407 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=26.358..26.391 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
               ->  Hash  (cost=9.84..9.84 rows=1666 width=4) (actual time=43.864..43.864 rows=5186 loops=1)
                     Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 247kB
                     Buffers: shared hit=1 read=163
                     ->  Hash Join  (cost=0.03..9.84 rows=1666 width=4) (actual time=18.712..40.967 rows=5186 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=1 read=163
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=18.573..27.587 rows=29997 loops=1)
                                 Buffers: shared read=163
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.023..0.029 rows=1 loops=1)
                                       Filter: ((link)::text = 'features'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared hit=1
         ->  Hash  (cost=489.73..489.73 rows=671965 width=4) (actual time=597.861..597.861 rows=674692 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 31912kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..489.73 rows=671965 width=4) (actual time=0.015..403.427 rows=674692 loops=1)
                     Filter: (name ~~ '%a%'::text)
                     Rows Removed by Filter: 226651
                     Buffers: shared hit=2 read=11393
 Planning Time: 6730.244 ms
 Execution Time: 21200.223 ms
(74 rows)


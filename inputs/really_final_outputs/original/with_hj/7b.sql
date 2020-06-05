                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20481.41..20481.41 rows=1 width=64) (actual time=19809.948..19809.948 rows=1 loops=1)
   Buffers: shared hit=3 read=406643
   ->  Hash Join  (cost=7028.30..20481.41 rows=1 width=32) (actual time=15937.648..19809.924 rows=16 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=3 read=406643
         ->  Hash Join  (cost=6439.94..19893.05 rows=1 width=44) (actual time=15367.341..19239.611 rows=8 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared read=395248
               ->  Hash Join  (cost=6429.86..19882.96 rows=1 width=52) (actual time=7951.837..19191.718 rows=22 loops=1)
                     Hash Cond: (n.id = pi.person_id)
                     Buffers: shared read=395084
                     ->  Hash Join  (cost=4400.79..17851.11 rows=23849 width=48) (actual time=5335.952..16752.472 rows=33044 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared read=344265
                           ->  Hash Join  (cost=2693.07..16078.77 rows=792707 width=27) (actual time=2690.083..14867.741 rows=912324 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared read=308267
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=46.840..6098.629 rows=36244344 loops=1)
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=2679.69..2679.69 rows=91148 width=19) (actual time=2642.487..2642.487 rows=91976 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 5792kB
                                       Buffers: shared read=55613
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=91148 width=19) (actual time=45.928..2614.633 rows=91976 loops=1)
                                             Filter: (((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))
                                             Rows Removed by Filter: 4075515
                                             Buffers: shared read=55613
                           ->  Hash  (cost=1696.56..1696.56 rows=76065 width=21) (actual time=1713.744..1713.744 rows=76065 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5123kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=76065 width=21) (actual time=5.441..1656.593 rows=76065 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1984))
                                       Rows Removed by Filter: 2452247
                                       Buffers: shared read=35998
                     ->  Hash  (cost=2029.07..2029.07 rows=1 width=4) (actual time=2435.421..2435.421 rows=64 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                           Buffers: shared read=50819
                           ->  Hash Join  (cost=0.05..2029.07 rows=1 width=4) (actual time=72.792..2435.189 rows=64 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared read=50819
                                 ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=46.470..2408.476 rows=64 loops=1)
                                       Filter: (note = 'Volker Boehm'::text)
                                       Rows Removed by Filter: 2963600
                                       Buffers: shared read=50818
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=26.278..26.278 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=26.225..26.258 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
               ->  Hash  (cost=9.84..9.84 rows=1666 width=4) (actual time=47.853..47.853 rows=5186 loops=1)
                     Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 247kB
                     Buffers: shared read=164
                     ->  Hash Join  (cost=0.03..9.84 rows=1666 width=4) (actual time=26.618..45.210 rows=5186 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared read=164
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=18.623..25.836 rows=29997 loops=1)
                                 Buffers: shared read=163
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=7.880..7.880 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=7.863..7.869 rows=1 loops=1)
                                       Filter: ((link)::text = 'features'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared read=1
         ->  Hash  (cost=489.73..489.73 rows=671965 width=4) (actual time=567.750..567.750 rows=674692 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 31912kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..489.73 rows=671965 width=4) (actual time=19.434..375.636 rows=674692 loops=1)
                     Filter: (name ~~ '%a%'::text)
                     Rows Removed by Filter: 226651
                     Buffers: shared read=11395
 Planning Time: 6009.688 ms
 Execution Time: 19811.731 ms
(74 rows)


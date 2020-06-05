                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20481.41..20481.41 rows=1 width=64) (actual time=19665.843..19665.843 rows=1 loops=1)
   Buffers: shared hit=17 read=406629
   ->  Hash Join  (cost=7028.30..20481.41 rows=1 width=32) (actual time=15676.306..19665.810 rows=16 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=17 read=406629
         ->  Hash Join  (cost=6439.94..19893.05 rows=1 width=44) (actual time=15108.167..19097.665 rows=8 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=12 read=395236
               ->  Hash Join  (cost=6429.86..19882.96 rows=1 width=52) (actual time=7859.406..19047.696 rows=22 loops=1)
                     Hash Cond: (n.id = pi.person_id)
                     Buffers: shared hit=9 read=395075
                     ->  Hash Join  (cost=4400.79..17851.11 rows=23849 width=48) (actual time=5247.651..16610.044 rows=33044 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=7 read=344258
                           ->  Hash Join  (cost=2693.07..16078.77 rows=792707 width=27) (actual time=2607.280..14724.337 rows=912324 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=6 read=308261
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.008..5888.355 rows=36244344 loops=1)
                                       Buffers: shared hit=4 read=252650
                                 ->  Hash  (cost=2679.69..2679.69 rows=91148 width=19) (actual time=2606.837..2606.837 rows=91976 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 5792kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=91148 width=19) (actual time=10.055..2581.328 rows=91976 loops=1)
                                             Filter: (((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))
                                             Rows Removed by Filter: 4075515
                                             Buffers: shared hit=2 read=55611
                           ->  Hash  (cost=1696.56..1696.56 rows=76065 width=21) (actual time=1712.387..1712.387 rows=76065 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5123kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=76065 width=21) (actual time=4.414..1657.280 rows=76065 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1984))
                                       Rows Removed by Filter: 2452247
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=2029.07..2029.07 rows=1 width=4) (actual time=2433.812..2433.812 rows=64 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                           Buffers: shared hit=2 read=50817
                           ->  Hash Join  (cost=0.05..2029.07 rows=1 width=4) (actual time=70.423..2433.613 rows=64 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=2 read=50817
                                 ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=43.932..2406.708 rows=64 loops=1)
                                       Filter: (note = 'Volker Boehm'::text)
                                       Rows Removed by Filter: 2963600
                                       Buffers: shared hit=2 read=50816
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=26.466..26.466 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=26.412..26.446 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
               ->  Hash  (cost=9.84..9.84 rows=1666 width=4) (actual time=49.928..49.928 rows=5186 loops=1)
                     Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 247kB
                     Buffers: shared hit=3 read=161
                     ->  Hash Join  (cost=0.03..9.84 rows=1666 width=4) (actual time=26.807..47.290 rows=5186 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=3 read=161
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=26.657..34.301 rows=29997 loops=1)
                                 Buffers: shared hit=2 read=161
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.023..0.028 rows=1 loops=1)
                                       Filter: ((link)::text = 'features'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared hit=1
         ->  Hash  (cost=489.73..489.73 rows=671965 width=4) (actual time=565.695..565.695 rows=674692 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 31912kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..489.73 rows=671965 width=4) (actual time=0.015..368.584 rows=674692 loops=1)
                     Filter: (name ~~ '%a%'::text)
                     Rows Removed by Filter: 226651
                     Buffers: shared hit=2 read=11393
 Planning Time: 6562.364 ms
 Execution Time: 19667.349 ms
(74 rows)


                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21981.77..21981.77 rows=1 width=64) (actual time=21794.634..21794.634 rows=1 loops=1)
   Buffers: shared hit=71408 read=407172
   ->  Hash Join  (cost=8122.91..21981.77 rows=2 width=110) (actual time=7360.235..21162.814 rows=68185 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=18 read=406628
         ->  Hash Join  (cost=6187.03..20045.84 rows=477 width=114) (actual time=5572.410..19120.139 rows=1618304 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=11 read=370470
               ->  Hash Join  (cost=3718.93..17104.63 rows=4061863 width=27) (actual time=2606.835..15185.387 rows=5178915 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=7 read=308260
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.009..5387.979 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=3650.38..3650.38 rows=467046 width=19) (actual time=2605.484..2605.484 rows=507621 loops=1)
                           Buckets: 524288  Batches: 1  Memory Usage: 30333kB
                           Buffers: shared hit=3 read=55610
                           ->  Seq Scan on name n  (cost=0.00..3650.38 rows=467046 width=19) (actual time=6.758..2462.705 rows=507621 loops=1)
                                 Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'A%'::text))))
                                 Rows Removed by Filter: 3659870
                                 Buffers: shared hit=3 read=55610
               ->  Hash  (cost=2467.96..2467.96 rows=958 width=103) (actual time=2959.589..2959.589 rows=72980 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 60913kB
                     Buffers: shared hit=4 read=62210
                     ->  Hash Join  (cost=659.78..2467.96 rows=958 width=103) (actual time=584.919..2857.242 rows=72980 loops=1)
                           Hash Cond: (pi.person_id = an.person_id)
                           Buffers: shared hit=4 read=62210
                           ->  Hash Join  (cost=0.05..1805.91 rows=745 width=99) (actual time=5.590..2188.338 rows=84183 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=2 read=50817
                                 ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=84183 width=103) (actual time=0.009..2130.501 rows=84183 loops=1)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 2879481
                                       Buffers: shared hit=2 read=50816
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=5.568..5.568 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=5.520..5.554 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=559.71..559.71 rows=681455 width=4) (actual time=572.076..572.076 rows=686100 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 32313kB
                                 Buffers: shared hit=2 read=11393
                                 ->  Seq Scan on aka_name an  (cost=0.00..559.71 rows=681455 width=4) (actual time=0.022..380.039 rows=686100 loops=1)
                                       Filter: ((name IS NOT NULL) AND ((name ~~ '%a%'::text) OR (name ~~ 'A%'::text)))
                                       Rows Removed by Filter: 215243
                                       Buffers: shared hit=2 read=11393
         ->  Hash  (cost=1935.27..1935.27 rows=4101 width=8) (actual time=1787.701..1787.701 rows=14194 loops=1)
               Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 683kB
               Buffers: shared hit=4 read=36158
               ->  Hash Join  (cost=1924.93..1935.27 rows=4101 width=8) (actual time=1728.153..1781.573 rows=14194 loops=1)
                     Hash Cond: (ml.linked_movie_id = t.id)
                     Buffers: shared hit=4 read=36158
                     ->  Hash Join  (cost=0.04..9.84 rows=6666 width=4) (actual time=0.117..40.410 rows=21505 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=3 read=161
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.088..27.104 rows=29997 loops=1)
                                 Buffers: shared hit=2 read=161
                           ->  Hash  (cost=0.04..0.04 rows=4 width=4) (actual time=0.018..0.018 rows=4 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.04 rows=4 width=4) (actual time=0.008..0.012 rows=4 loops=1)
                                       Filter: ((link)::text = ANY ('{references,"referenced in",features,"featured in"}'::text[]))
                                       Rows Removed by Filter: 14
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1696.56..1696.56 rows=1555597 width=4) (actual time=1723.244..1723.244 rows=1555597 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 71073kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1555597 width=4) (actual time=15.584..1161.612 rows=1555597 loops=1)
                                 Filter: ((production_year >= 1980) AND (production_year <= 2010))
                                 Rows Removed by Filter: 972715
                                 Buffers: shared hit=1 read=35997
 Planning Time: 6624.176 ms
 Execution Time: 21798.366 ms
(74 rows)


                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4368.57..4368.57 rows=1 width=96) (actual time=4247.573..4247.573 rows=1 loops=1)
   Buffers: shared hit=18 read=83334
   ->  Hash Join  (cost=2601.93..4368.57 rows=13 width=60) (actual time=2498.411..4230.528 rows=14899 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=18 read=83334
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=2287272 width=21) (actual time=14.817..1297.118 rows=2287271 loops=1)
               Filter: (production_year > 1950)
               Rows Removed by Filter: 241041
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2601.93..2601.93 rows=14 width=55) (actual time=2476.458..2476.458 rows=14899 loops=1)
               Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1668kB
               Buffers: shared hit=14 read=47337
               ->  Hash Join  (cost=1676.45..2601.93 rows=14 width=55) (actual time=1429.828..2467.010 rows=14899 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=14 read=47337
                     ->  Hash Join  (cost=1517.21..2442.69 rows=16 width=40) (actual time=1281.579..2309.400 rows=14916 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=12 read=44345
                           ->  Hash Join  (cost=1517.18..2442.66 rows=21 width=44) (actual time=1281.544..2300.932 rows=15510 loops=1)
                                 Hash Cond: (mc.movie_id = ml.movie_id)
                                 Buffers: shared hit=11 read=44345
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1337140 width=36) (actual time=0.006..840.221 rows=1337140 loops=1)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 1271989
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=1517.18..1517.18 rows=7 width=8) (actual time=1273.226..1273.226 rows=1460 loops=1)
                                       Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 74kB
                                       Buffers: shared hit=8 read=25559
                                       ->  Hash Join  (cost=66.29..1517.18 rows=7 width=8) (actual time=139.540..1272.643 rows=1460 loops=1)
                                             Hash Cond: (ml.link_type_id = lt.id)
                                             Buffers: shared hit=8 read=25559
                                             ->  Hash Join  (cost=66.26..1517.14 rows=7 width=12) (actual time=139.512..1271.968 rows=1460 loops=1)
                                                   Hash Cond: (mk.movie_id = ml.movie_id)
                                                   Buffers: shared hit=7 read=25559
                                                   ->  Hash Join  (cost=54.67..1503.31 rows=101 width=4) (actual time=93.785..1214.961 rows=47403 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=5 read=25398
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.009..534.291 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=54.67..54.67 rows=3 width=4) (actual time=68.838..68.838 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=2 read=947
                                                               ->  Seq Scan on keyword k  (cost=0.00..54.67 rows=3 width=4) (actual time=7.747..68.827 rows=3 loops=1)
                                                                     Filter: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                                     Rows Removed by Filter: 134167
                                                                     Buffers: shared hit=2 read=947
                                                   ->  Hash  (cost=7.19..7.19 rows=29997 width=8) (actual time=45.599..45.599 rows=29997 loops=1)
                                                         Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                                                         Buffers: shared hit=2 read=161
                                                         ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.006..33.878 rows=29997 loops=1)
                                                               Buffers: shared hit=2 read=161
                                             ->  Hash  (cost=0.03..0.03 rows=18 width=4) (actual time=0.014..0.014 rows=18 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.004..0.007 rows=18 loops=1)
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.015..0.015 rows=3 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.009..0.010 rows=3 loops=1)
                                       Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=210031 width=23) (actual time=146.228..146.228 rows=210031 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 13720kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=210031 width=23) (actual time=5.944..81.823 rows=210031 loops=1)
                                 Filter: ((country_code)::text <> '[pl]'::text)
                                 Rows Removed by Filter: 24966
                                 Buffers: shared hit=2 read=2992
 Planning Time: 3205.060 ms
 Execution Time: 4248.186 ms
(72 rows)


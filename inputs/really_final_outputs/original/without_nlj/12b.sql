                                                                                  QUERY PLAN                                                                                   
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10835.02..10835.02 rows=1 width=64) (actual time=11946.423..11946.423 rows=1 loops=1)
   Buffers: shared hit=16 read=228116
   ->  Hash Join  (cost=3492.79..10835.02 rows=1 width=59) (actual time=8325.420..11946.362 rows=10 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=16 read=228116
         ->  Hash Join  (cost=3492.76..10834.98 rows=1 width=63) (actual time=8325.306..11946.244 rows=10 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=12 read=228116
               ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=4398.065..8364.937 rows=121863 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=3 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=24.820..5424.251 rows=14835720 loops=1)
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.073..0.074 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.059 rows=1 loops=1)
                                 Filter: ((info)::text = 'budget'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=3492.71..3492.71 rows=6 width=33) (actual time=3567.483..3567.483 rows=10 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=9 read=66226
                     ->  Hash Join  (cost=2510.09..3492.71 rows=6 width=33) (actual time=2888.217..3567.465 rows=10 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=9 read=66226
                           ->  Hash Join  (cost=2369.23..3351.85 rows=16 width=37) (actual time=2746.301..3425.528 rows=33 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=7 read=63234
                                 ->  Hash Join  (cost=1893.05..2875.51 rows=1398 width=33) (actual time=1734.509..2621.001 rows=3968 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=4 read=54783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.007..453.663 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=1892.85..1892.85 rows=1355 width=21) (actual time=1727.601..1727.601 rows=2536 loops=1)
                                             Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 195kB
                                             Buffers: shared hit=1 read=35997
                                             ->  Seq Scan on title t  (cost=0.00..1892.85 rows=1355 width=21) (actual time=19.858..1724.824 rows=2536 loops=1)
                                                   Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                                   Rows Removed by Filter: 2525776
                                                   Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=803.661..803.661 rows=10 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=803.642..803.648 rows=10 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.006..512.242 rows=1380035 loops=1)
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.029..0.029 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                         Filter: ((info)::text = 'bottom 10 rank'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.018..141.018 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=5.301..114.443 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.048..0.048 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.034..0.039 rows=2 loops=1)
                     Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                     Rows Removed by Filter: 2
                     Buffers: shared hit=1
 Planning Time: 4805.789 ms
 Execution Time: 11964.263 ms
(72 rows)


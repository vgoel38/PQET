                                                                                  QUERY PLAN                                                                                  
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3453.86..3453.86 rows=1 width=68) (actual time=3592.618..3592.618 rows=1 loops=1)
   Buffers: shared hit=3 read=63242
   ->  Hash Join  (cost=1855.44..3453.85 rows=42 width=45) (actual time=3002.940..3592.321 rows=142 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=63242
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=17.566..1357.175 rows=2528312 loops=1)
               Buffers: shared read=35998
         ->  Hash  (cost=1855.44..1855.44 rows=42 width=32) (actual time=1659.545..1659.545 rows=142 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 17kB
               Buffers: shared read=27244
               ->  Hash Join  (cost=476.21..1855.44 rows=42 width=32) (actual time=1446.006..1659.433 rows=142 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=27244
                     ->  Hash Join  (cost=476.18..1855.39 rows=168 width=36) (actual time=907.987..1659.181 rows=147 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared read=27243
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=14835 width=32) (actual time=95.455..1018.325 rows=28889 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                                 Rows Removed by Filter: 2580240
                                 Buffers: shared read=18789
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=634.836..634.836 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared read=8454
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=634.653..634.762 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared read=8454
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=19.632..346.637 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.507..7.507 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.492..7.495 rows=1 loops=1)
                                                   Filter: ((info)::text = 'top 250 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.145..0.145 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.133..0.136 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
 Planning Time: 2121.108 ms
 Execution Time: 3593.472 ms
(44 rows)


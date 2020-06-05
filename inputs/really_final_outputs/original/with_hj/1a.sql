                                                                                  QUERY PLAN                                                                                  
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3453.86..3453.86 rows=1 width=68) (actual time=3654.407..3654.408 rows=1 loops=1)
   Buffers: shared hit=3 read=63242
   ->  Hash Join  (cost=1855.44..3453.85 rows=42 width=45) (actual time=2959.350..3654.109 rows=142 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=63242
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=29.951..1355.840 rows=2528312 loops=1)
               Buffers: shared read=35998
         ->  Hash  (cost=1855.44..1855.44 rows=42 width=32) (actual time=1712.080..1712.080 rows=142 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 17kB
               Buffers: shared read=27244
               ->  Hash Join  (cost=476.21..1855.44 rows=42 width=32) (actual time=1494.085..1711.968 rows=142 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=27244
                     ->  Hash Join  (cost=476.18..1855.39 rows=168 width=36) (actual time=934.188..1691.805 rows=147 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared read=27243
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=14835 width=32) (actual time=116.882..1050.139 rows=28889 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                                 Rows Removed by Filter: 2580240
                                 Buffers: shared read=18789
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=635.597..635.597 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared read=8454
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=635.371..635.503 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared read=8454
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=19.944..350.918 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.523..7.523 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.506..7.508 rows=1 loops=1)
                                                   Filter: ((info)::text = 'top 250 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=20.053..20.054 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=20.033..20.036 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
 Planning Time: 2111.467 ms
 Execution Time: 3691.624 ms
(44 rows)


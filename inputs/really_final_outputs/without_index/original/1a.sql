                                                                                  QUERY PLAN                                                                                  
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3453.86..3453.86 rows=1 width=68) (actual time=3592.263..3592.263 rows=1 loops=1)
   Buffers: shared hit=10 read=63235
   ->  Hash Join  (cost=1855.44..3453.85 rows=42 width=45) (actual time=3003.122..3591.919 rows=142 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=10 read=63235
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=9.082..1332.721 rows=2528312 loops=1)
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1855.44..1855.44 rows=42 width=32) (actual time=1678.174..1678.174 rows=142 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 17kB
               Buffers: shared hit=6 read=27238
               ->  Hash Join  (cost=476.21..1855.44 rows=42 width=32) (actual time=1459.593..1678.069 rows=142 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=6 read=27238
                     ->  Hash Join  (cost=476.18..1855.39 rows=168 width=36) (actual time=901.085..1677.889 rows=147 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=5 read=27238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=14835 width=32) (actual time=104.774..1054.714 rows=28889 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                                 Rows Removed by Filter: 2580240
                                 Buffers: shared hit=2 read=18787
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=617.198..617.198 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared hit=3 read=8451
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=617.037..617.128 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.005..338.021 rows=1380035 loops=1)
                                             Buffers: shared hit=2 read=8451
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.024 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                                   Filter: ((info)::text = 'top 250 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.057..0.057 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.045..0.048 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
 Planning Time: 2169.179 ms
 Execution Time: 3592.622 ms
(44 rows)


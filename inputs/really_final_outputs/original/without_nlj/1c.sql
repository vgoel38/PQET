                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3198.07..3198.07 rows=1 width=68) (actual time=3404.461..3404.461 rows=1 loops=1)
   Buffers: shared hit=10 read=63235
   ->  Hash Join  (cost=1652.20..3198.07 rows=4 width=45) (actual time=3029.770..3404.389 rows=3 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=10 read=63235
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=25) (actual time=21.601..1765.358 rows=391666 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 2136646
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1652.19..1652.19 rows=26 width=32) (actual time=1545.014..1545.014 rows=23 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 10kB
               Buffers: shared hit=6 read=27238
               ->  Hash Join  (cost=476.21..1652.19 rows=26 width=32) (actual time=1357.614..1544.990 rows=23 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=6 read=27238
                     ->  Hash Join  (cost=476.18..1652.15 rows=103 width=36) (actual time=1357.562..1544.921 rows=23 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=5 read=27238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=9141 width=32) (actual time=331.637..917.189 rows=17816 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                                 Rows Removed by Filter: 2591313
                                 Buffers: shared hit=2 read=18787
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=623.713..623.713 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared hit=3 read=8451
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=623.556..623.645 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.007..340.615 rows=1380035 loops=1)
                                             Buffers: shared hit=2 read=8451
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                                   Filter: ((info)::text = 'top 250 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.013 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
 Planning Time: 2256.054 ms
 Execution Time: 3480.502 ms
(46 rows)


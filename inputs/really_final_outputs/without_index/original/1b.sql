                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3387.77..3387.77 rows=1 width=68) (actual time=3428.310..3428.310 rows=1 loops=1)
   Buffers: shared hit=10 read=63235
   ->  Hash Join  (cost=1607.47..3387.52 rows=1069 width=45) (actual time=2958.790..3428.261 rows=3 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=10 read=63235
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=716259 width=25) (actual time=28.717..1732.558 rows=716259 loops=1)
               Filter: ((production_year >= 2005) AND (production_year <= 2010))
               Rows Removed by Filter: 1812053
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1606.92..1606.92 rows=3775 width=32) (actual time=1533.979..1533.979 rows=5 loops=1)
               Buckets: 4096  Batches: 1  Memory Usage: 33kB
               Buffers: shared hit=6 read=27238
               ->  Hash Join  (cost=476.21..1606.92 rows=3775 width=32) (actual time=1364.023..1533.964 rows=5 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=6 read=27238
                     ->  Hash Join  (cost=476.18..1605.26 rows=15098 width=36) (actual time=845.440..1533.883 rows=100 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=5 read=27238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..972.33 rows=1337085 width=32) (actual time=0.011..753.080 rows=1337088 loops=1)
                                 Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                                 Rows Removed by Filter: 1272041
                                 Buffers: shared hit=2 read=18787
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=622.346..622.346 rows=10 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                 Buffers: shared hit=3 read=8451
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=622.332..622.337 rows=10 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.009..337.241 rows=1380035 loops=1)
                                             Buffers: shared hit=2 read=8451
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.054..0.055 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.048..0.049 rows=1 loops=1)
                                                   Filter: ((info)::text = 'bottom 10 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.027 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
 Planning Time: 2091.359 ms
 Execution Time: 3428.587 ms
(46 rows)


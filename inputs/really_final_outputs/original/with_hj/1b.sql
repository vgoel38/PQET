                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3387.77..3387.77 rows=1 width=68) (actual time=3521.484..3521.484 rows=1 loops=1)
   Buffers: shared hit=3 read=63242
   ->  Hash Join  (cost=1607.47..3387.52 rows=1069 width=45) (actual time=2918.325..3521.456 rows=3 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=63242
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=716259 width=25) (actual time=21.673..1793.788 rows=716259 loops=1)
               Filter: ((production_year >= 2005) AND (production_year <= 2010))
               Rows Removed by Filter: 1812053
               Buffers: shared read=35998
         ->  Hash  (cost=1606.92..1606.92 rows=3775 width=32) (actual time=1567.515..1567.516 rows=5 loops=1)
               Buckets: 4096  Batches: 1  Memory Usage: 33kB
               Buffers: shared read=27244
               ->  Hash Join  (cost=476.21..1606.92 rows=3775 width=32) (actual time=1397.035..1567.497 rows=5 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=27244
                     ->  Hash Join  (cost=476.18..1605.26 rows=15098 width=36) (actual time=868.139..1567.326 rows=100 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared read=27243
                           ->  Seq Scan on movie_companies mc  (cost=0.00..972.33 rows=1337085 width=32) (actual time=4.538..768.286 rows=1337088 loops=1)
                                 Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                                 Rows Removed by Filter: 1272041
                                 Buffers: shared read=18789
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=642.456..642.456 rows=10 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                 Buffers: shared read=8454
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=642.442..642.447 rows=10 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared read=8454
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=27.059..362.649 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.543..7.544 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.530..7.532 rows=1 loops=1)
                                                   Filter: ((info)::text = 'bottom 10 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.124..0.124 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.107..0.109 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
 Planning Time: 2154.715 ms
 Execution Time: 3540.473 ms
(46 rows)


                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3269.24..3269.24 rows=1 width=68) (actual time=3522.049..3522.050 rows=1 loops=1)
   Buffers: shared hit=3 read=63242
   ->  Hash Join  (cost=1607.47..3268.76 rows=2063 width=45) (actual time=2918.609..3522.014 rows=4 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=63242
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=14.225..1670.643 rows=1381453 loops=1)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 1146859
               Buffers: shared read=35998
         ->  Hash  (cost=1606.92..1606.92 rows=3775 width=32) (actual time=1567.517..1567.517 rows=5 loops=1)
               Buckets: 4096  Batches: 1  Memory Usage: 33kB
               Buffers: shared read=27244
               ->  Hash Join  (cost=476.21..1606.92 rows=3775 width=32) (actual time=1400.468..1567.500 rows=5 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=27244
                     ->  Hash Join  (cost=476.18..1605.26 rows=15098 width=36) (actual time=867.827..1567.331 rows=100 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared read=27243
                           ->  Seq Scan on movie_companies mc  (cost=0.00..972.33 rows=1337085 width=32) (actual time=4.560..768.166 rows=1337088 loops=1)
                                 Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                                 Rows Removed by Filter: 1272041
                                 Buffers: shared read=18789
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=642.433..642.433 rows=10 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                 Buffers: shared read=8454
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=642.420..642.425 rows=10 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared read=8454
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=27.050..366.718 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.514..7.514 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.501..7.503 rows=1 loops=1)
                                                   Filter: ((info)::text = 'bottom 10 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.123..0.123 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.107..0.110 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
 Planning Time: 2055.394 ms
 Execution Time: 3522.806 ms
(46 rows)


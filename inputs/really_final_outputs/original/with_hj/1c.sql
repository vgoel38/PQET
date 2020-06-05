                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3198.07..3198.07 rows=1 width=68) (actual time=3473.100..3473.100 rows=1 loops=1)
   Buffers: shared hit=3 read=63242
   ->  Hash Join  (cost=1652.20..3198.07 rows=4 width=45) (actual time=3098.208..3473.079 rows=3 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=63242
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=25) (actual time=15.462..1819.471 rows=391666 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 2136646
               Buffers: shared read=35998
         ->  Hash  (cost=1652.19..1652.19 rows=26 width=32) (actual time=1559.020..1559.020 rows=23 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 10kB
               Buffers: shared read=27244
               ->  Hash Join  (cost=476.21..1652.19 rows=26 width=32) (actual time=1374.349..1558.992 rows=23 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=27244
                     ->  Hash Join  (cost=476.18..1652.15 rows=103 width=36) (actual time=1374.213..1558.835 rows=23 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared read=27243
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=9141 width=32) (actual time=336.450..916.041 rows=17816 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                                 Rows Removed by Filter: 2591313
                                 Buffers: shared read=18789
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=639.032..639.032 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared read=8454
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=638.687..638.896 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared read=8454
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=20.277..346.015 rows=1380035 loops=1)
                                             Buffers: shared read=8453
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.524..7.524 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.508..7.510 rows=1 loops=1)
                                                   Filter: ((info)::text = 'top 250 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.125..0.125 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.106..0.109 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
 Planning Time: 2162.739 ms
 Execution Time: 3473.610 ms
(46 rows)


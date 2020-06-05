                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3198.07..3198.07 rows=1 width=68) (actual time=3445.622..3445.622 rows=1 loops=1)
   Buffers: shared hit=10 read=63235
   ->  Hash Join  (cost=1652.20..3198.07 rows=4 width=45) (actual time=3071.295..3445.574 rows=3 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=10 read=63235
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=25) (actual time=13.245..1809.862 rows=391666 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 2136646
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1652.19..1652.19 rows=26 width=32) (actual time=1542.718..1542.718 rows=23 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 10kB
               Buffers: shared hit=6 read=27238
               ->  Hash Join  (cost=476.21..1652.19 rows=26 width=32) (actual time=1357.922..1542.682 rows=23 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=6 read=27238
                     ->  Hash Join  (cost=476.18..1652.15 rows=103 width=36) (actual time=1357.884..1542.620 rows=23 loops=1)
                           Hash Cond: (mc.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=5 read=27238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=9141 width=32) (actual time=334.521..917.358 rows=17816 loops=1)
                                 Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                                 Rows Removed by Filter: 2591313
                                 Buffers: shared hit=2 read=18787
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=621.168..621.168 rows=250 loops=1)
                                 Buckets: 16384  Batches: 1  Memory Usage: 137kB
                                 Buffers: shared hit=3 read=8451
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=620.989..621.084 rows=250 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.007..344.672 rows=1380035 loops=1)
                                             Buffers: shared hit=2 read=8451
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.022..0.023 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                                   Filter: ((info)::text = 'top 250 rank'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.010 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
 Planning Time: 2298.479 ms
 Execution Time: 3445.898 ms
(46 rows)


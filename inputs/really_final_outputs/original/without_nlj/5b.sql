                                                                         QUERY PLAN                                                                         
------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10255.18..10255.18 rows=1 width=32) (actual time=3242.060..3242.060 rows=1 loops=1)
   Buffers: shared hit=8 read=61596
   ->  Hash Join  (cost=2935.31..10255.18 rows=1 width=17) (actual time=3242.044..3242.044 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=8 read=61596
         ->  Hash Join  (cost=2935.26..10255.12 rows=1 width=21) (actual time=3241.984..3241.984 rows=0 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=4 read=61596
               ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=551163 width=8) (actual time=394.706..394.706 rows=1 loops=1)
                     Filter: (info = ANY ('{USA,America}'::text[]))
                     Rows Removed by Filter: 1053696
                     Buffers: shared read=6812
               ->  Hash  (cost=2935.26..2935.26 rows=2 width=25) (actual time=2847.258..2847.258 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared hit=4 read=54784
                     ->  Hash Join  (cost=1557.78..2935.26 rows=2 width=25) (actual time=2847.256..2847.256 rows=0 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=4 read=54784
                           ->  Hash Join  (cost=1557.75..2935.22 rows=7 width=29) (actual time=2847.227..2847.227 rows=0 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=3 read=54784
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=46 width=8) (actual time=13.224..1130.764 rows=1418 loops=1)
                                       Filter: ((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))
                                       Rows Removed by Filter: 2607711
                                       Buffers: shared hit=2 read=18787
                                 ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1714.057..1714.057 rows=391666 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=6.015..1480.365 rows=391666 loops=1)
                                             Filter: (production_year > 2010)
                                             Rows Removed by Filter: 2136646
                                             Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=0.046..0.046 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared hit=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=0.006..0.021 rows=113 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2087.767 ms
 Execution Time: 3242.804 ms
(46 rows)


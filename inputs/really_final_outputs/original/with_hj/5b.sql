                                                                         QUERY PLAN                                                                         
------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10255.18..10255.18 rows=1 width=32) (actual time=3134.628..3134.628 rows=1 loops=1)
   Buffers: shared hit=3 read=61601
   ->  Hash Join  (cost=2935.31..10255.18 rows=1 width=17) (actual time=3134.614..3134.614 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=3 read=61601
         ->  Hash Join  (cost=2935.26..10255.12 rows=1 width=21) (actual time=3120.335..3120.335 rows=0 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared read=61600
               ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=551163 width=8) (actual time=359.017..359.017 rows=1 loops=1)
                     Filter: (info = ANY ('{USA,America}'::text[]))
                     Rows Removed by Filter: 1053696
                     Buffers: shared read=6812
               ->  Hash  (cost=2935.26..2935.26 rows=2 width=25) (actual time=2761.293..2761.293 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared read=54788
                     ->  Hash Join  (cost=1557.78..2935.26 rows=2 width=25) (actual time=2761.291..2761.291 rows=0 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared read=54788
                           ->  Hash Join  (cost=1557.75..2935.22 rows=7 width=29) (actual time=2739.928..2739.928 rows=0 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared read=54787
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=46 width=8) (actual time=31.007..1023.932 rows=1418 loops=1)
                                       Filter: ((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))
                                       Rows Removed by Filter: 2607711
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1711.613..1711.613 rows=391666 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=3.637..1482.400 rows=391666 loops=1)
                                             Filter: (production_year > 2010)
                                             Rows Removed by Filter: 2136646
                                             Buffers: shared read=35998
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.339..21.339 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=21.314..21.317 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=14.256..14.256 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=14.110..14.163 rows=113 loops=1)
                     Buffers: shared read=1
 Planning Time: 1737.183 ms
 Execution Time: 3135.400 ms
(46 rows)


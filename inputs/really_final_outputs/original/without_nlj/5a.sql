                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13553.71..13553.71 rows=1 width=32) (actual time=2770.687..2770.687 rows=1 loops=1)
   Buffers: shared hit=8 read=54821
   ->  Hash Join  (cost=2824.51..13553.70 rows=89 width=17) (actual time=2770.673..2770.673 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=8 read=54821
         ->  Hash Join  (cost=2824.45..13553.64 rows=89 width=21) (actual time=2770.607..2770.607 rows=0 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=4 read=54821
               ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=154416 width=8) (actual time=18.699..18.699 rows=1 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                     Rows Removed by Filter: 5686
                     Buffers: shared read=37
               ->  Hash  (cost=2824.39..2824.39 rows=419 width=25) (actual time=2751.887..2751.887 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared hit=4 read=54784
                     ->  Hash Join  (cost=1648.97..2824.39 rows=419 width=25) (actual time=2751.886..2751.886 rows=0 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=4 read=54784
                           ->  Hash Join  (cost=1648.94..2824.18 rows=1677 width=29) (actual time=1742.230..2751.246 rows=3929 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=3 read=54784
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=4187 width=8) (actual time=13.781..1011.416 rows=24025 loops=1)
                                       Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                                       Rows Removed by Filter: 2585104
                                       Buffers: shared hit=2 read=18787
                                 ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=21) (actual time=1726.005..1726.006 rows=1012920 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=9.597..1259.371 rows=1012920 loops=1)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1515392
                                             Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=0.050..0.050 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared hit=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=0.005..0.020 rows=113 loops=1)
                     Buffers: shared hit=1
 Planning Time: 2058.789 ms
 Execution Time: 2771.566 ms
(46 rows)


                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3651.69..3651.69 rows=1 width=96) (actual time=2848.022..2848.023 rows=1 loops=1)
   Buffers: shared hit=170033 read=25949
   ->  Hash Join  (cost=1072.96..3651.69 rows=1 width=60) (actual time=2169.802..2844.491 rows=6946 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=170033 read=25949
         ->  Hash Join  (cost=1072.93..3651.66 rows=1 width=64) (actual time=2169.765..2842.468 rows=6946 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=170029 read=25949
               ->  Hash Join  (cost=1072.90..3651.62 rows=1 width=68) (actual time=2169.741..2840.378 rows=6946 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=170028 read=25949
                     ->  Merge Join  (cost=1054.50..3633.20 rows=332 width=72) (actual time=2064.144..2653.137 rows=780947 loops=1)
                           Merge Cond: (ml.movie_id = mk.movie_id)
                           Buffers: shared hit=170022 read=25940
                           ->  Merge Join  (cost=1054.48..2778.73 rows=27 width=80) (actual time=2040.105..2210.797 rows=8402 loops=1)
                                 Merge Cond: (t.id = ml.movie_id)
                                 Buffers: shared hit=156368 read=25305
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=21) (actual time=0.045..836.904 rows=152390 loops=1)
                                       Filter: (production_year > 1950)
                                       Rows Removed by Filter: 6952
                                       Buffers: shared hit=156357 read=3366
                                 ->  Sort  (cost=1054.46..1054.46 rows=30 width=59) (actual time=1351.504..1352.204 rows=8402 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 1566kB
                                       Buffers: shared hit=11 read=21939
                                       ->  Hash Join  (cost=1043.76..1054.44 rows=30 width=59) (actual time=1317.292..1333.552 rows=8402 loops=1)
                                             Hash Cond: (ml.movie_id = mc.movie_id)
                                             Buffers: shared hit=7 read=21939
                                             ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.014..30.576 rows=29997 loops=1)
                                                   Buffers: shared hit=2 read=161
                                             ->  Hash  (cost=1043.67..1043.67 rows=569 width=51) (actual time=1291.161..1291.161 rows=13893 loops=1)
                                                   Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1531kB
                                                   Buffers: shared hit=5 read=21778
                                                   ->  Hash Join  (cost=164.91..1043.67 rows=569 width=51) (actual time=166.819..1284.619 rows=13893 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=5 read=21778
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1337140 width=36) (actual time=0.013..925.401 rows=1337140 loops=1)
                                                               Filter: (note IS NOT NULL)
                                                               Rows Removed by Filter: 1271989
                                                               Buffers: shared hit=3 read=18786
                                                         ->  Hash  (cost=164.90..164.90 rows=100 width=23) (actual time=162.257..162.257 rows=89 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=100 width=23) (actual time=28.121..162.179 rows=89 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                                                                     Rows Removed by Filter: 234908
                                                                     Buffers: shared hit=2 read=2992
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..243.203 rows=857150 loops=1)
                                 Buffers: shared hit=13654 read=635
                     ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=102.904..102.904 rows=3 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=6 read=9
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=81.321..102.884 rows=3 loops=1)
                                 Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                 Buffers: shared hit=6 read=9
               ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.007..0.007 rows=3 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.004..0.005 rows=3 loops=1)
                           Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=18 width=4) (actual time=0.018..0.018 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.004..0.007 rows=18 loops=1)
                     Buffers: shared hit=1
 Planning Time: 3543.538 ms
 Execution Time: 2848.598 ms
(69 rows)


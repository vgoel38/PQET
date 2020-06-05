                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=90993.63..90993.63 rows=1 width=96) (actual time=15565.097..15565.097 rows=1 loops=1)
   Buffers: shared hit=2743305 read=109744
   ->  Hash Join  (cost=51339.01..90993.63 rows=1 width=60) (actual time=12989.825..15559.666 rows=6946 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=2743305 read=109744
         ->  Hash Join  (cost=51332.88..90987.50 rows=1 width=64) (actual time=12938.647..15504.963 rows=6946 loops=1)
               Hash Cond: (t.id = ml.movie_id)
               Buffers: shared hit=2743302 read=109742
               ->  Hash Join  (cost=51052.67..90707.27 rows=1 width=72) (actual time=12854.779..15417.957 rows=4137 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2743226 read=109496
                     ->  Hash Join  (cost=51043.49..90698.08 rows=1 width=76) (actual time=12852.703..15414.305 rows=4279 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2743226 read=109494
                           ->  Hash Join  (cost=18.41..39673.00 rows=101 width=4) (actual time=107.438..2678.260 rows=47403 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21642 read=36826
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.293..1825.686 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=72.333..72.333 rows=3 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=6 read=9
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=45.661..72.301 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                             Buffers: shared hit=6 read=9
                           ->  Hash  (cost=51025.00..51025.00 rows=515 width=72) (actual time=12720.988..12720.988 rows=12059 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1620kB
                                 Buffers: shared hit=2721584 read=72668
                                 ->  Hash Join  (cost=27520.25..51025.00 rows=515 width=72) (actual time=3213.291..12714.552 rows=12059 loops=1)
                                       Hash Cond: (t.id = mc.movie_id)
                                       Buffers: shared hit=2721584 read=72668
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=21) (actual time=33.657..9649.902 rows=2287271 loops=1)
                                             Filter: (production_year > 1950)
                                             Rows Removed by Filter: 241041
                                             Buffers: shared hit=2489870 read=42908
                                       ->  Hash  (cost=27520.16..27520.16 rows=569 width=51) (actual time=2625.764..2625.764 rows=13893 loops=1)
                                             Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1531kB
                                             Buffers: shared hit=231714 read=29760
                                             ->  Hash Join  (cost=4633.72..27520.16 rows=569 width=51) (actual time=757.052..2617.952 rows=13893 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=231714 read=29760
                                                   ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=1337140 width=36) (actual time=26.881..1671.750 rows=1337140 loops=1)
                                                         Filter: (note IS NOT NULL)
                                                         Rows Removed by Filter: 1271989
                                                         Buffers: shared read=25920
                                                   ->  Hash  (cost=4633.69..4633.69 rows=100 width=23) (actual time=717.038..717.038 rows=89 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                                         Buffers: shared hit=231714 read=3840
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=100 width=23) (actual time=221.026..716.947 rows=89 loops=1)
                                                               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                                                               Rows Removed by Filter: 234908
                                                               Buffers: shared hit=231714 read=3840
                     ->  Hash  (cost=9.19..9.19 rows=3 width=4) (actual time=2.046..2.046 rows=3 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=3 width=4) (actual time=2.024..2.032 rows=3 loops=1)
                                 Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared read=2
               ->  Hash  (cost=275.80..275.80 rows=29997 width=8) (actual time=83.584..83.584 rows=29997 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                     Buffers: shared hit=76 read=246
                     ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=3.116..65.236 rows=29997 loops=1)
                           Buffers: shared hit=76 read=246
         ->  Hash  (cost=6.13..6.13 rows=18 width=4) (actual time=51.154..51.154 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using link_type_pkey on link_type lt  (cost=0.00..6.13 rows=18 width=4) (actual time=51.111..51.122 rows=18 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 3094.666 ms
 Execution Time: 15565.500 ms
(72 rows)


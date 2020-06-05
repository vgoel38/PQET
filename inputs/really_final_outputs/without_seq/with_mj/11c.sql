                                                                                                                    QUERY PLAN                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10321.10..10321.10 rows=1 width=96) (actual time=2917.568..2917.568 rows=1 loops=1)
   Buffers: shared hit=389807 read=8834
   ->  Merge Join  (cost=8596.86..10321.10 rows=1 width=60) (actual time=2818.760..2914.913 rows=6946 loops=1)
         Merge Cond: (ml.movie_id = t.id)
         Buffers: shared hit=389807 read=8834
         ->  Sort  (cost=8596.84..8596.84 rows=1 width=55) (actual time=2215.265..2215.639 rows=6946 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 1169kB
               Buffers: shared hit=319190 read=5702
               ->  Merge Join  (cost=8588.17..8596.84 rows=1 width=55) (actual time=2210.904..2213.131 rows=6946 loops=1)
                     Merge Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=319186 read=5702
                     ->  Sort  (cost=8588.16..8588.16 rows=1 width=59) (actual time=2210.890..2211.270 rows=6946 loops=1)
                           Sort Key: ml.link_type_id
                           Sort Method: quicksort  Memory: 1169kB
                           Buffers: shared hit=319184 read=5702
                           ->  Merge Join  (cost=8588.12..8588.16 rows=1 width=59) (actual time=2199.808..2208.630 rows=6946 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=319184 read=5702
                                 ->  Sort  (cost=8569.72..8569.74 rows=276 width=63) (actual time=2107.974..2126.310 rows=92508 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 136921kB
                                       Buffers: shared hit=319178 read=5693
                                       ->  Merge Join  (cost=7714.92..8569.37 rows=276 width=63) (actual time=1353.654..1772.489 rows=780776 loops=1)
                                             Merge Cond: (ml.movie_id = mk.movie_id)
                                             Buffers: shared hit=319178 read=5693
                                             ->  Sort  (cost=7714.91..7714.91 rows=22 width=55) (actual time=1317.195..1318.024 rows=8393 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 1565kB
                                                   Buffers: shared hit=305524 read=5058
                                                   ->  Merge Join  (cost=7705.70..7714.89 rows=22 width=55) (actual time=1311.941..1314.631 rows=8393 loops=1)
                                                         Merge Cond: (mc.company_type_id = ct.id)
                                                         Buffers: shared hit=305524 read=5058
                                                         ->  Sort  (cost=7705.70..7705.70 rows=30 width=59) (actual time=1311.927..1312.360 rows=8402 loops=1)
                                                               Sort Key: mc.company_type_id
                                                               Sort Method: quicksort  Memory: 1566kB
                                                               Buffers: shared hit=305522 read=5058
                                                               ->  Merge Join  (cost=3061.21..7705.67 rows=30 width=59) (actual time=744.200..1308.796 rows=8402 loops=1)
                                                                     Merge Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared hit=305522 read=5058
                                                                     ->  Sort  (cost=3061.19..3066.58 rows=69439 width=44) (actual time=496.353..514.772 rows=102101 loops=1)
                                                                           Sort Key: mc.company_id
                                                                           Sort Method: quicksort  Memory: 13465kB
                                                                           Buffers: shared hit=73802 read=1224
                                                                           ->  Merge Join  (cost=0.02..2887.77 rows=69439 width=44) (actual time=0.073..404.048 rows=105089 loops=1)
                                                                                 Merge Cond: (ml.movie_id = mc.movie_id)
                                                                                 Buffers: shared hit=73802 read=1224
                                                                                 ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.033..23.953 rows=29997 loops=1)
                                                                                       Buffers: shared hit=81 read=241
                                                                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1337140 width=36) (actual time=0.032..326.150 rows=148092 loops=1)
                                                                                       Filter: (note IS NOT NULL)
                                                                                       Rows Removed by Filter: 116440
                                                                                       Buffers: shared hit=73721 read=983
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=100 width=23) (actual time=228.502..761.116 rows=89 loops=1)
                                                                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                                                                           Rows Removed by Filter: 234908
                                                                           Buffers: shared hit=231720 read=3834
                                                         ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=3 width=4) (actual time=0.009..0.013 rows=2 loops=1)
                                                               Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=2
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.012..253.168 rows=856979 loops=1)
                                                   Buffers: shared hit=13654 read=635
                                 ->  Sort  (cost=18.40..18.40 rows=3 width=4) (actual time=50.839..50.839 rows=3 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=6 read=9
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=24.164..50.814 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                             Buffers: shared hit=6 read=9
                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=18 width=4) (actual time=0.010..0.014 rows=15 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=21) (actual time=0.014..687.654 rows=71531 loops=1)
               Filter: (production_year > 1950)
               Rows Removed by Filter: 2039
               Buffers: shared hit=70617 read=3132
 Planning Time: 3120.382 ms
 Execution Time: 2956.194 ms
(78 rows)


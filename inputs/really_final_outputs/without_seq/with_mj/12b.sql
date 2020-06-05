                                                                                                             QUERY PLAN                                                                                                             
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=686853.09..686853.09 rows=1 width=64) (actual time=38229.841..38229.841 rows=1 loops=1)
   Buffers: shared hit=2756059 read=285759
   ->  Merge Join  (cost=663218.27..686853.09 rows=1 width=59) (actual time=35297.668..38229.798 rows=10 loops=1)
         Merge Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=2756059 read=285759
         ->  Merge Join  (cost=615652.32..639286.30 rows=70 width=67) (actual time=22356.403..30981.371 rows=409 loops=1)
               Merge Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2479587 read=243787
               ->  Sort  (cost=615652.31..615662.50 rows=131290 width=46) (actual time=21529.711..21549.702 rows=112411 loops=1)
                     Sort Key: mi.movie_id
                     Sort Method: quicksort  Memory: 9046kB
                     Buffers: shared hit=70088 read=201494
                     ->  Merge Join  (cost=0.10..615305.68 rows=131290 width=46) (actual time=21420.197..21477.680 rows=121863 loops=1)
                           Merge Cond: (it.id = mi.info_type_id)
                           Buffers: shared hit=70084 read=201494
                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.089..0.095 rows=1 loops=1)
                                 Filter: ((info)::text = 'budget'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=2
                           ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=50) (actual time=33.122..18235.645 rows=14528933 loops=1)
                                 Buffers: shared hit=70082 read=201494
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=1355 width=21) (actual time=643.418..9411.117 rows=2423 loops=1)
                     Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                     Rows Removed by Filter: 2444075
                     Buffers: shared hit=2409499 read=42293
         ->  Sort  (cost=47565.95..47566.37 rows=5318 width=8) (actual time=7248.261..7248.278 rows=72 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 28kB
               Buffers: shared hit=276472 read=41972
               ->  Merge Join  (cost=47462.05..47555.73 rows=5318 width=8) (actual time=7248.212..7248.237 rows=72 loops=1)
                     Merge Cond: (mi_idx.info_type_id = it.id)
                     Buffers: shared hit=276472 read=41972
                     ->  Sort  (cost=47455.92..47502.58 rows=600981 width=12) (actual time=6977.188..7058.623 rows=1742698 loops=1)
                           Sort Key: mi_idx.info_type_id
                           Sort Method: quicksort  Memory: 130841kB
                           Buffers: shared hit=276471 read=41971
                           ->  Merge Join  (cost=33411.90..45664.46 rows=600981 width=12) (actual time=4609.251..6499.658 rows=1742698 loops=1)
                                 Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=276471 read=41971
                                 ->  Sort  (cost=33411.89..33448.45 rows=470998 width=4) (actual time=4609.221..4762.059 rows=1153798 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 103237kB
                                       Buffers: shared hit=231725 read=29751
                                       ->  Merge Join  (cost=27194.69..32033.61 rows=470998 width=4) (actual time=2534.177..4149.699 rows=1153798 loops=1)
                                             Merge Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=231725 read=29751
                                             ->  Sort  (cost=27194.68..27295.97 rows=1304564 width=8) (actual time=2534.145..2882.068 rows=2609129 loops=1)
                                                   Sort Key: mc.company_id
                                                   Sort Method: quicksort  Memory: 220607kB
                                                   Buffers: shared hit=5 read=25917
                                                   ->  Merge Join  (cost=0.02..23079.40 rows=1304564 width=8) (actual time=10.952..1566.053 rows=2609129 loops=1)
                                                         Merge Cond: (ct.id = mc.company_type_id)
                                                         Buffers: shared hit=5 read=25917
                                                         ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=2 width=4) (actual time=0.009..0.016 rows=2 loops=1)
                                                               Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=2
                                                         ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=10.933..992.729 rows=2609129 loops=1)
                                                               Buffers: shared hit=3 read=25917
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.027..784.590 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231720 read=3834
                                 ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.022..965.484 rows=2450477 loops=1)
                                       Buffers: shared hit=44746 read=12220
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.059..0.059 rows=1 loops=1)
                           Sort Key: it.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.047..0.047 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                 Buffers: shared hit=1 read=1
 Planning Time: 5130.888 ms
 Execution Time: 38282.317 ms
(74 rows)


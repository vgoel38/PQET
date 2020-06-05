                                                                                                                      QUERY PLAN                                                                                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=680863.78..680863.78 rows=1 width=96) (actual time=28780.106..28780.107 rows=1 loops=1)
   Buffers: shared hit=2735104 read=232058
   ->  Merge Join  (cost=680863.69..680863.78 rows=5 width=65) (actual time=28674.260..28717.651 rows=111101 loops=1)
         Merge Cond: (miidx.info_type_id = it.id)
         Buffers: shared hit=2735104 read=232058
         ->  Sort  (cost=680857.56..680857.61 rows=617 width=69) (actual time=28633.917..28657.652 rows=333304 loops=1)
               Sort Key: miidx.info_type_id
               Sort Method: quicksort  Memory: 51074kB
               Buffers: shared hit=2735103 read=232057
               ->  Merge Join  (cost=668706.83..680856.67 rows=617 width=69) (actual time=27673.320..28520.771 rows=335055 loops=1)
                     Merge Cond: (t.id = mi.movie_id)
                     Buffers: shared hit=2735099 read=232057
                     ->  Merge Join  (cost=53054.52..65193.40 rows=4946 width=39) (actual time=13726.543..14227.679 rows=49448 loops=1)
                           Merge Cond: (t.id = miidx.movie_id)
                           Buffers: shared hit=2734531 read=84832
                           ->  Sort  (cost=53054.51..53054.81 rows=3876 width=25) (actual time=13113.712..13116.464 rows=32853 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 4143kB
                                 Buffers: shared hit=2719873 read=72612
                                 ->  Merge Join  (cost=53042.85..53047.33 rows=3876 width=25) (actual time=13094.900..13103.543 rows=32853 loops=1)
                                       Merge Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2719873 read=72612
                                       ->  Sort  (cost=53036.73..53038.83 rows=27132 width=29) (actual time=13094.861..13096.455 rows=32854 loops=1)
                                             Sort Key: t.kind_id
                                             Sort Method: quicksort  Memory: 9170kB
                                             Buffers: shared hit=2719872 read=72611
                                             ->  Merge Join  (cost=29753.85..52974.68 rows=27132 width=29) (actual time=4033.664..13069.485 rows=71294 loops=1)
                                                   Merge Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=2719872 read=72611
                                                   ->  Sort  (cost=29753.83..29755.93 rows=27132 width=4) (actual time=3592.121..3605.944 rows=71294 loops=1)
                                                         Sort Key: mc.movie_id
                                                         Sort Method: quicksort  Memory: 6414kB
                                                         Buffers: shared hit=231725 read=29751
                                                         ->  Merge Join  (cost=24990.67..29691.78 rows=27132 width=4) (actual time=2493.059..3565.927 rows=71294 loops=1)
                                                               Merge Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=231725 read=29751
                                                               ->  Sort  (cost=24990.66..25041.30 rows=652282 width=8) (actual time=2374.247..2545.947 rows=1334877 loops=1)
                                                                     Sort Key: mc.company_id
                                                                     Sort Method: quicksort  Memory: 111725kB
                                                                     Buffers: shared hit=5 read=25917
                                                                     ->  Merge Join  (cost=0.02..23034.30 rows=652282 width=8) (actual time=1183.224..1902.909 rows=1334883 loops=1)
                                                                           Merge Cond: (ct.id = mc.company_type_id)
                                                                           Buffers: shared hit=5 read=25917
                                                                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.022..0.026 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'production companies'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared hit=2
                                                                           ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=11.031..1325.471 rows=2609129 loops=1)
                                                                                 Buffers: shared hit=3 read=25917
                                                               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=9775 width=4) (actual time=102.759..835.076 rows=9775 loops=1)
                                                                     Filter: ((country_code)::text = '[de]'::text)
                                                                     Rows Removed by Filter: 225222
                                                                     Buffers: shared hit=231720 read=3834
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=0.015..9099.930 rows=2525727 loops=1)
                                                         Buffers: shared hit=2488147 read=42860
                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.034..0.034 rows=1 loops=1)
                                             Sort Key: kt.id
                                             Sort Method: quicksort  Memory: 25kB
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.025..0.026 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'movie'::text)
                                                   Buffers: shared hit=1 read=1
                           ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.014..841.430 rows=1398455 loops=1)
                                 Buffers: shared hit=14658 read=12220
                     ->  Sort  (cost=615652.31..615662.50 rows=131290 width=46) (actual time=13697.985..13867.870 rows=3308035 loops=1)
                           Sort Key: mi.movie_id
                           Sort Method: quicksort  Memory: 330598kB
                           Buffers: shared hit=568 read=147225
                           ->  Merge Join  (cost=0.10..615305.68 rows=131290 width=46) (actual time=10701.928..12495.138 rows=3036719 loops=1)
                                 Merge Cond: (it2.id = mi.info_type_id)
                                 Buffers: shared hit=568 read=147225
                                 ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..9.21 rows=1 width=4) (actual time=0.015..0.040 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=2
                                 ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=50) (actual time=37.226..9680.280 rows=12601871 loops=1)
                                       Buffers: shared hit=566 read=147225
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.036..0.037 rows=1 loops=1)
               Sort Key: it.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=1 read=1
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.027..0.028 rows=1 loops=1)
                     Index Cond: ((info)::text = 'rating'::text)
                     Buffers: shared hit=1 read=1
 Planning Time: 4738.262 ms
 Execution Time: 28844.638 ms
(86 rows)


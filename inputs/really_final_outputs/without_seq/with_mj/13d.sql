                                                                                                                 QUERY PLAN                                                                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=681198.59..681198.59 rows=1 width=96) (actual time=40256.316..40256.316 rows=1 loops=1)
   Buffers: shared hit=2811307 read=232071
   ->  Merge Join  (cost=676594.78..681198.58 rows=47 width=42) (actual time=38480.618..40027.933 rows=670390 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2811307 read=232071
         ->  Sort  (cost=676594.77..676594.78 rows=131 width=27) (actual time=38455.353..38746.688 rows=1919495 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 193795kB
               Buffers: shared hit=2579587 read=228237
               ->  Merge Join  (cost=676592.32..676594.63 rows=131 width=27) (actual time=37195.386..37774.325 rows=1919495 loops=1)
                     Merge Cond: (miidx.info_type_id = it.id)
                     Buffers: shared hit=2579583 read=228237
                     ->  Sort  (cost=676586.19..676587.34 rows=14824 width=31) (actual time=36490.742..36905.618 rows=5758486 loops=1)
                           Sort Key: miidx.info_type_id
                           Sort Method: quicksort  Memory: 668663kB
                           Buffers: shared hit=2579582 read=228236
                           ->  Merge Join  (cost=664309.25..676554.30 rows=14824 width=31) (actual time=31667.972..34924.267 rows=5792160 loops=1)
                                 Merge Cond: (mi.movie_id = mc.movie_id)
                                 Buffers: shared hit=2579582 read=228236
                                 ->  Merge Join  (cost=639318.60..651460.78 rows=16545 width=39) (actual time=29095.734..30552.563 rows=2184701 loops=1)
                                       Merge Cond: (mi.movie_id = miidx.movie_id)
                                       Buffers: shared hit=2579577 read=202319
                                       ->  Sort  (cost=639318.58..639320.04 rows=18756 width=25) (actual time=28431.017..28506.716 rows=1083567 loops=1)
                                             Sort Key: mi.movie_id
                                             Sort Method: quicksort  Memory: 131788kB
                                             Buffers: shared hit=2489032 read=190099
                                             ->  Merge Join  (cost=639255.56..639277.24 rows=18756 width=25) (actual time=27789.617..28071.520 rows=1083597 loops=1)
                                                   Merge Cond: (t.kind_id = kt.id)
                                                   Buffers: shared hit=2489032 read=190099
                                                   ->  Sort  (cost=639249.43..639259.63 rows=131290 width=29) (actual time=27789.553..27839.737 rows=1083598 loops=1)
                                                         Sort Key: t.kind_id
                                                         Sort Method: quicksort  Memory: 344968kB
                                                         Buffers: shared hit=2489031 read=190098
                                                         ->  Merge Join  (cost=615652.32..638902.81 rows=131290 width=29) (actual time=15298.979..26853.851 rows=3036719 loops=1)
                                                               Merge Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=2489031 read=190098
                                                               ->  Sort  (cost=615652.31..615662.50 rows=131290 width=4) (actual time=15298.949..15603.213 rows=3036719 loops=1)
                                                                     Sort Key: mi.movie_id
                                                                     Sort Method: quicksort  Memory: 240651kB
                                                                     Buffers: shared hit=568 read=147225
                                                                     ->  Merge Join  (cost=0.10..615305.68 rows=131290 width=4) (actual time=12443.872..14206.266 rows=3036719 loops=1)
                                                                           Merge Cond: (it.id = mi.info_type_id)
                                                                           Buffers: shared hit=568 read=147225
                                                                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.071..0.095 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'release dates'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=2
                                                                           ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=8) (actual time=37.059..11424.463 rows=12601871 loops=1)
                                                                                 Buffers: shared hit=566 read=147225
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=0.023..9643.697 rows=2526430 loops=1)
                                                                     Buffers: shared hit=2488463 read=42873
                                                   ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.058..0.058 rows=1 loops=1)
                                                         Sort Key: kt.id
                                                         Sort Method: quicksort  Memory: 25kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.046..0.047 rows=1 loops=1)
                                                               Index Cond: ((kind)::text = 'movie'::text)
                                                               Buffers: shared hit=1 read=1
                                       ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.023..1170.175 rows=3041419 loops=1)
                                             Buffers: shared hit=90545 read=12220
                                 ->  Sort  (cost=24990.66..25041.30 rows=652282 width=8) (actual time=2504.017..2834.199 rows=6851602 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 111725kB
                                       Buffers: shared hit=5 read=25917
                                       ->  Merge Join  (cost=0.02..23034.30 rows=652282 width=8) (actual time=1290.400..1994.611 rows=1334883 loops=1)
                                             Merge Cond: (ct.id = mc.company_type_id)
                                             Buffers: shared hit=5 read=25917
                                             ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.013..0.016 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'production companies'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=16.787..1420.277 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=25917
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.057..0.057 rows=1 loops=1)
                           Sort Key: it.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.044..0.044 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'rating'::text)
                                 Buffers: shared hit=1 read=1
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=0.031..909.956 rows=84843 loops=1)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 150154
               Buffers: shared hit=231720 read=3834
 Planning Time: 4669.627 ms
 Execution Time: 40341.358 ms
(86 rows)


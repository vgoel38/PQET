                                                                                                                             QUERY PLAN                                                                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=719112.87..719112.87 rows=1 width=64) (actual time=39341.011..39341.011 rows=1 loops=1)
   Buffers: shared hit=2629134 read=309828
   ->  Merge Join  (cost=714509.10..719112.87 rows=1 width=27) (actual time=39340.965..39340.974 rows=16 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2629134 read=309828
         ->  Sort  (cost=714509.08..714509.08 rows=1 width=31) (actual time=38716.061..38716.064 rows=16 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=2497368 read=306798
               ->  Merge Join  (cost=714499.90..714509.08 rows=1 width=31) (actual time=38715.873..38715.878 rows=16 loops=1)
                     Merge Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2497364 read=306798
                     ->  Sort  (cost=714499.90..714499.90 rows=1 width=35) (actual time=38715.866..38715.866 rows=16 loops=1)
                           Sort Key: mc.company_type_id
                           Sort Method: quicksort  Memory: 26kB
                           Buffers: shared hit=2497362 read=306798
                           ->  Merge Join  (cost=714499.90..714499.90 rows=1 width=35) (actual time=38715.847..38715.852 rows=16 loops=1)
                                 Merge Cond: (cc.status_id = cct1.id)
                                 Buffers: shared hit=2497362 read=306798
                                 ->  Sort  (cost=714493.77..714493.77 rows=1 width=39) (actual time=38715.831..38715.832 rows=16 loops=1)
                                       Sort Key: cc.status_id
                                       Sort Method: quicksort  Memory: 26kB
                                       Buffers: shared hit=2497361 read=306797
                                       ->  Merge Join  (cost=714493.77..714493.77 rows=1 width=39) (actual time=38715.810..38715.815 rows=16 loops=1)
                                             Merge Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=2497361 read=306797
                                             ->  Sort  (cost=714487.64..714487.64 rows=1 width=33) (actual time=38715.762..38715.762 rows=16 loops=1)
                                                   Sort Key: t.kind_id
                                                   Sort Method: quicksort  Memory: 26kB
                                                   Buffers: shared hit=2497360 read=306796
                                                   ->  Merge Join  (cost=687523.23..714487.64 rows=1 width=33) (actual time=38715.695..38715.738 rows=16 loops=1)
                                                         Merge Cond: (t.id = mc.movie_id)
                                                         Buffers: shared hit=2497360 read=306796
                                                         ->  Merge Join  (cost=656110.08..682669.35 rows=1 width=41) (actual time=35969.539..35969.574 rows=16 loops=1)
                                                               Merge Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=2497357 read=280879
                                                               ->  Merge Join  (cost=656110.07..659341.14 rows=1 width=16) (actual time=26466.007..26466.036 rows=16 loops=1)
                                                                     Merge Cond: (mi.movie_id = cc.movie_id)
                                                                     Buffers: shared hit=183280 read=240225
                                                                     ->  Sort  (cost=656110.06..656110.06 rows=1 width=8) (actual time=26215.825..26215.829 rows=10 loops=1)
                                                                           Sort Key: mi.movie_id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=109168 read=239179
                                                                           ->  Merge Join  (cost=656110.05..656110.06 rows=1 width=8) (actual time=26213.414..26215.800 rows=10 loops=1)
                                                                                 Merge Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=109168 read=239179
                                                                                 ->  Sort  (cost=656085.52..656085.52 rows=24 width=12) (actual time=26157.746..26158.670 rows=3913 loops=1)
                                                                                       Sort Key: mk.keyword_id
                                                                                       Sort Method: quicksort  Memory: 400kB
                                                                                       Buffers: shared hit=109160 read=239168
                                                                                       ->  Merge Join  (cost=616448.48..656085.50 rows=24 width=12) (actual time=22753.620..26154.737 rows=4429 loops=1)
                                                                                             Merge Cond: (mi.movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=109160 read=239168
                                                                                             ->  Sort  (cost=616448.47..616448.47 rows=2 width=4) (actual time=22753.538..22753.922 rows=1771 loops=1)
                                                                                                   Sort Key: mi.movie_id
                                                                                                   Sort Method: quicksort  Memory: 132kB
                                                                                                   Buffers: shared hit=87586 read=202427
                                                                                                   ->  Merge Join  (cost=0.02..616448.47 rows=2 width=4) (actual time=13748.805..22751.903 rows=1771 loops=1)
                                                                                                         Merge Cond: (it1.id = mi.info_type_id)
                                                                                                         Buffers: shared hit=87586 read=202427
                                                                                                         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.039..0.062 rows=1 loops=1)
                                                                                                               Filter: ((info)::text = 'release dates'::text)
                                                                                                               Rows Removed by Filter: 112
                                                                                                               Buffers: shared hit=2
                                                                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=260 width=8) (actual time=13748.755..22750.682 rows=1771 loops=1)
                                                                                                               Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                                                                                               Rows Removed by Filter: 14833949
                                                                                                               Buffers: shared hit=87584 read=202427
                                                                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2641.600 rows=4514890 loops=1)
                                                                                                   Buffers: shared hit=21574 read=36741
                                                                                 ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=55.386..55.387 rows=4 loops=1)
                                                                                       Sort Key: k.id
                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                       Buffers: shared hit=8 read=11
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=17.029..55.355 rows=4 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                                             Buffers: shared hit=8 read=11
                                                                     ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=0.038..223.697 rows=116211 loops=1)
                                                                           Buffers: shared hit=74112 read=1046
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=19.634..9346.245 rows=1301837 loops=1)
                                                                     Filter: (production_year > 2000)
                                                                     Rows Removed by Filter: 1047793
                                                                     Buffers: shared hit=2314077 read=40654
                                                         ->  Sort  (cost=31413.15..31615.72 rows=2609129 width=12) (actual time=2439.424..2538.236 rows=2246017 loops=1)
                                                               Sort Key: mc.movie_id
                                                               Sort Method: quicksort  Memory: 220607kB
                                                               Buffers: shared hit=3 read=25917
                                                               ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=13.710..1378.175 rows=2609129 loops=1)
                                                                     Buffers: shared hit=3 read=25917
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=14) (actual time=0.045..0.045 rows=1 loops=1)
                                                   Sort Key: kt.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=14) (actual time=0.036..0.037 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                         Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                       Sort Key: cct1.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'complete+verified'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.004..0.004 rows=2 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.015..619.508 rows=49482 loops=1)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 85001
               Buffers: shared hit=131766 read=3030
 Planning Time: 9114.745 ms
 Execution Time: 39379.213 ms
(111 rows)


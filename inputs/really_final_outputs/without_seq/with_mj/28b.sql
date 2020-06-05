                                                                                                                                                    QUERY PLAN                                                                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=723047.39..723047.39 rows=1 width=96) (actual time=35090.034..35090.034 rows=1 loops=1)
   Buffers: shared hit=2663222 read=278226
   ->  Merge Join  (cost=718440.40..723047.39 rows=1 width=42) (actual time=34867.666..35089.863 rows=148 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2663222 read=278226
         ->  Sort  (cost=718440.39..718440.39 rows=1 width=27) (actual time=34716.740..34716.775 rows=150 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 34kB
               Buffers: shared hit=2608808 read=277120
               ->  Merge Join  (cost=718431.21..718440.39 rows=1 width=27) (actual time=34705.773..34705.881 rows=150 loops=1)
                     Merge Cond: (t.kind_id = kt.id)
                     Buffers: shared hit=2608804 read=277120
                     ->  Sort  (cost=718431.20..718431.20 rows=1 width=31) (actual time=34705.743..34705.761 rows=163 loops=1)
                           Sort Key: t.kind_id
                           Sort Method: quicksort  Memory: 37kB
                           Buffers: shared hit=2608802 read=277120
                           ->  Merge Join  (cost=718431.20..718431.20 rows=1 width=31) (actual time=34704.605..34705.634 rows=163 loops=1)
                                 Merge Cond: (k.id = mk.keyword_id)
                                 Buffers: shared hit=2608802 read=277120
                                 ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=53.724..53.725 rows=3 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.757..53.690 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                                 ->  Sort  (cost=718406.67..718406.67 rows=2 width=35) (actual time=34650.750..34651.170 rows=2026 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 2061kB
                                       Buffers: shared hit=2608794 read=277110
                                       ->  Merge Join  (cost=678769.65..718406.67 rows=2 width=35) (actual time=31766.922..34639.563 rows=16414 loops=1)
                                             Merge Cond: (t.id = mk.movie_id)
                                             Buffers: shared hit=2608794 read=277110
                                             ->  Sort  (cost=678769.64..678769.64 rows=1 width=51) (actual time=31406.781..31406.820 rows=173 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 41kB
                                                   Buffers: shared hit=2587280 read=240835
                                                   ->  Merge Join  (cost=678769.64..678769.64 rows=1 width=51) (actual time=31406.549..31406.651 rows=173 loops=1)
                                                         Merge Cond: (it2.id = mi_idx.info_type_id)
                                                         Buffers: shared hit=2587280 read=240835
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.072..0.073 rows=1 loops=1)
                                                               Sort Key: it2.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.057..0.058 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                     Buffers: shared hit=1 read=1
                                                         ->  Sort  (cost=678763.51..678763.51 rows=1 width=55) (actual time=31406.440..31406.463 rows=241 loops=1)
                                                               Sort Key: mi_idx.info_type_id
                                                               Sort Method: quicksort  Memory: 49kB
                                                               Buffers: shared hit=2587279 read=240834
                                                               ->  Merge Join  (cost=666602.18..678763.51 rows=1 width=55) (actual time=29988.530..31406.122 rows=241 loops=1)
                                                                     Merge Cond: (t.id = mi_idx.movie_id)
                                                                     Buffers: shared hit=2587279 read=240834
                                                                     ->  Sort  (cost=666602.16..666602.17 rows=1 width=41) (actual time=29962.537..29962.632 rows=422 loops=1)
                                                                           Sort Key: mi.movie_id
                                                                           Sort Method: quicksort  Memory: 60kB
                                                                           Buffers: shared hit=2573931 read=228778
                                                                           ->  Merge Join  (cost=666592.98..666602.16 rows=1 width=41) (actual time=29962.288..29962.415 rows=422 loops=1)
                                                                                 Merge Cond: (ct.id = mc.company_type_id)
                                                                                 Buffers: shared hit=2573931 read=228778
                                                                                 ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.013..0.016 rows=2 loops=1)
                                                                                       Buffers: shared hit=2
                                                                                 ->  Sort  (cost=666592.98..666592.98 rows=1 width=45) (actual time=29962.271..29962.291 rows=422 loops=1)
                                                                                       Sort Key: mc.company_type_id
                                                                                       Sort Method: quicksort  Memory: 63kB
                                                                                       Buffers: shared hit=2573929 read=228778
                                                                                       ->  Merge Join  (cost=666570.73..666592.98 rows=1 width=45) (actual time=29920.544..29962.110 rows=422 loops=1)
                                                                                             Merge Cond: (t.id = mc.movie_id)
                                                                                             Buffers: shared hit=2573929 read=228778
                                                                                             ->  Sort  (cost=643007.12..643007.12 rows=8 width=33) (actual time=27913.928..27913.983 rows=599 loops=1)
                                                                                                   Sort Key: mi.movie_id
                                                                                                   Sort Method: quicksort  Memory: 84kB
                                                                                                   Buffers: shared hit=2573926 read=202861
                                                                                                   ->  Merge Join  (cost=643000.99..643007.12 rows=8 width=33) (actual time=27913.500..27913.691 rows=599 loops=1)
                                                                                                         Merge Cond: (cc.status_id = cct2.id)
                                                                                                         Buffers: shared hit=2573926 read=202861
                                                                                                         ->  Sort  (cost=642997.93..642997.93 rows=10 width=37) (actual time=27913.492..27913.521 rows=600 loops=1)
                                                                                                               Sort Key: cc.status_id
                                                                                                               Sort Method: quicksort  Memory: 87kB
                                                                                                               Buffers: shared hit=2573924 read=202861
                                                                                                               ->  Merge Join  (cost=642997.92..642997.92 rows=10 width=37) (actual time=27913.104..27913.316 rows=604 loops=1)
                                                                                                                     Merge Cond: (cc.subject_id = cct1.id)
                                                                                                                     Buffers: shared hit=2573924 read=202861
                                                                                                                     ->  Sort  (cost=642991.79..642991.79 rows=40 width=41) (actual time=27912.869..27912.974 rows=1632 loops=1)
                                                                                                                           Sort Key: cc.subject_id
                                                                                                                           Sort Method: quicksort  Memory: 216kB
                                                                                                                           Buffers: shared hit=2573923 read=202860
                                                                                                                           ->  Merge Join  (cost=616460.87..642991.76 rows=40 width=41) (actual time=17763.964..27911.826 rows=1632 loops=1)
                                                                                                                                 Merge Cond: (mi.movie_id = t.id)
                                                                                                                                 Buffers: shared hit=2573923 read=202860
                                                                                                                                 ->  Merge Join  (cost=616460.85..619692.11 rows=99 width=16) (actual time=17046.121..17245.163 rows=6825 loops=1)
                                                                                                                                       Merge Cond: (mi.movie_id = cc.movie_id)
                                                                                                                                       Buffers: shared hit=85901 read=160001
                                                                                                                                       ->  Sort  (cost=616460.84..616460.93 rows=1188 width=4) (actual time=17003.613..17010.159 rows=59116 loops=1)
                                                                                                                                             Sort Key: mi.movie_id
                                                                                                                                             Sort Method: quicksort  Memory: 4308kB
                                                                                                                                             Buffers: shared hit=753 read=158911
                                                                                                                                             ->  Merge Join  (cost=0.02..616458.96 rows=1188 width=4) (actual time=6230.806..16975.239 rows=59116 loops=1)
                                                                                                                                                   Merge Cond: (it1.id = mi.info_type_id)
                                                                                                                                                   Buffers: shared hit=753 read=158911
                                                                                                                                                   ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.031..0.064 rows=1 loops=1)
                                                                                                                                                         Filter: ((info)::text = 'countries'::text)
                                                                                                                                                         Rows Removed by Filter: 112
                                                                                                                                                         Buffers: shared hit=2
                                                                                                                                                   ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=134293 width=8) (actual time=3175.265..16947.410 rows=132399 loops=1)
                                                                                                                                                         Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                                                                                                         Rows Removed by Filter: 12838741
                                                                                                                                                         Buffers: shared hit=751 read=158911
                                                                                                                                       ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.021..200.246 rows=132515 loops=1)
                                                                                                                                             Buffers: shared hit=85148 read=1090
                                                                                                                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=23.372..10536.426 rows=1012537 loops=1)
                                                                                                                                       Filter: (production_year > 2005)
                                                                                                                                       Rows Removed by Filter: 1512942
                                                                                                                                       Buffers: shared hit=2488022 read=42859
                                                                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.031..0.031 rows=1 loops=1)
                                                                                                                           Sort Key: cct1.id
                                                                                                                           Sort Method: quicksort  Memory: 25kB
                                                                                                                           Buffers: shared hit=1 read=1
                                                                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.021..0.022 rows=1 loops=1)
                                                                                                                                 Index Cond: ((kind)::text = 'crew'::text)
                                                                                                                                 Buffers: shared hit=1 read=1
                                                                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..9.19 rows=3 width=4) (actual time=0.004..0.006 rows=3 loops=1)
                                                                                                               Filter: ((kind)::text <> 'complete+verified'::text)
                                                                                                               Rows Removed by Filter: 1
                                                                                                               Buffers: shared hit=2
                                                                                             ->  Sort  (cost=23563.61..23574.73 rows=143259 width=12) (actual time=2006.556..2019.689 rows=302548 loops=1)
                                                                                                   Sort Key: mc.movie_id
                                                                                                   Sort Method: quicksort  Memory: 26504kB
                                                                                                   Buffers: shared hit=3 read=25917
                                                                                                   ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=11.451..1871.095 rows=303271 loops=1)
                                                                                                         Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                                                         Rows Removed by Filter: 2305858
                                                                                                         Buffers: shared hit=3 read=25917
                                                                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=298853 width=14) (actual time=0.021..1381.925 rows=295668 loops=1)
                                                                           Filter: (info > '6.5'::text)
                                                                           Rows Removed by Filter: 1066197
                                                                           Buffers: shared hit=13348 read=12056
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.022..2499.585 rows=4472571 loops=1)
                                                   Buffers: shared hit=21514 read=36275
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.023..0.029 rows=2 loops=1)
                           Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                           Rows Removed by Filter: 5
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=35.555..369.549 rows=31535 loops=1)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 23834
               Buffers: shared hit=54414 read=1106
 Planning Time: 14992.324 ms
 Execution Time: 35131.233 ms
(150 rows)


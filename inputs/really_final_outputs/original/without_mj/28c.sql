                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.66..516.66 rows=1 width=96) (actual time=103819.482..103819.482 rows=1 loops=1)
   Buffers: shared hit=222553 read=35975
   ->  Nested Loop  (cost=0.11..516.66 rows=1 width=42) (actual time=2994.357..103789.722 rows=8373 loops=1)
         Buffers: shared hit=222553 read=35975
         ->  Nested Loop  (cost=0.09..516.57 rows=1 width=27) (actual time=2954.139..98657.404 rows=8771 loops=1)
               Join Filter: (ct.id = mc.company_type_id)
               Buffers: shared hit=188151 read=35228
               ->  Nested Loop  (cost=0.09..516.54 rows=1 width=31) (actual time=2930.482..98594.238 rows=8771 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Buffers: shared hit=179381 read=35227
                     ->  Nested Loop  (cost=0.08..516.50 rows=1 width=43) (actual time=763.831..89708.073 rows=778 loops=1)
                           Join Filter: (t.kind_id = kt.id)
                           Rows Removed by Join Filter: 309
                           Buffers: shared hit=176431 read=34096
                           ->  Nested Loop  (cost=0.08..516.47 rows=1 width=47) (actual time=759.157..89692.262 rows=871 loops=1)
                                 Join Filter: (it.id = mi.info_type_id)
                                 Rows Removed by Join Filter: 113
                                 Buffers: shared hit=175561 read=34095
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.739..23.756 rows=1 loops=1)
                                       Filter: ((info)::text = 'countries'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.08..516.42 rows=1 width=51) (actual time=735.410..89667.159 rows=984 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=175561 read=34094
                                       ->  Nested Loop  (cost=0.07..516.27 rows=1 width=43) (actual time=336.780..43008.960 rows=961 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 1974
                                             Buffers: shared hit=164352 read=24550
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.050 rows=1 loops=1)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                             ->  Nested Loop  (cost=0.07..516.22 rows=1 width=47) (actual time=336.718..43006.505 rows=2935 loops=1)
                                                   Join Filter: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=164351 read=24550
                                                   ->  Nested Loop  (cost=0.05..516.20 rows=1 width=33) (actual time=286.537..34145.261 rows=1041 loops=1)
                                                         Buffers: shared hit=161186 read=23546
                                                         ->  Nested Loop  (cost=0.04..516.11 rows=2 width=8) (actual time=142.756..10308.656 rows=6704 loops=1)
                                                               Join Filter: (cct.id = cc.status_id)
                                                               Rows Removed by Join Filter: 7104
                                                               Buffers: shared hit=140537 read=17355
                                                               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.128..0.130 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'complete'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared read=1
                                                               ->  Nested Loop  (cost=0.04..516.08 rows=10 width=12) (actual time=142.624..10299.409 rows=13808 loops=1)
                                                                     Join Filter: (cct.id = cc.subject_id)
                                                                     Rows Removed by Join Filter: 6216
                                                                     Buffers: shared hit=140537 read=17354
                                                                     ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.008 rows=1 loops=1)
                                                                           Filter: ((kind)::text = 'cast'::text)
                                                                           Rows Removed by Filter: 3
                                                                           Buffers: shared hit=1
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=142.611..10283.803 rows=20024 loops=1)
                                                                           Buffers: shared hit=140536 read=17354
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=73.230..8936.628 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10141 read=16301
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.252..98.459 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.162..2938.019 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10133 read=16291
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.026..0.034 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130395 read=1053
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=3.554..3.554 rows=0 loops=6704)
                                                               Index Cond: (id = mk.movie_id)
                                                               Filter: (production_year > 2005)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=20649 read=6191
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=8.457..8.505 rows=3 loops=1041)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info < '8.5'::text)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=3165 read=1004
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=40.609..48.546 rows=1 loops=961)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                             Rows Removed by Filter: 123
                                             Buffers: shared hit=11209 read=9544
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.010..0.011 rows=1 loops=871)
                                 Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=870 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=9.720..11.409 rows=11 loops=778)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                           Rows Removed by Filter: 13
                           Buffers: shared hit=2950 read=1131
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.004..0.004 rows=1 loops=8771)
                     Buffers: shared hit=8770 read=1
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.583..0.583 rows=1 loops=8771)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=34402 read=747
 Planning Time: 14192.759 ms
 Execution Time: 103820.384 ms
(100 rows)


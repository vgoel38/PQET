 Aggregate  (cost=517.89..517.89 rows=1 width=96) (actual time=181947.964..181947.965 rows=1 loops=1)
   Buffers: shared hit=3200168 read=129083
   ->  Nested Loop  (cost=0.11..517.89 rows=1 width=42) (actual time=3290.979..181941.035 rows=4803 loops=1)
         Join Filter: (mi.info_type_id = it1.id)
         Rows Removed by Join Filter: 492
         Buffers: shared hit=3200168 read=129083
         ->  Nested Loop  (cost=0.11..517.84 rows=1 width=46) (actual time=3290.949..181888.318 rows=5295 loops=1)
               Join Filter: (kt.id = t.kind_id)
               Rows Removed by Join Filter: 624
               Buffers: shared hit=3194873 read=129083
               ->  Nested Loop  (cost=0.11..517.81 rows=1 width=50) (actual time=3271.584..181843.476 rows=5542 loops=1)
                     Join Filter: (mi.movie_id = t.id)
                     Buffers: shared hit=3189332 read=129082
                     ->  Nested Loop  (cost=0.09..517.77 rows=1 width=49) (actual time=3234.933..168192.390 rows=15189 loops=1)
                           Join Filter: (cct1.id = cc.subject_id)
                           Rows Removed by Join Filter: 26920
                           Buffers: shared hit=3129911 read=127648
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.171..0.174 rows=1 loops=1)
                                 Filter: ((kind)::text = 'crew'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.09..517.73 rows=1 width=53) (actual time=1218.620..168173.669 rows=42109 loops=1)
                                 Join Filter: (cct2.id = cc.status_id)
                                 Rows Removed by Join Filter: 343601
                                 Buffers: shared hit=3129911 read=127647
                                 ->  Nested Loop  (cost=0.09..517.70 rows=1 width=57) (actual time=1218.585..167601.758 rows=128570 loops=1)
                                       Join Filter: (mi.movie_id = cc.movie_id)
                                       Buffers: shared hit=3001341 read=127647
                                       ->  Nested Loop  (cost=0.08..517.67 rows=2 width=45) (actual time=413.572..165925.536 rows=108961 loops=1)
                                             Buffers: shared hit=2546159 read=126676
                                             ->  Nested Loop  (cost=0.07..517.52 rows=1 width=37) (actual time=256.376..38654.243 rows=77414 loops=1)
                                                   Join Filter: (ct.id = mc.company_type_id)
                                                   Rows Removed by Join Filter: 17
                                                   Buffers: shared hit=693800 read=44931
                                                   ->  Nested Loop  (cost=0.07..517.49 rows=1 width=41) (actual time=231.809..38346.866 rows=77414 loops=1)
                                                         Buffers: shared hit=616387 read=44930
                                                         ->  Nested Loop  (cost=0.05..517.39 rows=1 width=26) (actual time=176.037..31843.785 rows=83144 loops=1)
                                                               Buffers: shared hit=284512 read=43760
                                                               ->  Nested Loop  (cost=0.04..517.30 rows=3 width=14) (actual time=127.171..19056.218 rows=31800 loops=1)
                                                                     Join Filter: (it2.id = mi_idx.info_type_id)
                                                                     Rows Removed by Join Filter: 62852
                                                                     Buffers: shared hit=145679 read=25413
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=17.528..17.537 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared read=1
                                                                     ->  Nested Loop  (cost=0.04..517.19 rows=395 width=18) (actual time=109.626..18993.983 rows=94652 loops=1)
                                                                           Buffers: shared hit=145679 read=25412
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=73.387..11287.002 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10141 read=16301
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.396..99.956 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.164..3720.646 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10133 read=16291
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.199..0.205 rows=3 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 0
                                                                                 Buffers: shared hit=135538 read=9111
                                                               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.328..0.400 rows=3 loops=31800)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 7
                                                                     Buffers: shared hit=138833 read=18347
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.077..0.077 rows=1 loops=83144)
                                                               Index Cond: (id = mc.company_id)
                                                               Filter: ((country_code)::text <> '[us]'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=331875 read=1170
                                                   ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=77414)
                                                         Buffers: shared hit=77413 read=1
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=1.417..1.642 rows=1 loops=77414)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                   Rows Removed by Filter: 179
                                                   Buffers: shared hit=1852359 read=81745
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.011..0.013 rows=1 loops=108961)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=455182 read=971
                                 ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=3 width=4) (actual time=0.001..0.002 rows=3 loops=128570)
                                       Filter: ((kind)::text <> 'completeverified'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=128570
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.897..0.897 rows=0 loops=15189)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=59421 read=1434
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.005..0.005 rows=1 loops=5542)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=5541 read=1
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.005..0.008 rows=1 loops=5295)
               Filter: ((info)::text = 'countries'::text)
               Rows Removed by Filter: 17
               Buffers: shared hit=5295
 Planning Time: 14269.887 ms
 Execution Time: 182011.239 ms

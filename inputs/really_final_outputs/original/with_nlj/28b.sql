 Aggregate  (cost=517.75..517.75 rows=1 width=96) (actual time=190973.039..190973.039 rows=1 loops=1)
   Buffers: shared hit=367923 read=104742
   ->  Nested Loop  (cost=0.11..517.75 rows=1 width=42) (actual time=10138.806..190972.702 rows=148 loops=1)
         Join Filter: (cct1.id = cc.subject_id)
         Rows Removed by Join Filter: 720
         Buffers: shared hit=367923 read=104742
         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.148..0.152 rows=1 loops=1)
               Filter: ((kind)::text = 'crew'::text)
               Rows Removed by Filter: 3
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.11..517.71 rows=1 width=46) (actual time=10132.376..190972.130 rows=868 loops=1)
               Join Filter: (cct2.id = cc.status_id)
               Rows Removed by Join Filter: 5300
               Buffers: shared hit=367923 read=104741
               ->  Nested Loop  (cost=0.11..517.68 rows=1 width=50) (actual time=10132.346..190959.881 rows=2056 loops=1)
                     Join Filter: (t.id = cc.movie_id)
                     Buffers: shared hit=365867 read=104741
                     ->  Nested Loop  (cost=0.09..517.67 rows=1 width=62) (actual time=10086.033..189513.843 rows=2661 loops=1)
                           Join Filter: (kt.id = t.kind_id)
                           Rows Removed by Join Filter: 212
                           Buffers: shared hit=355936 read=104633
                           ->  Nested Loop  (cost=0.09..517.64 rows=1 width=66) (actual time=10067.589..189480.386 rows=2760 loops=1)
                                 Join Filter: (mi.movie_id = t.id)
                                 Buffers: shared hit=353177 read=104632
                                 ->  Nested Loop  (cost=0.08..517.59 rows=1 width=41) (actual time=1885.303..181596.245 rows=6603 loops=1)
                                       Join Filter: (ct.id = mc.company_type_id)
                                       Rows Removed by Join Filter: 12
                                       Buffers: shared hit=327359 read=104038
                                       ->  Nested Loop  (cost=0.08..517.56 rows=1 width=45) (actual time=1858.789..181534.562 rows=6603 loops=1)
                                             Buffers: shared hit=320757 read=104037
                                             ->  Nested Loop  (cost=0.07..517.46 rows=1 width=30) (actual time=1806.574..175761.677 rows=6856 loops=1)
                                                   Join Filter: (mi.movie_id = mc.movie_id)
                                                   Buffers: shared hit=293990 read=103301
                                                   ->  Nested Loop  (cost=0.05..517.43 rows=1 width=18) (actual time=1765.407..166500.010 rows=722 loops=1)
                                                         Join Filter: (it1.id = mi.info_type_id)
                                                         Rows Removed by Join Filter: 1198
                                                         Buffers: shared hit=291541 read=102053
                                                         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=13.196..13.235 rows=1 loops=1)
                                                               Filter: ((info)::text = 'countries'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                                         ->  Nested Loop  (cost=0.05..517.39 rows=1 width=22) (actual time=398.714..166484.375 rows=1920 loops=1)
                                                               Buffers: shared hit=291541 read=102052
                                                               ->  Nested Loop  (cost=0.04..517.23 rows=1 width=14) (actual time=143.009..20294.399 rows=11708 loops=1)
                                                                     Join Filter: (it2.id = mi_idx.info_type_id)
                                                                     Rows Removed by Join Filter: 5851
                                                                     Buffers: shared hit=145680 read=25412
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.052..0.062 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                                                     ->  Nested Loop  (cost=0.04..517.17 rows=88 width=18) (actual time=142.951..20276.851 rows=17559 loops=1)
                                                                           Buffers: shared hit=145679 read=25412
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=106.713..12205.733 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10141 read=16301
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.384..105.493 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=47.275..4024.031 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10133 read=16291
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=0.214..0.215 rows=0 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: (info > '6.5'::text)
                                                                                 Rows Removed by Filter: 2
                                                                                 Buffers: shared hit=135538 read=9111
                                                               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=11.733..12.484 rows=0 loops=11708)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                     Rows Removed by Filter: 91
                                                                     Buffers: shared hit=145861 read=76640
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=11.190..12.815 rows=9 loops=722)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                         Rows Removed by Filter: 12
                                                         Buffers: shared hit=2449 read=1248
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.840..0.840 rows=1 loops=6856)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text <> '[us]'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=26767 read=736
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.006 rows=1 loops=6603)
                                             Buffers: shared hit=6602 read=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.192..1.192 rows=0 loops=6603)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=25818 read=594
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.009..0.009 rows=1 loops=2760)
                                 Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=2759 read=1
                     ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.506..0.541 rows=1 loops=2661)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=9931 read=108
               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=3 width=4) (actual time=0.001..0.003 rows=3 loops=2056)
                     Filter: ((kind)::text <> 'completeverified'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=2056
 Planning Time: 14230.243 ms
 Execution Time: 190996.832 ms

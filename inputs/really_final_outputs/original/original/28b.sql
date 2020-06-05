                                                                                                                 QUERY PLAN                                                                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.95..516.95 rows=1 width=96) (actual time=54170.959..54170.960 rows=1 loops=1)
   Buffers: shared hit=287150 read=27653
   ->  Nested Loop  (cost=0.11..516.95 rows=1 width=42) (actual time=3170.098..54170.633 rows=148 loops=1)
         Join Filter: (it.id = mi.info_type_id)
         Rows Removed by Join Filter: 1
         Buffers: shared hit=287150 read=27653
         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.022..0.038 rows=1 loops=1)
               Filter: ((info)::text = 'countries'::text)
               Rows Removed by Filter: 112
               Buffers: shared hit=1
         ->  Nested Loop  (cost=0.11..516.90 rows=1 width=46) (actual time=3170.071..54170.466 rows=149 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=287149 read=27653
               ->  Nested Loop  (cost=0.09..516.75 rows=1 width=62) (actual time=214.541..46625.372 rows=1387 loops=1)
                     Join Filter: (it.id = mi_idx.info_type_id)
                     Rows Removed by Join Filter: 265
                     Buffers: shared hit=245961 read=26438
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.056..0.061 rows=1 loops=1)
                           Filter: ((info)::text = 'rating'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.09..516.70 rows=1 width=66) (actual time=214.479..46623.981 rows=1652 loops=1)
                           Join Filter: (t.id = mi_idx.movie_id)
                           Buffers: shared hit=245960 read=26438
                           ->  Nested Loop  (cost=0.08..516.68 rows=1 width=52) (actual time=181.967..44581.866 rows=1685 loops=1)
                                 Join Filter: (t.kind_id = kt.id)
                                 Rows Removed by Join Filter: 397
                                 Buffers: shared hit=238984 read=26270
                                 ->  Nested Loop  (cost=0.08..516.65 rows=1 width=56) (actual time=181.950..44571.348 rows=1788 loops=1)
                                       Buffers: shared hit=237196 read=26270
                                       ->  Nested Loop  (cost=0.07..516.60 rows=1 width=31) (actual time=142.159..31827.969 rows=9291 loops=1)
                                             Join Filter: (mc.company_type_id = ct.id)
                                             Buffers: shared hit=201898 read=24375
                                             ->  Nested Loop  (cost=0.07..516.57 rows=1 width=35) (actual time=142.134..31780.643 rows=9291 loops=1)
                                                   Buffers: shared hit=192607 read=24375
                                                   ->  Nested Loop  (cost=0.05..516.38 rows=2 width=20) (actual time=134.630..26567.097 rows=9908 loops=1)
                                                         Buffers: shared hit=153798 read=23514
                                                         ->  Nested Loop  (cost=0.04..516.13 rows=8 width=8) (actual time=102.870..9267.453 rows=3832 loops=1)
                                                               Join Filter: (cc.subject_id = cct.id)
                                                               Rows Removed by Join Filter: 6704
                                                               Buffers: shared hit=140548 read=17344
                                                               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.010 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'crew'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                               ->  Nested Loop  (cost=0.04..516.09 rows=31 width=12) (actual time=67.920..9261.159 rows=10536 loops=1)
                                                                     Join Filter: (cct.id = cc.status_id)
                                                                     Rows Removed by Join Filter: 49536
                                                                     Buffers: shared hit=140547 read=17344
                                                                     ->  Nested Loop  (cost=0.04..516.03 rows=41 width=16) (actual time=67.888..9208.673 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=37.750..7971.242 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=22.807..88.716 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=13.740..2620.072 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.025..0.032 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                                     ->  Materialize  (cost=0.00..0.03 rows=3 width=4) (actual time=0.000..0.001 rows=3 loops=20024)
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.011..0.018 rows=3 loops=1)
                                                                                 Filter: ((kind)::text <> 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 1
                                                                                 Buffers: shared hit=1
                                                         ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=4.013..4.511 rows=3 loops=3832)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                               Rows Removed by Filter: 9
                                                               Buffers: shared hit=13250 read=6170
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.524..0.524 rows=1 loops=9908)
                                                         Index Cond: (id = mc.company_id)
                                                         Filter: ((country_code)::text <> '[us]'::text)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=38809 read=861
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.002..0.002 rows=1 loops=9291)
                                                   Buffers: shared hit=9291
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.370..1.370 rows=0 loops=9291)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=35298 read=1895
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.003 rows=1 loops=1788)
                                       Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=1788
                           ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=1.195..1.210 rows=1 loops=1685)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info > '6.5'::text)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=6976 read=168
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=5.378..5.439 rows=0 loops=1387)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                     Rows Removed by Filter: 336
                     Buffers: shared hit=41188 read=1215
 Planning Time: 14991.796 ms
 Execution Time: 54193.708 ms
(101 rows)


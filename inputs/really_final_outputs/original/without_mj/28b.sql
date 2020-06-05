                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.82..516.82 rows=1 width=96) (actual time=120683.275..120683.276 rows=1 loops=1)
   Buffers: shared hit=592928 read=52020
   ->  Nested Loop  (cost=0.11..516.82 rows=1 width=42) (actual time=3134.421..120682.891 rows=148 loops=1)
         Join Filter: (cc.status_id = cct.id)
         Rows Removed by Join Filter: 572
         Buffers: shared hit=592928 read=52020
         ->  Nested Loop  (cost=0.11..516.79 rows=1 width=46) (actual time=3134.405..120681.683 rows=240 loops=1)
               Join Filter: (mi.info_type_id = it.id)
               Rows Removed by Join Filter: 93
               Buffers: shared hit=592688 read=52020
               ->  Nested Loop  (cost=0.11..516.74 rows=1 width=50) (actual time=3134.375..120677.618 rows=333 loops=1)
                     Join Filter: (kt.id = t.kind_id)
                     Rows Removed by Join Filter: 62
                     Buffers: shared hit=592355 read=52020
                     ->  Nested Loop  (cost=0.11..516.71 rows=1 width=54) (actual time=3115.923..120657.318 rows=359 loops=1)
                           Join Filter: (mi.movie_id = t.id)
                           Buffers: shared hit=591997 read=52019
                           ->  Nested Loop  (cost=0.09..516.66 rows=1 width=53) (actual time=3063.679..114904.644 rows=4494 loops=1)
                                 Buffers: shared hit=574416 read=51612
                                 ->  Nested Loop  (cost=0.08..516.57 rows=1 width=38) (actual time=3028.415..110659.969 rows=4607 loops=1)
                                       Buffers: shared hit=556508 read=51081
                                       ->  Nested Loop  (cost=0.07..516.42 rows=1 width=30) (actual time=416.651..39788.667 rows=13184 loops=1)
                                             Join Filter: (ct.id = mc.company_type_id)
                                             Rows Removed by Join Filter: 2
                                             Buffers: shared hit=185071 read=26877
                                             ->  Nested Loop  (cost=0.07..516.38 rows=1 width=34) (actual time=393.026..39699.985 rows=13184 loops=1)
                                                   Buffers: shared hit=171888 read=26876
                                                   ->  Nested Loop  (cost=0.05..516.35 rows=1 width=22) (actual time=347.893..22217.586 rows=3041 loops=1)
                                                         Join Filter: (it.id = mi_idx.info_type_id)
                                                         Rows Removed by Join Filter: 1120
                                                         Buffers: shared hit=161168 read=21849
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.444..19.448 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                                         ->  Nested Loop  (cost=0.05..516.30 rows=7 width=26) (actual time=328.442..22194.158 rows=4161 loops=1)
                                                               Buffers: shared hit=161168 read=21848
                                                               ->  Nested Loop  (cost=0.04..516.08 rows=10 width=12) (actual time=275.171..11875.281 rows=6216 loops=1)
                                                                     Join Filter: (cct.id = cc.subject_id)
                                                                     Rows Removed by Join Filter: 13808
                                                                     Buffers: shared hit=140536 read=17355
                                                                     ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.123..0.126 rows=1 loops=1)
                                                                           Filter: ((kind)::text = 'crew'::text)
                                                                           Rows Removed by Filter: 3
                                                                           Buffers: shared read=1
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=200.932..11863.019 rows=20024 loops=1)
                                                                           Buffers: shared hit=140536 read=17354
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=64.950..10540.542 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10141 read=16301
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=19.968..69.299 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.186..3482.663 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10133 read=16291
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.026..0.034 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130395 read=1053
                                                               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=1.649..1.658 rows=1 loops=6216)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: (info > '6.5'::text)
                                                                     Rows Removed by Filter: 2
                                                                     Buffers: shared hit=20632 read=4493
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=4.529..5.744 rows=4 loops=3041)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                         Rows Removed by Filter: 13
                                                         Buffers: shared hit=10720 read=5027
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.003..0.003 rows=1 loops=13184)
                                                   Buffers: shared hit=13183 read=1
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=4.931..5.374 rows=0 loops=13184)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                             Rows Removed by Filter: 281
                                             Buffers: shared hit=371437 read=24204
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.919..0.919 rows=1 loops=4607)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text <> '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=17908 read=531
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.279..1.279 rows=0 loops=4494)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=17581 read=407
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.053..0.054 rows=1 loops=359)
                           Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=358 read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.005..0.010 rows=1 loops=333)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 36
                     Buffers: shared hit=333
         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.001..0.002 rows=3 loops=240)
               Filter: ((kind)::text <> 'complete+verified'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=240
 Planning Time: 14180.913 ms
 Execution Time: 120683.766 ms
(99 rows)


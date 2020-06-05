                                                                                                                         QUERY PLAN                                                                                                                          
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=130.49..130.49 rows=1 width=96) (actual time=38463.179..38463.180 rows=1 loops=1)
   Buffers: shared hit=1253259 read=5472
   ->  Nested Loop  (cost=0.16..130.49 rows=1 width=48) (actual time=16549.551..38456.672 rows=16308 loops=1)
         Join Filter: (pi.info_type_id = it3.id)
         Rows Removed by Join Filter: 51519
         Buffers: shared hit=1253259 read=5472
         ->  Nested Loop  (cost=0.16..130.44 rows=1 width=52) (actual time=16357.605..37733.505 rows=67827 loops=1)
               Join Filter: (mi.movie_id = t.id)
               Buffers: shared hit=1185432 read=5472
               ->  Nested Loop  (cost=0.15..130.39 rows=1 width=55) (actual time=16298.024..37316.320 rows=68232 loops=1)
                     Join Filter: (it.id = mi.info_type_id)
                     Buffers: shared hit=912515 read=5461
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.025..0.066 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.15..130.35 rows=1 width=59) (actual time=16297.991..37298.486 rows=68232 loops=1)
                           Join Filter: (mc.movie_id = mi.movie_id)
                           Buffers: shared hit=912514 read=5461
                           ->  Nested Loop  (cost=0.14..130.19 rows=1 width=51) (actual time=3410.998..33217.718 rows=27549 loops=1)
                                 Join Filter: (n.id = an.person_id)
                                 Buffers: shared hit=82766 read=5298
                                 ->  Nested Loop  (cost=0.12..130.16 rows=1 width=63) (actual time=3354.343..32836.120 rows=6535 loops=1)
                                       Join Filter: (ci.role_id = rt.id)
                                       Buffers: shared hit=50513 read=5281
                                       ->  Nested Loop  (cost=0.12..130.13 rows=1 width=67) (actual time=3354.315..32823.975 rows=6535 loops=1)
                                             Join Filter: (n.id = pi.person_id)
                                             Buffers: shared hit=43978 read=5281
                                             ->  Nested Loop  (cost=0.11..129.91 rows=1 width=59) (actual time=3306.892..32560.604 rows=40 loops=1)
                                                   Buffers: shared hit=43665 read=5233
                                                   ->  Nested Loop  (cost=0.10..129.64 rows=1 width=40) (actual time=710.584..27531.516 rows=3237 loops=1)
                                                         Buffers: shared hit=31490 read=4457
                                                         ->  Nested Loop  (cost=0.08..129.46 rows=1 width=28) (actual time=674.415..22215.429 rows=4128 loops=1)
                                                               Join Filter: (mc.movie_id = ci.movie_id)
                                                               Buffers: shared hit=19388 read=3611
                                                               ->  Nested Loop  (cost=0.07..129.20 rows=1 width=12) (actual time=627.557..7206.406 rows=129 loops=1)
                                                                     Buffers: shared hit=2963 read=1032
                                                                     ->  Nested Loop  (cost=0.05..129.14 rows=3 width=16) (actual time=620.266..4236.672 rows=540 loops=1)
                                                                           Join Filter: (cc.subject_id = cct1.id)
                                                                           Rows Removed by Join Filter: 24
                                                                           Buffers: shared hit=1109 read=721
                                                                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.014 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'cast'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared hit=1
                                                                           ->  Nested Loop  (cost=0.05..129.11 rows=11 width=20) (actual time=620.252..4235.989 rows=564 loops=1)
                                                                                 Buffers: shared hit=1108 read=721
                                                                                 ->  Nested Loop  (cost=0.04..129.05 rows=2 width=12) (actual time=586.469..3101.254 rows=25 loops=1)
                                                                                       Join Filter: (cct2.id = cc.status_id)
                                                                                       Rows Removed by Join Filter: 65
                                                                                       Buffers: shared hit=1064 read=635
                                                                                       ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                                                                             Filter: ((kind)::text = 'complete+verified'::text)
                                                                                             Rows Removed by Filter: 3
                                                                                             Buffers: shared hit=1
                                                                                       ->  Nested Loop  (cost=0.04..129.01 rows=10 width=16) (actual time=151.859..3101.094 rows=90 loops=1)
                                                                                             Buffers: shared hit=1063 read=635
                                                                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=55.890..1975.321 rows=414 loops=1)
                                                                                                   Buffers: shared hit=1 read=365
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=14.304..14.307 rows=1 loops=1)
                                                                                                         Index Cond: (keyword = 'computer-animation'::text)
                                                                                                         Buffers: shared read=4
                                                                                                   ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=41.577..1960.089 rows=414 loops=1)
                                                                                                         Index Cond: (keyword_id = k.id)
                                                                                                         Buffers: shared hit=1 read=361
                                                                                             ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=2.315..2.713 rows=0 loops=414)
                                                                                                   Index Cond: (movie_id = mk.movie_id)
                                                                                                   Buffers: shared hit=1062 read=270
                                                                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=35.844..45.354 rows=23 loops=25)
                                                                                       Index Cond: (movie_id = mk.movie_id)
                                                                                       Buffers: shared hit=44 read=86
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=5.496..5.496 rows=0 loops=540)
                                                                           Index Cond: (id = mc.company_id)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=1854 read=311
                                                               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=17.934..116.307 rows=32 loops=129)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                     Rows Removed by Filter: 121
                                                                     Buffers: shared hit=16425 read=2579
                                                         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=1.285..1.285 rows=1 loops=4128)
                                                               Index Cond: (id = ci.person_role_id)
                                                               Buffers: shared hit=12102 read=846
                                                   ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=1.552..1.552 rows=0 loops=3237)
                                                         Index Cond: (id = ci.person_id)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=12175 read=776
                                             ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..0.22 rows=5 width=8) (actual time=6.413..6.515 rows=163 loops=40)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Buffers: shared hit=313 read=48
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=6535)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=6535
                                 ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.03 rows=2 width=4) (actual time=0.041..0.057 rows=4 loops=6535)
                                       Index Cond: (person_id = pi.person_id)
                                       Buffers: shared hit=32253 read=17
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.050..0.147 rows=2 loops=27549)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                 Rows Removed by Filter: 305
                                 Buffers: shared hit=829748 read=163
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.005..0.005 rows=1 loops=68232)
                     Index Cond: (id = mk.movie_id)
                     Filter: ((production_year >= 2000) AND (production_year <= 2010))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=272917 read=11
         ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.003..0.010 rows=1 loops=67827)
               Filter: ((info)::text = 'trivia'::text)
               Rows Removed by Filter: 89
               Buffers: shared hit=67827
 Planning Time: 19978.196 ms
 Execution Time: 38490.909 ms
(115 rows)


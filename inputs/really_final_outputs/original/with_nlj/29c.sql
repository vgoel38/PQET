 Aggregate  (cost=131.56..131.56 rows=1 width=96) (actual time=47002.897..47002.897 rows=1 loops=1)
   Buffers: shared hit=146189 read=7023
   ->  Nested Loop  (cost=0.16..131.56 rows=1 width=48) (actual time=20361.612..46991.108 rows=16308 loops=1)
         Join Filter: (it3.id = pi.info_type_id)
         Rows Removed by Join Filter: 51519
         Buffers: shared hit=146189 read=7023
         ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=13.198..13.231 rows=1 loops=1)
               Filter: ((info)::text = 'trivia'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.16..131.51 rows=1 width=52) (actual time=20347.959..46962.965 rows=67827 loops=1)
               Join Filter: (n.id = pi.person_id)
               Buffers: shared hit=146189 read=7022
               ->  Nested Loop  (cost=0.15..131.30 rows=1 width=60) (actual time=20298.475..46773.186 rows=189 loops=1)
                     Join Filter: (ci.person_id = n.id)
                     Buffers: shared hit=143713 read=6984
                     ->  Nested Loop  (cost=0.14..131.05 rows=1 width=41) (actual time=4384.883..45861.473 rows=3501 loops=1)
                           Join Filter: (rt.id = ci.role_id)
                           Rows Removed by Join Filter: 9751
                           Buffers: shared hit=129842 read=6851
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=4.213..4.220 rows=1 loops=1)
                                 Filter: ((role)::text = 'actress'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.14..131.01 rows=1 width=45) (actual time=4047.464..45851.431 rows=13252 loops=1)
                                 Buffers: shared hit=129842 read=6850
                                 ->  Nested Loop  (cost=0.12..130.95 rows=1 width=41) (actual time=4006.068..39700.959 rows=7517 loops=1)
                                       Buffers: shared hit=100283 read=6236
                                       ->  Nested Loop  (cost=0.11..130.77 rows=1 width=29) (actual time=3977.880..35379.980 rows=8963 loops=1)
                                             Join Filter: (t.id = ci.movie_id)
                                             Buffers: shared hit=70906 read=5545
                                             ->  Nested Loop  (cost=0.09..130.50 rows=1 width=37) (actual time=3867.860..22881.912 rows=337 loops=1)
                                                   Join Filter: (cc.status_id = cct2.id)
                                                   Rows Removed by Join Filter: 593
                                                   Buffers: shared hit=19274 read=3365
                                                   ->  Nested Loop  (cost=0.09..130.47 rows=1 width=41) (actual time=3209.890..22875.479 rows=930 loops=1)
                                                         Buffers: shared hit=18344 read=3365
                                                         ->  Nested Loop  (cost=0.08..130.45 rows=1 width=45) (actual time=3097.509..18900.627 rows=4113 loops=1)
                                                               Join Filter: (t.id = mc.movie_id)
                                                               Buffers: shared hit=2372 read=2846
                                                               ->  Nested Loop  (cost=0.07..130.42 rows=1 width=37) (actual time=3057.061..17187.182 rows=160 loops=1)
                                                                     Join Filter: (it.id = mi.info_type_id)
                                                                     Buffers: shared hit=1707 read=2673
                                                                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.060 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'release dates'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                                                     ->  Nested Loop  (cost=0.07..130.37 rows=1 width=41) (actual time=3057.036..17186.917 rows=160 loops=1)
                                                                           Join Filter: (t.id = mi.movie_id)
                                                                           Buffers: shared hit=1706 read=2673
                                                                           ->  Nested Loop  (cost=0.05..130.22 rows=1 width=33) (actual time=2989.466..9687.297 rows=55 loops=1)
                                                                                 Join Filter: (cct1.id = cc.subject_id)
                                                                                 Rows Removed by Join Filter: 6
                                                                                 Buffers: shared hit=1502 read=1330
                                                                                 ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.127..0.133 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'cast'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared read=1
                                                                                 ->  Nested Loop  (cost=0.05..130.19 rows=1 width=37) (actual time=2989.333..9687.024 rows=61 loops=1)
                                                                                       Join Filter: (t.id = cc.movie_id)
                                                                                       Buffers: shared hit=1502 read=1329
                                                                                       ->  Nested Loop  (cost=0.04..129.99 rows=14 width=25) (actual time=128.549..8833.829 rows=249 loops=1)
                                                                                             Buffers: shared hit=901 read=1122
                                                                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=65.462..2320.895 rows=414 loops=1)
                                                                                                   Buffers: shared read=366
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=15.619..15.622 rows=1 loops=1)
                                                                                                         Index Cond: (keyword = 'computer-animation'::text)
                                                                                                         Buffers: shared read=4
                                                                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=49.834..2304.294 rows=414 loops=1)
                                                                                                         Index Cond: (keyword_id = k.id)
                                                                                                         Buffers: shared read=362
                                                                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=15.725..15.725 rows=1 loops=414)
                                                                                                   Index Cond: (id = mk.movie_id)
                                                                                                   Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                   Rows Removed by Filter: 0
                                                                                                   Buffers: shared hit=901 read=756
                                                                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=3.281..3.420 rows=0 loops=249)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Buffers: shared hit=601 read=207
                                                                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=51.810..136.345 rows=3 loops=55)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                                 Rows Removed by Filter: 267
                                                                                 Buffers: shared hit=204 read=1343
                                                               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=8.330..10.677 rows=26 loops=160)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=665 read=173
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.965..0.965 rows=0 loops=4113)
                                                               Index Cond: (id = mc.company_id)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=15972 read=519
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=930)
                                                         Filter: ((kind)::text = 'completeverified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=930
                                             ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=5.697..37.062 rows=27 loops=337)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 136
                                                   Buffers: shared hit=51632 read=2180
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.480..0.480 rows=1 loops=8963)
                                             Index Cond: (id = ci.person_role_id)
                                             Buffers: shared hit=29377 read=691
                                 ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=0.738..0.816 rows=2 loops=7517)
                                       Index Cond: (person_id = ci.person_id)
                                       Buffers: shared hit=29559 read=614
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.259..0.259 rows=0 loops=3501)
                           Index Cond: (id = an.person_id)
                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=13871 read=133
               ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=0.665..0.843 rows=359 loops=189)
                     Index Cond: (person_id = an.person_id)
                     Buffers: shared hit=2476 read=38
 Planning Time: 19014.877 ms
 Execution Time: 47025.278 ms

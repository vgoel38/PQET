                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34.06..34.06 rows=1 width=96) (actual time=5466.693..5466.693 rows=1 loops=1)
   Buffers: shared hit=2671 read=703
   ->  Nested Loop  (cost=0.14..34.06 rows=1 width=48) (actual time=2717.106..5466.560 rows=45 loops=1)
         Join Filter: (mi.info_type_id = it.id)
         Buffers: shared hit=2671 read=703
         ->  Nested Loop  (cost=0.14..34.01 rows=1 width=52) (actual time=2693.555..5442.417 rows=45 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=2627 read=702
               ->  Nested Loop  (cost=0.12..33.95 rows=1 width=60) (actual time=2649.376..5378.641 rows=9 loops=1)
                     Buffers: shared hit=2587 read=697
                     ->  Nested Loop  (cost=0.11..33.77 rows=1 width=48) (actual time=2618.091..5347.245 rows=9 loops=1)
                           Join Filter: (rt.id = ci.role_id)
                           Buffers: shared hit=2555 read=693
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.093..0.103 rows=1 loops=1)
                                 Filter: ((role)::text = 'actress'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.11..33.73 rows=1 width=52) (actual time=2617.990..5347.122 rows=9 loops=1)
                                 Buffers: shared hit=2555 read=692
                                 ->  Nested Loop  (cost=0.10..33.47 rows=1 width=33) (actual time=1932.917..4650.157 rows=244 loops=1)
                                       Join Filter: (t.id = ci.movie_id)
                                       Buffers: shared hit=1686 read=585
                                       ->  Nested Loop  (cost=0.08..33.21 rows=1 width=37) (actual time=1837.070..3458.828 rows=9 loops=1)
                                             Buffers: shared hit=816 read=390
                                             ->  Nested Loop  (cost=0.07..33.18 rows=2 width=41) (actual time=1715.925..3192.300 rows=162 loops=1)
                                                   Join Filter: (t.id = mk.movie_id)
                                                   Buffers: shared hit=258 read=300
                                                   ->  Nested Loop  (cost=0.05..33.12 rows=1 width=33) (actual time=1683.345..3151.154 rows=5 loops=1)
                                                         Join Filter: (t.id = mi.movie_id)
                                                         Buffers: shared hit=242 read=295
                                                         ->  Nested Loop  (cost=0.04..32.86 rows=1 width=25) (actual time=794.040..2775.888 rows=4 loops=1)
                                                               Buffers: shared hit=224 read=253
                                                               ->  Nested Loop  (cost=0.03..32.15 rows=11 width=4) (actual time=99.445..568.378 rows=99 loops=1)
                                                                     Buffers: shared read=79
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=55.469..55.473 rows=1 loops=1)
                                                                           Index Cond: (name = 'DreamWorks Animation'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..26.02 rows=11 width=8) (actual time=43.967..512.638 rows=99 loops=1)
                                                                           Index Cond: (company_id = cn.id)
                                                                           Buffers: shared read=75
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=22.291..22.291 rows=0 loops=99)
                                                                     Index Cond: (id = mc.movie_id)
                                                                     Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=224 read=174
                                                         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=51.948..93.805 rows=1 loops=4)
                                                               Index Cond: (movie_id = mc.movie_id)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                               Rows Removed by Filter: 70
                                                               Buffers: shared hit=18 read=42
                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=6.528..8.172 rows=32 loops=5)
                                                         Index Cond: (movie_id = mc.movie_id)
                                                         Buffers: shared hit=16 read=5
                                             ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.643..1.643 rows=0 loops=162)
                                                   Index Cond: (id = mk.keyword_id)
                                                   Filter: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=558 read=90
                                       ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=14.726..132.324 rows=27 loops=9)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 91
                                             Buffers: shared hit=870 read=195
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=2.854..2.854 rows=0 loops=244)
                                       Index Cond: (id = ci.person_id)
                                       Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=869 read=107
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=3.484..3.484 rows=1 loops=9)
                           Index Cond: (id = ci.person_role_id)
                           Buffers: shared hit=32 read=4
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=4.917..7.078 rows=5 loops=9)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=40 read=5
         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.533..0.533 rows=1 loops=45)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 15
               Buffers: shared hit=44 read=1
 Planning Time: 10058.338 ms
 Execution Time: 5467.251 ms
(81 rows)


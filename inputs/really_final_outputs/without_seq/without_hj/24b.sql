                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34.11..34.11 rows=1 width=96) (actual time=5452.197..5452.197 rows=1 loops=1)
   Buffers: shared hit=4120 read=721
   ->  Nested Loop  (cost=0.15..34.11 rows=1 width=48) (actual time=2547.615..5452.054 rows=45 loops=1)
         Buffers: shared hit=4120 read=721
         ->  Nested Loop  (cost=0.13..34.08 rows=2 width=52) (actual time=2434.844..5197.383 rows=810 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=966 read=635
               ->  Nested Loop  (cost=0.12..34.02 rows=1 width=64) (actual time=2402.333..5139.417 rows=25 loops=1)
                     Buffers: shared hit=865 read=631
                     ->  Nested Loop  (cost=0.11..34.02 rows=1 width=68) (actual time=2402.271..5139.236 rows=25 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=815 read=631
                           ->  Nested Loop  (cost=0.10..33.76 rows=1 width=60) (actual time=2345.296..4956.721 rows=15 loops=1)
                                 Join Filter: (ci.person_id = n.id)
                                 Buffers: shared hit=613 read=603
                                 ->  Nested Loop  (cost=0.09..33.51 rows=1 width=53) (actual time=2313.837..4809.169 rows=31 loops=1)
                                       Buffers: shared hit=506 read=586
                                       ->  Nested Loop  (cost=0.07..33.49 rows=1 width=49) (actual time=2181.239..4659.311 rows=15 loops=1)
                                             Buffers: shared hit=473 read=573
                                             ->  Nested Loop  (cost=0.07..33.48 rows=1 width=53) (actual time=1630.231..4658.077 rows=54 loops=1)
                                                   Buffers: shared hit=365 read=573
                                                   ->  Nested Loop  (cost=0.06..33.30 rows=1 width=41) (actual time=1610.227..3908.066 rows=57 loops=1)
                                                         Join Filter: (t.id = ci.movie_id)
                                                         Buffers: shared hit=259 read=463
                                                         ->  Nested Loop  (cost=0.04..32.86 rows=1 width=25) (actual time=762.980..2711.598 rows=4 loops=1)
                                                               Buffers: shared hit=226 read=251
                                                               ->  Nested Loop  (cost=0.03..32.15 rows=11 width=4) (actual time=76.737..490.488 rows=99 loops=1)
                                                                     Buffers: shared hit=1 read=78
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=41.092..41.096 rows=1 loops=1)
                                                                           Index Cond: (name = 'DreamWorks Animation'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..26.02 rows=11 width=8) (actual time=35.637..449.114 rows=99 loops=1)
                                                                           Index Cond: (company_id = cn.id)
                                                                           Buffers: shared hit=1 read=74
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=22.428..22.428 rows=0 loops=99)
                                                                     Index Cond: (id = mc.movie_id)
                                                                     Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=225 read=173
                                                         ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=16) (actual time=44.419..299.060 rows=14 loops=4)
                                                               Index Cond: (movie_id = mc.movie_id)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 45
                                                               Buffers: shared hit=33 read=212
                                                   ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=13.149..13.149 rows=1 loops=57)
                                                         Index Cond: (id = ci.person_role_id)
                                                         Buffers: shared hit=106 read=110
                                             ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.016..0.016 rows=0 loops=54)
                                                   Index Cond: (id = ci.role_id)
                                                   Filter: ((role)::text = 'actress'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=108
                                       ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=9.983..9.985 rows=2 loops=15)
                                             Index Cond: (person_id = ci.person_id)
                                             Heap Fetches: 0
                                             Buffers: shared hit=33 read=13
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=4.756..4.756 rows=0 loops=31)
                                       Index Cond: (id = an.person_id)
                                       Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=107 read=17
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=3.812..12.164 rows=2 loops=15)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                 Rows Removed by Filter: 88
                                 Buffers: shared hit=202 read=28
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=25)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'release dates'::text)
                           Buffers: shared hit=50
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=1.307..2.301 rows=32 loops=25)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=101 read=4
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.314..0.314 rows=0 loops=810)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=3154 read=86
 Planning Time: 11185.055 ms
 Execution Time: 5481.920 ms
(81 rows)


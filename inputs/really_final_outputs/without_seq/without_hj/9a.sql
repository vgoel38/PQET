                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=39457.86..39457.86 rows=1 width=96) (actual time=171566.823..171566.823 rows=1 loops=1)
   Buffers: shared hit=1659220 read=102031
   ->  Nested Loop  (cost=0.10..39457.86 rows=1 width=49) (actual time=32144.102..171566.347 rows=121 loops=1)
         Join Filter: (n.id = an.person_id)
         Buffers: shared hit=1659220 read=102031
         ->  Nested Loop  (cost=0.09..39457.80 rows=1 width=41) (actual time=31631.420..170828.020 rows=115 loops=1)
               Buffers: shared hit=1658861 read=101973
               ->  Nested Loop  (cost=0.07..39457.44 rows=2 width=29) (actual time=31617.395..170049.027 rows=125 loops=1)
                     Buffers: shared hit=1658518 read=101856
                     ->  Nested Loop  (cost=0.06..39456.61 rows=5 width=20) (actual time=27163.443..163766.534 rows=329 loops=1)
                           Buffers: shared hit=1657528 read=101526
                           ->  Nested Loop  (cost=0.05..37974.96 rows=5617 width=16) (actual time=308.338..154531.078 rows=79662 loops=1)
                                 Buffers: shared hit=1349618 read=90322
                                 ->  Nested Loop  (cost=0.04..37143.41 rows=15558 width=20) (actual time=303.949..146978.249 rows=86056 loops=1)
                                       Buffers: shared hit=1006423 read=89166
                                       ->  Nested Loop  (cost=0.02..29509.08 rows=72136 width=12) (actual time=120.773..7133.152 rows=276166 loops=1)
                                             Buffers: shared hit=2 read=69446
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.031..0.034 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared hit=1 read=1
                                             ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29497.51 rows=78694 width=16) (actual time=120.734..7016.624 rows=276166 loops=1)
                                                   Index Cond: (role_id = rt.id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 7175807
                                                   Buffers: shared hit=1 read=69445
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=1 width=8) (actual time=0.458..0.505 rows=0 loops=276166)
                                             Index Cond: (movie_id = ci.movie_id)
                                             Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=1006421 read=19720
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.05 rows=1 width=4) (actual time=0.086..0.086 rows=1 loops=86056)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=343195 read=1156
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=4) (actual time=0.115..0.115 rows=0 loops=79662)
                                 Index Cond: (id = ci.person_id)
                                 Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=307910 read=11204
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.17 rows=1 width=21) (actual time=19.093..19.093 rows=0 loops=329)
                           Index Cond: (id = ci.movie_id)
                           Filter: ((production_year >= 2005) AND (production_year <= 2015))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=990 read=330
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=6.224..6.224 rows=1 loops=125)
                     Index Cond: (id = ci.person_role_id)
                     Buffers: shared hit=343 read=117
         ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=20) (actual time=6.168..6.413 rows=1 loops=115)
               Index Cond: (person_id = ci.person_id)
               Buffers: shared hit=359 read=58
 Planning Time: 4560.342 ms
 Execution Time: 171594.333 ms
(53 rows)


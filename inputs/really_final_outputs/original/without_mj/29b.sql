                                                                                                                    QUERY PLAN                                                                                                                     
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13.89..13.89 rows=1 width=96) (actual time=2227.601..2227.602 rows=1 loops=1)
   Buffers: shared hit=1039 read=508
   ->  Nested Loop  (cost=0.16..13.89 rows=1 width=48) (actual time=708.220..2227.536 rows=15 loops=1)
         Buffers: shared hit=1039 read=508
         ->  Nested Loop  (cost=0.15..13.88 rows=1 width=52) (actual time=657.608..1968.527 rows=66 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=812 read=471
               ->  Nested Loop  (cost=0.14..13.84 rows=1 width=68) (actual time=607.097..1910.591 rows=3 loops=1)
                     Join Filter: (n.id = an.person_id)
                     Buffers: shared hit=802 read=466
                     ->  Nested Loop  (cost=0.12..13.82 rows=1 width=80) (actual time=569.784..1868.174 rows=1 loops=1)
                           Join Filter: (it3.id = pi.info_type_id)
                           Rows Removed by Join Filter: 162
                           Buffers: shared hit=802 read=461
                           ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=25.098..25.129 rows=1 loops=1)
                                 Filter: ((info)::text = 'height'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.12..13.77 rows=1 width=84) (actual time=541.802..1842.981 rows=163 loops=1)
                                 Join Filter: (n.id = pi.person_id)
                                 Buffers: shared hit=802 read=460
                                 ->  Nested Loop  (cost=0.11..13.54 rows=1 width=76) (actual time=497.808..1795.957 rows=1 loops=1)
                                       Join Filter: (cc.subject_id = cct.id)
                                       Buffers: shared hit=802 read=447
                                       ->  Nested Loop  (cost=0.11..13.50 rows=1 width=80) (actual time=497.786..1795.934 rows=1 loops=1)
                                             Buffers: shared hit=801 read=447
                                             ->  Nested Loop  (cost=0.10..13.23 rows=1 width=61) (actual time=435.750..1733.897 rows=1 loops=1)
                                                   Buffers: shared hit=801 read=443
                                                   ->  Nested Loop  (cost=0.08..12.87 rows=1 width=49) (actual time=418.163..1562.906 rows=11 loops=1)
                                                         Join Filter: (it.id = mi.info_type_id)
                                                         Buffers: shared hit=789 read=411
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.054 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                                         ->  Nested Loop  (cost=0.08..12.82 rows=1 width=53) (actual time=418.139..1562.827 rows=11 loops=1)
                                                               Join Filter: (t.id = mi.movie_id)
                                                               Buffers: shared hit=788 read=411
                                                               ->  Nested Loop  (cost=0.07..12.67 rows=1 width=45) (actual time=347.261..1360.656 rows=11 loops=1)
                                                                     Join Filter: (rt.id = ci.role_id)
                                                                     Rows Removed by Join Filter: 27
                                                                     Buffers: shared hit=408 read=373
                                                                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=4.191..4.200 rows=1 loops=1)
                                                                           Filter: ((role)::text = 'actress'::text)
                                                                           Rows Removed by Filter: 11
                                                                           Buffers: shared read=1
                                                                     ->  Nested Loop  (cost=0.07..12.63 rows=1 width=49) (actual time=263.315..1356.404 rows=38 loops=1)
                                                                           Join Filter: (t.id = ci.movie_id)
                                                                           Buffers: shared hit=408 read=372
                                                                           ->  Nested Loop  (cost=0.05..12.37 rows=1 width=33) (actual time=217.895..376.853 rows=1 loops=1)
                                                                                 Join Filter: (cc.status_id = cct.id)
                                                                                 Buffers: shared hit=408 read=155
                                                                                 ->  Nested Loop  (cost=0.05..12.34 rows=1 width=37) (actual time=217.553..376.509 rows=1 loops=1)
                                                                                       Join Filter: (t.id = cc.movie_id)
                                                                                       Buffers: shared hit=408 read=154
                                                                                       ->  Nested Loop  (cost=0.04..12.32 rows=1 width=25) (actual time=171.957..330.908 rows=1 loops=1)
                                                                                             Buffers: shared hit=408 read=150
                                                                                             ->  Nested Loop  (cost=0.03..12.29 rows=2 width=29) (actual time=89.059..111.673 rows=136 loops=1)
                                                                                                   Buffers: shared hit=4 read=10
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=45.065..67.428 rows=2 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                                         Rows Removed by Filter: 1
                                                                                                         Buffers: shared read=6
                                                                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..6.16 rows=11 width=8) (actual time=22.001..22.055 rows=68 loops=2)
                                                                                                         Index Cond: (movie_id = t.id)
                                                                                                         Buffers: shared hit=4 read=4
                                                                                             ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.610..1.610 rows=0 loops=136)
                                                                                                   Index Cond: (id = mk.keyword_id)
                                                                                                   Filter: (keyword = 'computer-animation'::text)
                                                                                                   Rows Removed by Filter: 1
                                                                                                   Buffers: shared hit=404 read=140
                                                                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=45.583..45.587 rows=1 loops=1)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Buffers: shared read=4
                                                                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.336..0.337 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete+verified'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared read=1
                                                                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=45.407..979.420 rows=38 loops=1)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                 Rows Removed by Filter: 191
                                                                                 Buffers: shared read=217
                                                               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=6.514..18.370 rows=1 loops=11)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: (info ~~ 'USA:%200%'::text)
                                                                     Rows Removed by Filter: 456
                                                                     Buffers: shared hit=380 read=38
                                                   ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.19 rows=1 width=20) (actual time=15.541..15.541 rows=0 loops=11)
                                                         Index Cond: (id = ci.person_role_id)
                                                         Filter: (name = 'Queen'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=12 read=32
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..0.27 rows=1 width=19) (actual time=62.027..62.027 rows=1 loops=1)
                                                   Index Cond: (id = ci.person_id)
                                                   Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                   Buffers: shared read=4
                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                             Filter: ((kind)::text = 'cast'::text)
                                             Buffers: shared hit=1
                                 ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.23 rows=5 width=8) (actual time=43.981..46.855 rows=163 loops=1)
                                       Index Cond: (person_id = ci.person_id)
                                       Buffers: shared read=13
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.03 rows=2 width=4) (actual time=37.299..42.396 rows=3 loops=1)
                           Index Cond: (person_id = pi.person_id)
                           Buffers: shared read=5
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=16.844..19.275 rows=22 loops=3)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=10 read=5
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=3.922..3.922 rows=0 loops=66)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=227 read=37
 Planning Time: 18816.270 ms
 Execution Time: 2228.575 ms
(117 rows)


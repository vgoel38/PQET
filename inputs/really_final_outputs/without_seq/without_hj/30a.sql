                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=902.03..902.03 rows=1 width=128) (actual time=290829.263..290829.264 rows=1 loops=1)
   Buffers: shared hit=638120 read=73626
   ->  Nested Loop  (cost=0.13..902.03 rows=1 width=80) (actual time=3202.017..290825.603 rows=757 loops=1)
         Buffers: shared hit=638120 read=73626
         ->  Nested Loop  (cost=0.11..901.84 rows=1 width=69) (actual time=3184.524..287674.580 rows=1021 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=634534 read=73128
               ->  Nested Loop  (cost=0.10..901.58 rows=1 width=85) (actual time=2495.657..133352.417 rows=1161 loops=1)
                     Buffers: shared hit=513135 read=46029
                     ->  Nested Loop  (cost=0.09..901.57 rows=1 width=89) (actual time=2495.582..133324.520 rows=3513 loops=1)
                           Join Filter: (t.id = mi_idx.movie_id)
                           Buffers: shared hit=506109 read=46029
                           ->  Nested Loop  (cost=0.08..901.55 rows=1 width=75) (actual time=2453.687..123133.080 rows=1161 loops=1)
                                 Buffers: shared hit=502001 read=45451
                                 ->  Nested Loop  (cost=0.07..901.55 rows=1 width=79) (actual time=2453.658..123120.792 rows=1161 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=499679 read=45451
                                       ->  Nested Loop  (cost=0.06..900.78 rows=5 width=29) (actual time=183.379..48042.455 rows=2027 loops=1)
                                             Buffers: shared hit=460409 read=29641
                                             ->  Nested Loop  (cost=0.05..900.40 rows=9 width=8) (actual time=140.466..13782.099 rows=16336 loops=1)
                                                   Buffers: shared hit=402480 read=22153
                                                   ->  Nested Loop  (cost=0.04..900.32 rows=18 width=12) (actual time=140.442..13701.569 rows=16336 loops=1)
                                                         Buffers: shared hit=369808 read=22153
                                                         ->  Nested Loop  (cost=0.04..900.01 rows=71 width=16) (actual time=111.958..13510.049 rows=36010 loops=1)
                                                               Buffers: shared hit=297788 read=22153
                                                               ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=56.794..11900.218 rows=76714 loops=1)
                                                                     Buffers: shared hit=32400 read=21098
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=33.542..191.758 rows=7 loops=1)
                                                                           Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                           Buffers: shared hit=14 read=17
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.667..1666.367 rows=10959 loops=7)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=32386 read=21081
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.015..0.019 rows=0 loops=76714)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=265388 read=1055
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=36010)
                                                               Index Cond: (id = cc.status_id)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=72020
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=16336)
                                                         Index Cond: (id = cc.subject_id)
                                                         Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                         Buffers: shared hit=32672
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.096..2.096 rows=0 loops=16336)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=57929 read=7488
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=37.014..37.035 rows=1 loops=2027)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 224
                                             Buffers: shared hit=39270 read=15810
                                 ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=1161)
                                       Index Cond: (id = mi.info_type_id)
                                       Filter: ((info)::text = 'genres'::text)
                                       Buffers: shared hit=2322
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=8.727..8.772 rows=3 loops=1161)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=4108 read=578
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=0 loops=3513)
                           Index Cond: (id = mi_idx.info_type_id)
                           Filter: ((info)::text = 'votes'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=7026
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=93.791..132.919 rows=1 loops=1161)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 126
                     Buffers: shared hit=121399 read=27099
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=3.082..3.082 rows=1 loops=1021)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=3586 read=498
 Planning Time: 15794.915 ms
 Execution Time: 290846.516 ms
(79 rows)


                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=901.55..901.55 rows=1 width=128) (actual time=983152.503..983152.504 rows=1 loops=1)
   Buffers: shared hit=2004494 read=207990
   ->  Nested Loop  (cost=0.13..901.55 rows=1 width=80) (actual time=3852.902..983101.101 rows=8024 loops=1)
         Buffers: shared hit=2004494 read=207990
         ->  Nested Loop  (cost=0.12..901.54 rows=1 width=84) (actual time=3852.842..982953.587 rows=24392 loops=1)
               Join Filter: (t.id = mi_idx.movie_id)
               Buffers: shared hit=1955710 read=207990
               ->  Nested Loop  (cost=0.11..901.52 rows=1 width=94) (actual time=3816.697..958992.618 rows=8024 loops=1)
                     Buffers: shared hit=1925262 read=205944
                     ->  Nested Loop  (cost=0.10..901.33 rows=1 width=83) (actual time=605.206..933003.263 rows=11866 loops=1)
                           Join Filter: (mi.movie_id = t.id)
                           Buffers: shared hit=1881540 read=202146
                           ->  Nested Loop  (cost=0.08..901.29 rows=1 width=62) (actual time=551.301..899985.102 rows=11866 loops=1)
                                 Join Filter: (mi.movie_id = ci.movie_id)
                                 Buffers: shared hit=1837055 read=199165
                                 ->  Nested Loop  (cost=0.07..901.02 rows=1 width=54) (actual time=479.000..239592.270 rows=14666 loops=1)
                                       Buffers: shared hit=678281 read=91276
                                       ->  Nested Loop  (cost=0.06..901.01 rows=2 width=58) (actual time=478.957..239408.624 rows=18344 loops=1)
                                             Buffers: shared hit=641593 read=91276
                                             ->  Nested Loop  (cost=0.05..900.40 rows=4 width=8) (actual time=140.489..16648.817 rows=12521 loops=1)
                                                   Buffers: shared hit=420470 read=22153
                                                   ->  Nested Loop  (cost=0.04..900.32 rows=18 width=12) (actual time=112.015..16524.175 rows=25331 loops=1)
                                                         Buffers: shared hit=369808 read=22153
                                                         ->  Nested Loop  (cost=0.04..900.01 rows=71 width=16) (actual time=111.988..16286.373 rows=36010 loops=1)
                                                               Buffers: shared hit=297788 read=22153
                                                               ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=56.819..14576.676 rows=76714 loops=1)
                                                                     Buffers: shared hit=32400 read=21098
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=33.569..193.619 rows=7 loops=1)
                                                                           Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                           Buffers: shared hit=14 read=17
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.665..2047.624 rows=10959 loops=7)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=32386 read=21081
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.016..0.021 rows=0 loops=76714)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=265388 read=1055
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=36010)
                                                               Index Cond: (id = cc.subject_id)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=72020
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=25331)
                                                         Index Cond: (id = cc.status_id)
                                                         Filter: ((kind)::text = 'complete+verified'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=50662
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=16.905..17.788 rows=1 loops=12521)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                                   Rows Removed by Filter: 130
                                                   Buffers: shared hit=221123 read=69123
                                       ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=18344)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=36688
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=36.838..45.026 rows=1 loops=14666)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 83
                                       Buffers: shared hit=1158774 read=107889
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.778..2.778 rows=1 loops=11866)
                                 Index Cond: (id = mk.movie_id)
                                 Buffers: shared hit=44485 read=2981
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.187..2.187 rows=1 loops=11866)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=43722 read=3798
               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=2.972..2.981 rows=3 loops=8024)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=30448 read=2046
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=24392)
               Index Cond: (id = mi_idx.info_type_id)
               Filter: ((info)::text = 'votes'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=48784
 Planning Time: 15656.476 ms
 Execution Time: 983174.893 ms
(79 rows)


 Aggregate  (cost=806.96..806.96 rows=1 width=128) (actual time=16148.266..16148.266 rows=1 loops=1)
   Buffers: shared hit=1558102 read=24211
   ->  Nested Loop  (cost=0.10..806.96 rows=1 width=80) (actual time=10442.084..16148.084 rows=28 loops=1)
         Buffers: shared hit=1558102 read=24211
         ->  Nested Loop  (cost=0.08..806.77 rows=1 width=69) (actual time=10384.752..16003.795 rows=28 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=1558003 read=24198
               ->  Nested Loop  (cost=0.07..806.51 rows=1 width=85) (actual time=9952.016..14658.235 rows=12 loops=1)
                     Join Filter: (it1.id = mi.info_type_id)
                     Buffers: shared hit=1556873 read=24000
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=2.741..2.756 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
                     ->  Nested Loop  (cost=0.07..806.46 rows=1 width=89) (actual time=9949.266..14655.455 rows=12 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Buffers: shared hit=1556873 read=23999
                           ->  Nested Loop  (cost=0.05..806.31 rows=1 width=39) (actual time=9738.356..14197.143 rows=8 loops=1)
                                 Buffers: shared hit=1556620 read=23916
                                 ->  Nested Loop  (cost=0.04..806.28 rows=2 width=43) (actual time=9689.184..13734.169 rows=291 loops=1)
                                       Join Filter: (t.id = mk.movie_id)
                                       Buffers: shared hit=1555714 read=23656
                                       ->  Nested Loop  (cost=0.03..806.18 rows=1 width=35) (actual time=9641.278..13595.440 rows=2 loops=1)
                                             Buffers: shared hit=1555713 read=23647
                                             ->  Nested Loop  (cost=0.01..757.32 rows=448 width=14) (actual time=78.998..2627.760 rows=23558 loops=1)
                                                   Join Filter: (cc.status_id = cct2.id)
                                                   Rows Removed by Join Filter: 71841
                                                   Buffers: shared hit=1475480 read=9525
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=7.397..7.397 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'completeverified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.01..757.02 rows=1794 width=18) (actual time=60.306..2598.211 rows=95399 loops=1)
                                                         Join Filter: (cc.subject_id = cct1.id)
                                                         Rows Removed by Join Filter: 33840
                                                         Buffers: shared hit=1475480 read=9524
                                                         ->  Nested Loop  (cost=0.01..755.52 rows=3587 width=22) (actual time=60.271..2521.679 rows=95399 loops=1)
                                                               Buffers: shared hit=1475479 read=9524
                                                               ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=10) (actual time=10.102..646.074 rows=459925 loops=1)
                                                                     Join Filter: (mi_idx.info_type_id = it2.id)
                                                                     Rows Removed by Join Filter: 920110
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.048..0.052 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'votes'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=10.044..282.576 rows=1380035 loops=1)
                                                                           Buffers: shared read=8453
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.02 rows=1 width=12) (actual time=0.003..0.004 rows=0 loops=459925)
                                                                     Index Cond: (movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=1475478 read=1071
                                                         ->  Materialize  (cost=0.00..0.03 rows=2 width=4) (actual time=0.000..0.000 rows=1 loops=95399)
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.017..0.022 rows=2 loops=1)
                                                                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                     Buffers: shared hit=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.465..0.465 rows=0 loops=23558)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=80233 read=14122
                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=47.519..69.165 rows=146 loops=2)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=1 read=9
                                 ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.589..1.589 rows=0 loops=291)
                                       Index Cond: (id = mk.keyword_id)
                                       Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=906 read=260
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=57.280..57.283 rows=2 loops=8)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                 Rows Removed by Filter: 452
                                 Buffers: shared hit=253 read=83
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=55.643..112.124 rows=2 loops=12)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 107
                     Buffers: shared hit=1130 read=198
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=5.150..5.150 rows=1 loops=28)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=99 read=13
 Planning Time: 14889.404 ms
 Execution Time: 16183.177 ms

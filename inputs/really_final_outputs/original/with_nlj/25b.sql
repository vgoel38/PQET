 Aggregate  (cost=647.40..647.40 rows=1 width=128) (actual time=60410.824..60410.824 rows=1 loops=1)
   Buffers: shared hit=436288 read=47584
   ->  Nested Loop  (cost=0.10..647.40 rows=1 width=80) (actual time=22655.130..60410.724 rows=6 loops=1)
         Buffers: shared hit=436288 read=47584
         ->  Nested Loop  (cost=0.08..647.21 rows=1 width=69) (actual time=22589.265..60309.794 rows=6 loops=1)
               Join Filter: (mi.info_type_id = it1.id)
               Buffers: shared hit=436271 read=47577
               ->  Nested Loop  (cost=0.08..647.16 rows=1 width=73) (actual time=22589.234..60309.690 rows=6 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=436265 read=47577
                     ->  Nested Loop  (cost=0.07..647.01 rows=1 width=43) (actual time=22359.454..60023.332 rows=6 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=436190 read=47544
                           ->  Nested Loop  (cost=0.05..646.75 rows=1 width=35) (actual time=22157.624..59227.381 rows=9 loops=1)
                                 Join Filter: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=436056 read=47453
                                 ->  Nested Loop  (cost=0.04..646.58 rows=4 width=14) (actual time=123.095..22165.079 rows=50760 loops=1)
                                       Join Filter: (mi_idx.info_type_id = it2.id)
                                       Rows Removed by Join Filter: 101960
                                       Buffers: shared hit=250671 read=29549
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=13.451..13.459 rows=1 loops=1)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..646.45 rows=508 width=18) (actual time=109.632..22088.039 rows=152720 loops=1)
                                             Buffers: shared hit=250671 read=29548
                                             ->  Nested Loop  (cost=0.03..642.68 rows=169 width=4) (actual time=73.394..10668.411 rows=62096 loops=1)
                                                   Buffers: shared hit=21669 read=19871
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=28.405..161.677 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=25.483..2094.585 rows=12419 loops=5)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=21659 read=19858
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.178..0.181 rows=2 loops=62096)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=229002 read=9677
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.729..0.729 rows=0 loops=50760)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: ((production_year > 2010) AND (title ~~ 'Vampire%'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=185385 read=17904
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=76.625..88.433 rows=1 loops=9)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 21
                                 Buffers: shared hit=134 read=91
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=47.717..47.719 rows=1 loops=6)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = 'Horror'::text)
                           Rows Removed by Filter: 20
                           Buffers: shared hit=75 read=33
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=6)
                     Filter: ((info)::text = 'genres'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared hit=6
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=16.815..16.815 rows=1 loops=6)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=17 read=7
 Planning Time: 6986.975 ms
 Execution Time: 60478.836 ms

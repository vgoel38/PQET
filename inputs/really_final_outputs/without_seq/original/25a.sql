                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=649.95..649.95 rows=1 width=128) (actual time=1038764.588..1038764.588 rows=1 loops=1)
   Buffers: shared hit=1825891 read=287842
   ->  Nested Loop  (cost=0.11..649.95 rows=1 width=80) (actual time=19978.894..1038725.418 rows=4407 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=1825891 read=287842
         ->  Nested Loop  (cost=0.09..649.91 rows=1 width=79) (actual time=19934.243..1011239.572 rows=4407 loops=1)
               Buffers: shared hit=1810799 read=285303
               ->  Nested Loop  (cost=0.08..649.72 rows=1 width=68) (actual time=3340.276..978814.155 rows=7112 loops=1)
                     Buffers: shared hit=1787307 read=280311
                     ->  Nested Loop  (cost=0.08..649.72 rows=1 width=72) (actual time=3340.234..978715.067 rows=7740 loops=1)
                           Join Filter: (mi.movie_id = ci.movie_id)
                           Buffers: shared hit=1771827 read=280311
                           ->  Nested Loop  (cost=0.06..649.45 rows=1 width=64) (actual time=116.257..239865.847 rows=12260 loops=1)
                                 Join Filter: (mi_idx.movie_id = mi.movie_id)
                                 Buffers: shared hit=1274335 read=158782
                                 ->  Nested Loop  (cost=0.04..648.84 rows=4 width=14) (actual time=46.823..33082.021 rows=50760 loops=1)
                                       Buffers: shared hit=556120 read=29539
                                       ->  Nested Loop  (cost=0.04..646.45 rows=508 width=18) (actual time=46.780..32178.503 rows=152720 loops=1)
                                             Buffers: shared hit=250680 read=29539
                                             ->  Nested Loop  (cost=0.03..642.68 rows=169 width=4) (actual time=46.139..19159.312 rows=62096 loops=1)
                                                   Buffers: shared hit=21673 read=19867
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=22.880..142.048 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.469..3794.035 rows=12419 loops=5)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=21663 read=19854
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.202..0.206 rows=2 loops=62096)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=229007 read=9672
                                       ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=152720)
                                             Index Cond: (id = mi_idx.info_type_id)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=305440
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=4.048..4.072 rows=0 loops=50760)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 56
                                       Buffers: shared hit=718215 read=129243
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=51.578..60.261 rows=1 loops=12260)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 47
                                 Buffers: shared hit=497492 read=121529
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=7740)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=15480
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=4.556..4.556 rows=1 loops=7112)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=23492 read=4992
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=6.230..6.230 rows=1 loops=4407)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=15092 read=2539
 Planning Time: 9771.475 ms
 Execution Time: 1038783.010 ms
(60 rows)


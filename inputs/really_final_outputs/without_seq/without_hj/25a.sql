                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=649.95..649.95 rows=1 width=128) (actual time=1039225.317..1039225.318 rows=1 loops=1)
   Buffers: shared hit=1825891 read=287842
   ->  Nested Loop  (cost=0.11..649.95 rows=1 width=80) (actual time=19947.890..1039186.736 rows=4407 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=1825891 read=287842
         ->  Nested Loop  (cost=0.09..649.91 rows=1 width=79) (actual time=19903.272..1011738.369 rows=4407 loops=1)
               Buffers: shared hit=1810799 read=285303
               ->  Nested Loop  (cost=0.08..649.72 rows=1 width=68) (actual time=3375.951..979263.561 rows=7112 loops=1)
                     Buffers: shared hit=1787307 read=280311
                     ->  Nested Loop  (cost=0.08..649.72 rows=1 width=72) (actual time=3375.907..979164.388 rows=7740 loops=1)
                           Join Filter: (mi.movie_id = ci.movie_id)
                           Buffers: shared hit=1771827 read=280311
                           ->  Nested Loop  (cost=0.06..649.45 rows=1 width=64) (actual time=126.941..240627.578 rows=12260 loops=1)
                                 Join Filter: (mi_idx.movie_id = mi.movie_id)
                                 Buffers: shared hit=1274335 read=158782
                                 ->  Nested Loop  (cost=0.04..648.84 rows=4 width=14) (actual time=57.364..33511.886 rows=50760 loops=1)
                                       Buffers: shared hit=556120 read=29539
                                       ->  Nested Loop  (cost=0.04..646.45 rows=508 width=18) (actual time=57.329..32629.117 rows=152720 loops=1)
                                             Buffers: shared hit=250680 read=29539
                                             ->  Nested Loop  (cost=0.03..642.68 rows=169 width=4) (actual time=56.815..19328.005 rows=62096 loops=1)
                                                   Buffers: shared hit=21673 read=19867
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=33.546..164.258 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.488..3823.478 rows=12419 loops=5)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=21663 read=19854
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.206..0.211 rows=2 loops=62096)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=229007 read=9672
                                       ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=152720)
                                             Index Cond: (id = mi_idx.info_type_id)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=305440
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=4.054..4.079 rows=0 loops=50760)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 56
                                       Buffers: shared hit=718215 read=129243
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=51.555..60.236 rows=1 loops=12260)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 47
                                 Buffers: shared hit=497492 read=121529
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=7740)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=15480
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=4.563..4.563 rows=1 loops=7112)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=23492 read=4992
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=6.222..6.222 rows=1 loops=4407)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=15092 read=2539
 Planning Time: 9775.144 ms
 Execution Time: 1039246.083 ms
(60 rows)


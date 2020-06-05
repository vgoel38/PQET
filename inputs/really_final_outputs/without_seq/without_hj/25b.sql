                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=649.62..649.62 rows=1 width=128) (actual time=60825.813..60825.814 rows=1 loops=1)
   Buffers: shared hit=741749 read=47568
   ->  Nested Loop  (cost=0.11..649.62 rows=1 width=80) (actual time=22713.466..60825.713 rows=6 loops=1)
         Buffers: shared hit=741749 read=47568
         ->  Nested Loop  (cost=0.09..649.43 rows=1 width=69) (actual time=22680.928..60749.803 rows=6 loops=1)
               Buffers: shared hit=741731 read=47562
               ->  Nested Loop  (cost=0.09..649.43 rows=1 width=73) (actual time=22680.878..60749.700 rows=6 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=741719 read=47562
                     ->  Nested Loop  (cost=0.08..649.27 rows=1 width=43) (actual time=22467.778..60462.965 rows=6 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=741643 read=47530
                           ->  Nested Loop  (cost=0.06..649.01 rows=1 width=35) (actual time=22270.958..59663.895 rows=9 loops=1)
                                 Join Filter: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=741507 read=47441
                                 ->  Nested Loop  (cost=0.04..648.84 rows=4 width=14) (actual time=57.345..22276.385 rows=50760 loops=1)
                                       Buffers: shared hit=556120 read=29539
                                       ->  Nested Loop  (cost=0.04..646.45 rows=508 width=18) (actual time=57.297..21665.842 rows=152720 loops=1)
                                             Buffers: shared hit=250680 read=29539
                                             ->  Nested Loop  (cost=0.03..642.68 rows=169 width=4) (actual time=56.795..10730.441 rows=62096 loops=1)
                                                   Buffers: shared hit=21673 read=19867
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=33.524..156.813 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.477..2108.136 rows=12419 loops=5)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=21663 read=19854
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.170..0.174 rows=2 loops=62096)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=229007 read=9672
                                       ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=152720)
                                             Index Cond: (id = mi_idx.info_type_id)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=305440
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.736..0.736 rows=0 loops=50760)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: ((production_year > 2010) AND (title ~~ 'Vampire%'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=185387 read=17902
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=75.123..88.780 rows=1 loops=9)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 21
                                 Buffers: shared hit=136 read=89
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=47.780..47.782 rows=1 loops=6)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = 'Horror'::text)
                           Rows Removed by Filter: 20
                           Buffers: shared hit=76 read=32
               ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=6)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'genres'::text)
                     Buffers: shared hit=12
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=12.647..12.647 rows=1 loops=6)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=18 read=6
 Planning Time: 9829.423 ms
 Execution Time: 60851.152 ms
(60 rows)


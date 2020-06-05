                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=647.39..647.39 rows=1 width=128) (actual time=61732.980..61732.980 rows=1 loops=1)
   Buffers: shared hit=436304 read=47568
   ->  Nested Loop  (cost=0.10..647.39 rows=1 width=80) (actual time=23320.926..61732.906 rows=6 loops=1)
         Buffers: shared hit=436304 read=47568
         ->  Nested Loop  (cost=0.08..647.20 rows=1 width=69) (actual time=23288.399..61673.642 rows=6 loops=1)
               Join Filter: (mi.info_type_id = it.id)
               Buffers: shared hit=436286 read=47562
               ->  Nested Loop  (cost=0.08..647.16 rows=1 width=73) (actual time=23288.367..61673.526 rows=6 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=436280 read=47562
                     ->  Nested Loop  (cost=0.07..647.00 rows=1 width=43) (actual time=23133.586..61461.095 rows=6 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=436204 read=47530
                           ->  Nested Loop  (cost=0.05..646.74 rows=1 width=35) (actual time=22907.109..60591.541 rows=9 loops=1)
                                 Join Filter: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=436068 read=47441
                                 ->  Nested Loop  (cost=0.04..646.57 rows=4 width=14) (actual time=89.850..22518.284 rows=50760 loops=1)
                                       Join Filter: (mi_idx.info_type_id = it.id)
                                       Rows Removed by Join Filter: 101960
                                       Buffers: shared hit=250681 read=29539
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.025 rows=1 loops=1)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.04..646.44 rows=508 width=18) (actual time=89.825..22451.752 rows=152720 loops=1)
                                             Buffers: shared hit=250680 read=29539
                                             ->  Nested Loop  (cost=0.03..642.67 rows=169 width=4) (actual time=89.285..11000.634 rows=62096 loops=1)
                                                   Buffers: shared hit=21673 read=19867
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=74.327..211.981 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                                   ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=11.833..2150.760 rows=12419 loops=5)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=21663 read=19854
                                             ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.178..0.182 rows=2 loops=62096)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=229007 read=9672
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.749..0.749 rows=0 loops=50760)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: ((production_year > 2010) AND (title ~~ 'Vampire%'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=185387 read=17902
                           ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=83.878..96.612 rows=1 loops=9)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 21
                                 Buffers: shared hit=136 read=89
                     ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=35.395..35.398 rows=1 loops=6)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = 'Horror'::text)
                           Rows Removed by Filter: 20
                           Buffers: shared hit=76 read=32
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=6)
                     Filter: ((info)::text = 'genres'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared hit=6
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=9.870..9.870 rows=1 loops=6)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=18 read=6
 Planning Time: 9771.317 ms
 Execution Time: 61733.466 ms
(62 rows)


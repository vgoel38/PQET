                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=647.73..647.73 rows=1 width=128) (actual time=1038424.683..1038424.684 rows=1 loops=1)
   Buffers: shared hit=1512690 read=287864
   ->  Nested Loop  (cost=0.10..647.73 rows=1 width=80) (actual time=20022.285..1038385.548 rows=4407 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=1512690 read=287864
         ->  Nested Loop  (cost=0.08..647.69 rows=1 width=79) (actual time=19977.670..1010973.223 rows=4407 loops=1)
               Buffers: shared hit=1497599 read=285324
               ->  Nested Loop  (cost=0.07..647.50 rows=1 width=68) (actual time=3516.986..978399.619 rows=7112 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 628
                     Buffers: shared hit=1474109 read=280330
                     ->  Nested Loop  (cost=0.07..647.45 rows=1 width=72) (actual time=3516.956..978271.859 rows=7740 loops=1)
                           Join Filter: (mi.movie_id = ci.movie_id)
                           Buffers: shared hit=1466369 read=280330
                           ->  Nested Loop  (cost=0.05..647.19 rows=1 width=64) (actual time=243.012..239487.626 rows=12260 loops=1)
                                 Join Filter: (mi_idx.movie_id = mi.movie_id)
                                 Buffers: shared hit=968882 read=158796
                                 ->  Nested Loop  (cost=0.04..646.58 rows=4 width=14) (actual time=122.524..32482.682 rows=50760 loops=1)
                                       Join Filter: (mi_idx.info_type_id = it.id)
                                       Rows Removed by Join Filter: 101960
                                       Buffers: shared hit=250671 read=29549
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=21.213..21.221 rows=1 loops=1)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..646.45 rows=508 width=18) (actual time=101.299..32366.558 rows=152720 loops=1)
                                             Buffers: shared hit=250671 read=29548
                                             ->  Nested Loop  (cost=0.03..642.68 rows=169 width=4) (actual time=65.066..19117.664 rows=62096 loops=1)
                                                   Buffers: shared hit=21669 read=19871
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=20.069..139.779 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=25.483..3785.711 rows=12419 loops=5)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=21659 read=19858
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.205..0.209 rows=2 loops=62096)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=229002 read=9677
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=4.051..4.076 rows=0 loops=50760)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 56
                                       Buffers: shared hit=718211 read=129247
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=51.549..60.256 rows=1 loops=12260)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 47
                                 Buffers: shared hit=497487 read=121534
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.010 rows=1 loops=7740)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared hit=7740
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=4.576..4.576 rows=1 loops=7112)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=23490 read=4994
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=6.214..6.214 rows=1 loops=4407)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=15091 read=2540
 Planning Time: 7687.860 ms
 Execution Time: 1038425.145 ms
(62 rows)


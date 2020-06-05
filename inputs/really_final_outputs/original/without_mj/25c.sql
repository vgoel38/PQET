                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=903.58..903.58 rows=1 width=128) (actual time=1498144.897..1498144.897 rows=1 loops=1)
   Buffers: shared hit=5958829 read=385881
   ->  Nested Loop  (cost=0.10..903.58 rows=1 width=80) (actual time=1236.957..1498031.496 rows=26153 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=5958829 read=385881
         ->  Nested Loop  (cost=0.08..903.54 rows=1 width=79) (actual time=1182.603..1455343.284 rows=26153 loops=1)
               Buffers: shared hit=5860808 read=379260
               ->  Nested Loop  (cost=0.07..903.35 rows=1 width=68) (actual time=1158.566..1367499.167 rows=42900 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 3794
                     Buffers: shared hit=5701526 read=366731
                     ->  Nested Loop  (cost=0.07..903.30 rows=1 width=72) (actual time=1158.539..1366893.646 rows=46694 loops=1)
                           Join Filter: (mi.movie_id = ci.movie_id)
                           Buffers: shared hit=5654832 read=366731
                           ->  Nested Loop  (cost=0.05..903.04 rows=1 width=64) (actual time=216.885..274066.621 rows=67732 loops=1)
                                 Join Filter: (mi_idx.movie_id = mi.movie_id)
                                 Buffers: shared hit=1261938 read=166825
                                 ->  Nested Loop  (cost=0.04..902.11 rows=6 width=14) (actual time=121.407..35476.178 rows=63701 loops=1)
                                       Join Filter: (mi_idx.info_type_id = it2.id)
                                       Rows Removed by Join Filter: 127988
                                       Buffers: shared hit=318290 read=31134
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=20.094..20.097 rows=1 loops=1)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..901.96 rows=710 width=18) (actual time=101.301..35331.433 rows=191689 loops=1)
                                             Buffers: shared hit=318290 read=31133
                                             ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=65.064..18478.484 rows=76714 loops=1)
                                                   Buffers: shared hit=32396 read=21102
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=20.078..232.309 rows=7 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                         Buffers: shared hit=14 read=17
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=21.391..2597.591 rows=10959 loops=7)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=32382 read=21085
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.211..0.216 rows=2 loops=76714)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=285894 read=10031
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=3.657..3.743 rows=1 loops=63701)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 58
                                       Buffers: shared hit=943648 read=135691
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=14.042..16.131 rows=1 loops=67732)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 65
                                 Buffers: shared hit=4392894 read=199906
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=46694)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared hit=46694
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.045..2.045 rows=1 loops=42900)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=159282 read=12529
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.628..1.628 rows=1 loops=26153)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=98021 read=6621
 Planning Time: 7597.033 ms
 Execution Time: 1498145.747 ms
(62 rows)


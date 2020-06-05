                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=903.57..903.57 rows=1 width=128) (actual time=1602053.467..1602053.468 rows=1 loops=1)
   Buffers: shared hit=5958855 read=385855
   ->  Nested Loop  (cost=0.10..903.57 rows=1 width=80) (actual time=1058.558..1601939.509 rows=26153 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=5958855 read=385855
         ->  Nested Loop  (cost=0.08..903.53 rows=1 width=79) (actual time=1012.537..1557576.285 rows=26153 loops=1)
               Buffers: shared hit=5860832 read=379236
               ->  Nested Loop  (cost=0.07..903.34 rows=1 width=68) (actual time=996.834..1464949.718 rows=42900 loops=1)
                     Join Filter: (mi.info_type_id = it.id)
                     Rows Removed by Join Filter: 3794
                     Buffers: shared hit=5701548 read=366709
                     ->  Nested Loop  (cost=0.07..903.29 rows=1 width=72) (actual time=996.808..1464340.793 rows=46694 loops=1)
                           Join Filter: (mi.movie_id = ci.movie_id)
                           Buffers: shared hit=5654854 read=366709
                           ->  Nested Loop  (cost=0.05..903.03 rows=1 width=64) (actual time=138.476..307786.020 rows=67732 loops=1)
                                 Join Filter: (mi_idx.movie_id = mi.movie_id)
                                 Buffers: shared hit=1261952 read=166811
                                 ->  Nested Loop  (cost=0.04..902.10 rows=6 width=14) (actual time=52.211..35998.262 rows=63701 loops=1)
                                       Join Filter: (mi_idx.info_type_id = it.id)
                                       Rows Removed by Join Filter: 127988
                                       Buffers: shared hit=318300 read=31124
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.024 rows=1 loops=1)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.04..901.95 rows=710 width=18) (actual time=52.185..35871.926 rows=191689 loops=1)
                                             Buffers: shared hit=318299 read=31124
                                             ->  Nested Loop  (cost=0.03..896.68 rows=236 width=4) (actual time=51.691..19486.452 rows=76714 loops=1)
                                                   Buffers: shared hit=32400 read=21098
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=36.749..205.242 rows=7 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                         Buffers: shared hit=14 read=17
                                                   ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=9.660..2745.311 rows=10959 loops=7)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=32386 read=21081
                                             ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.205..0.209 rows=2 loops=76714)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=285899 read=10026
                                 ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=4.179..4.264 rows=1 loops=63701)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 58
                                       Buffers: shared hit=943652 read=135687
                           ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=14.967..17.072 rows=1 loops=67732)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 65
                                 Buffers: shared hit=4392902 read=199898
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=46694)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared hit=46694
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.156..2.156 rows=1 loops=42900)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=159284 read=12527
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.692..1.692 rows=1 loops=26153)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=98023 read=6619
 Planning Time: 9717.276 ms
 Execution Time: 1602053.915 ms
(62 rows)


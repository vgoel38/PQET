                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9625.24..9625.24 rows=1 width=32) (actual time=68779.562..68779.562 rows=1 loops=1)
   Buffers: shared hit=192434 read=29262
   ->  Nested Loop  (cost=0.05..9625.21 rows=364 width=17) (actual time=2867.528..68778.577 rows=206 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=192434 read=29262
         ->  Nested Loop  (cost=0.04..9484.79 rows=905 width=25) (actual time=1186.830..26463.291 rows=2235 loops=1)
               Buffers: shared hit=174678 read=16912
               ->  Nested Loop  (cost=0.03..9388.42 rows=2259 width=4) (actual time=75.928..7061.863 rows=12951 loops=1)
                     Buffers: shared hit=132504 read=7213
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=49.828..583.157 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=11.669..215.525 rows=432 loops=30)
                           Index Cond: (keyword_id = k.id)
                           Buffers: shared hit=1327 read=5781
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.495..1.495 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2005)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42174 read=9699
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=18.093..18.930 rows=0 loops=2235)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
               Rows Removed by Filter: 45
               Buffers: shared hit=17756 read=12350
 Planning Time: 2068.907 ms
 Execution Time: 68780.198 ms
(28 rows)


                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9728.62..9728.62 rows=1 width=32) (actual time=92358.058..92358.059 rows=1 loops=1)
   Buffers: shared hit=243688 read=49538
   ->  Nested Loop  (cost=0.05..9728.40 rows=2873 width=17) (actual time=326.190..92332.383 rows=7250 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=243688 read=49538
         ->  Nested Loop  (cost=0.04..9484.79 rows=1563 width=25) (actual time=81.996..29934.929 rows=7874 loops=1)
               Buffers: shared hit=174659 read=16910
               ->  Nested Loop  (cost=0.03..9388.42 rows=2259 width=4) (actual time=65.343..7268.138 rows=12951 loops=1)
                     Buffers: shared hit=132504 read=7213
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=39.091..652.973 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=11.370..220.080 rows=432 loops=30)
                           Index Cond: (keyword_id = k.id)
                           Buffers: shared hit=1327 read=5781
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.747..1.747 rows=1 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=42155 read=9697
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=7.037..7.921 rows=1 loops=7874)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
               Rows Removed by Filter: 35
               Buffers: shared hit=69029 read=32628
 Planning Time: 2154.816 ms
 Execution Time: 92358.420 ms
(28 rows)


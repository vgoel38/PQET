                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.79..517.79 rows=1 width=96) (actual time=60025.019..60025.019 rows=1 loops=1)
   Buffers: shared hit=695348 read=50670
   ->  Nested Loop  (cost=0.09..517.79 rows=1 width=42) (actual time=10279.437..60024.843 rows=31 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 2
         Buffers: shared hit=695348 read=50670
         ->  Nested Loop  (cost=0.09..517.75 rows=1 width=46) (actual time=10271.322..60016.512 rows=32 loops=1)
               Join Filter: (mi.info_type_id = it.id)
               Rows Removed by Join Filter: 3
               Buffers: shared hit=695317 read=50669
               ->  Nested Loop  (cost=0.09..517.71 rows=1 width=50) (actual time=10271.288..60015.842 rows=35 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=695282 read=50669
                     ->  Nested Loop  (cost=0.08..517.55 rows=1 width=62) (actual time=7873.889..56029.056 rows=55 loops=1)
                           Buffers: shared hit=694871 read=50195
                           ->  Nested Loop  (cost=0.07..517.51 rows=1 width=37) (actual time=262.120..33657.443 rows=48114 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 8
                                 Buffers: shared hit=509513 read=42898
                                 ->  Nested Loop  (cost=0.07..517.48 rows=1 width=41) (actual time=243.114..33472.860 rows=48114 loops=1)
                                       Buffers: shared hit=461400 read=42897
                                       ->  Nested Loop  (cost=0.05..517.38 rows=1 width=26) (actual time=182.040..28997.753 rows=52686 loops=1)
                                             Buffers: shared hit=251474 read=41744
                                             ->  Nested Loop  (cost=0.04..517.29 rows=3 width=14) (actual time=132.930..18507.031 rows=24800 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it.id)
                                                   Rows Removed by Join Filter: 60258
                                                   Buffers: shared hit=145679 read=25413
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.276..23.282 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=345 width=18) (actual time=109.638..18449.349 rows=85058 loops=1)
                                                         Buffers: shared hit=145679 read=25412
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=73.398..11200.159 rows=37091 loops=1)
                                                               Buffers: shared hit=10141 read=16301
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.398..107.074 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.167..3690.446 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10133 read=16291
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.185..0.193 rows=2 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '7.0'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135538 read=9111
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.360..0.421 rows=2 loops=24800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=105795 read=16331
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.083..0.083 rows=1 loops=52686)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=209926 read=1153
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=48114)
                                       Buffers: shared hit=48113 read=1
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.464..0.464 rows=0 loops=48114)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2009)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=185358 read=7297
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=67.374..72.482 rows=1 loops=55)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                           Rows Removed by Filter: 49
                           Buffers: shared hit=411 read=474
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.013 rows=1 loops=35)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 16
                     Buffers: shared hit=35
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.256..0.256 rows=1 loops=32)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=31 read=1
 Planning Time: 8427.390 ms
 Execution Time: 60025.490 ms
(78 rows)


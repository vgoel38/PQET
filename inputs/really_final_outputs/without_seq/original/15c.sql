                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=119448.41..119448.41 rows=1 width=64) (actual time=103384.265..103384.265 rows=1 loops=1)
   Buffers: shared hit=4291697 read=196961
   ->  Nested Loop  (cost=0.90..119448.41 rows=10 width=59) (actual time=1630.501..103380.589 rows=2271 loops=1)
         Buffers: shared hit=4291697 read=196961
         ->  Nested Loop  (cost=0.89..119448.28 rows=10 width=63) (actual time=1611.109..102320.075 rows=2271 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=4285054 read=196788
               ->  Nested Loop  (cost=0.87..119448.22 rows=1 width=75) (actual time=1571.449..100550.544 rows=284 loops=1)
                     Buffers: shared hit=4284126 read=196622
                     ->  Nested Loop  (cost=0.87..119448.21 rows=1 width=79) (actual time=1549.285..100524.828 rows=284 loops=1)
                           Buffers: shared hit=4283842 read=196621
                           ->  Nested Loop  (cost=0.86..119448.16 rows=3 width=83) (actual time=1544.450..96097.496 rows=400 loops=1)
                                 Buffers: shared hit=4282505 read=196349
                                 ->  Nested Loop  (cost=0.84..119448.10 rows=1 width=71) (actual time=1510.739..92745.279 rows=120 loops=1)
                                       Buffers: shared hit=4282166 read=196110
                                       ->  Nested Loop  (cost=0.84..119445.19 rows=89 width=75) (actual time=1510.719..92743.701 rows=120 loops=1)
                                             Buffers: shared hit=4281926 read=196110
                                             ->  Merge Join  (cost=0.83..26476.18 rows=250059 width=25) (actual time=189.301..16822.380 rows=140974 loops=1)
                                                   Merge Cond: (at.movie_id = t.id)
                                                   Buffers: shared hit=2488151 read=43847
                                                   ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..3081.09 rows=361472 width=4) (actual time=5.943..163.277 rows=361472 loops=1)
                                                         Heap Fetches: 0
                                                         Buffers: shared hit=4 read=987
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.080..16001.883 rows=1748412 loops=1)
                                                         Filter: (production_year > 1990)
                                                         Rows Removed by Filter: 777297
                                                         Buffers: shared hit=2488147 read=42860
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=50) (actual time=0.537..0.537 rows=0 loops=140974)
                                                   Index Cond: (movie_id = t.id)
                                                   Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                   Rows Removed by Filter: 38
                                                   Buffers: shared hit=1793775 read=152263
                                       ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=120)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Buffers: shared hit=240
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=23.190..27.924 rows=3 loops=120)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=339 read=239
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=11.063..11.063 rows=1 loops=400)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=1337 read=272
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.085..0.085 rows=1 loops=284)
                           Index Cond: (id = mc.company_type_id)
                           Heap Fetches: 0
                           Buffers: shared hit=284 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=6.209..6.219 rows=8 loops=284)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=928 read=166
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.465..0.465 rows=1 loops=2271)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=6643 read=173
 Planning Time: 9084.847 ms
 Execution Time: 103406.140 ms
(57 rows)


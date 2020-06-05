                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=34771.70..34771.70 rows=1 width=64) (actual time=581878.909..581878.910 rows=1 loops=1)
   Buffers: shared hit=430180 read=92608
   ->  Nested Loop  (cost=0.08..34771.70 rows=4 width=33) (actual time=39544.270..581878.121 rows=104 loops=1)
         Buffers: shared hit=430180 read=92608
         ->  Nested Loop  (cost=0.07..34771.68 rows=4 width=37) (actual time=39519.339..581851.411 rows=104 loops=1)
               Buffers: shared hit=430076 read=92607
               ->  Nested Loop  (cost=0.06..34740.33 rows=8 width=25) (actual time=39503.658..580928.992 rows=112 loops=1)
                     Buffers: shared hit=429794 read=92472
                     ->  Nested Loop  (cost=0.06..34739.86 rows=97 width=29) (actual time=39503.615..580925.931 rows=151 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=429492 read=92472
                           ->  Nested Loop  (cost=0.04..32085.48 rows=6054 width=29) (actual time=217.381..123844.355 rows=4539 loops=1)
                                 Buffers: shared hit=265865 read=16175
                                 ->  Nested Loop  (cost=0.03..31118.77 rows=15111 width=8) (actual time=173.071..38093.334 rows=8790 loops=1)
                                       Buffers: shared hit=238016 read=8835
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=151.009..6488.206 rows=1361 loops=1)
                                             Filter: ((country_code)::text = '[ru]'::text)
                                             Rows Removed by Filter: 233636
                                             Buffers: shared hit=231720 read=3834
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..19.49 rows=11 width=12) (actual time=4.588..23.204 rows=6 loops=1361)
                                             Index Cond: (company_id = cn.id)
                                             Buffers: shared hit=6296 read=5001
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=9.750..9.750 rows=1 loops=8790)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=27849 read=7340
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=94.764..100.696 rows=0 loops=4539)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                 Rows Removed by Filter: 50
                                 Buffers: shared hit=163627 read=76297
                     ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=151)
                           Index Cond: (id = ci.role_id)
                           Filter: ((role)::text = 'actor'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=302
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..3.92 rows=1 width=20) (actual time=8.230..8.230 rows=1 loops=112)
                     Index Cond: (id = ci.person_role_id)
                     Buffers: shared hit=282 read=135
         ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.249..0.249 rows=1 loops=104)
               Index Cond: (id = mc.company_type_id)
               Heap Fetches: 0
               Buffers: shared hit=104 read=1
 Planning Time: 2819.913 ms
 Execution Time: 581965.952 ms
(46 rows)


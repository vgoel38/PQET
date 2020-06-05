                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31240.48..31240.48 rows=1 width=64) (actual time=484926.081..484926.082 rows=1 loops=1)
   Buffers: shared hit=423890 read=113524
   ->  Nested Loop  (cost=4597.47..31240.48 rows=4 width=33) (actual time=35486.229..484925.365 rows=104 loops=1)
         Buffers: shared hit=423890 read=113524
         ->  Nested Loop  (cost=4597.46..31240.46 rows=4 width=37) (actual time=35461.295..484898.795 rows=104 loops=1)
               Buffers: shared hit=423786 read=113523
               ->  Nested Loop  (cost=4597.45..31209.11 rows=8 width=25) (actual time=35445.633..483925.958 rows=112 loops=1)
                     Buffers: shared hit=423504 read=113388
                     ->  Nested Loop  (cost=4597.44..31208.64 rows=97 width=29) (actual time=35445.585..483923.054 rows=151 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=423202 read=113388
                           ->  Nested Loop  (cost=4597.43..28554.26 rows=6054 width=29) (actual time=784.026..45241.115 rows=4539 loops=1)
                                 Buffers: shared hit=259575 read=37091
                                 ->  Hash Join  (cost=4597.41..27587.55 rows=15111 width=8) (actual time=724.172..4341.284 rows=8790 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231726 read=29751
                                       ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=19.394..2534.922 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=25917
                                       ->  Hash  (cost=4597.20..4597.20 rows=1361 width=4) (actual time=704.059..704.059 rows=1361 loops=1)
                                             Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                             Buffers: shared hit=231720 read=3834
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=139.378..703.442 rows=1361 loops=1)
                                                   Filter: ((country_code)::text = '[ru]'::text)
                                                   Rows Removed by Filter: 233636
                                                   Buffers: shared hit=231720 read=3834
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=4.648..4.648 rows=1 loops=8790)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=27849 read=7340
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=91.150..96.643 rows=0 loops=4539)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                 Rows Removed by Filter: 50
                                 Buffers: shared hit=163627 read=76297
                     ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=151)
                           Index Cond: (id = ci.role_id)
                           Filter: ((role)::text = 'actor'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=302
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..3.92 rows=1 width=20) (actual time=8.680..8.680 rows=1 loops=112)
                     Index Cond: (id = ci.person_role_id)
                     Buffers: shared hit=282 read=135
         ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.249..0.249 rows=1 loops=104)
               Index Cond: (id = mc.company_type_id)
               Heap Fetches: 0
               Buffers: shared hit=104 read=1
 Planning Time: 2673.538 ms
 Execution Time: 484992.914 ms
(49 rows)


                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=29606.96..29606.96 rows=1 width=64) (actual time=182274.184..182274.184 rows=1 loops=1)
   Buffers: shared hit=295919 read=62174
   ->  Nested Loop  (cost=4603.59..29606.95 rows=100 width=33) (actual time=182274.166..182274.166 rows=0 loops=1)
         Buffers: shared hit=295919 read=62174
         ->  Nested Loop  (cost=4603.58..29606.52 rows=100 width=37) (actual time=182274.165..182274.165 rows=0 loops=1)
               Buffers: shared hit=295919 read=62174
               ->  Hash Join  (cost=4603.57..29582.84 rows=205 width=25) (actual time=182274.164..182274.164 rows=0 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared hit=295919 read=62174
                     ->  Nested Loop  (cost=4597.44..29576.49 rows=2464 width=29) (actual time=1286.091..182269.433 rows=2614 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=295915 read=62173
                           ->  Nested Loop  (cost=4597.43..28554.26 rows=2341 width=29) (actual time=798.178..36490.929 rows=1259 loops=1)
                                 Buffers: shared hit=259582 read=37092
                                 ->  Hash Join  (cost=4597.41..27587.55 rows=15111 width=8) (actual time=730.566..4141.274 rows=8790 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231723 read=29751
                                       ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=22.114..2399.887 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=25917
                                       ->  Hash  (cost=4597.20..4597.20 rows=1361 width=4) (actual time=707.745..707.745 rows=1361 loops=1)
                                             Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                             Buffers: shared hit=231720 read=3834
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=144.624..707.214 rows=1361 loops=1)
                                                   Filter: ((country_code)::text = '[ru]'::text)
                                                   Rows Removed by Filter: 233636
                                                   Buffers: shared hit=231720 read=3834
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=3.677..3.677 rows=0 loops=8790)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=27859 read=7341
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=66.295..115.781 rows=2 loops=1259)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 44
                                 Buffers: shared hit=36333 read=25081
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.054..0.055 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
                                 Index Cond: ((role)::text = 'actor'::text)
                                 Buffers: shared hit=1 read=1
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.12 rows=1 width=20) (never executed)
                     Index Cond: (id = ci.person_role_id)
         ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (never executed)
               Index Cond: (id = mc.company_type_id)
               Heap Fetches: 0
 Planning Time: 3110.246 ms
 Execution Time: 182337.984 ms
(49 rows)


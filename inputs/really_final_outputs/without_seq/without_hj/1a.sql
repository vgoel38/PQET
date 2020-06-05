                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13229.10..13229.10 rows=1 width=68) (actual time=7269.659..7269.660 rows=1 loops=1)
   Buffers: shared hit=14739 read=13248
   ->  Nested Loop  (cost=0.05..13229.09 rows=42 width=45) (actual time=824.564..7268.853 rows=142 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=14739 read=13248
         ->  Nested Loop  (cost=0.04..13224.52 rows=42 width=32) (actual time=771.137..5830.820 rows=142 loops=1)
               Buffers: shared hit=14386 read=13033
               ->  Nested Loop  (cost=0.03..13223.69 rows=168 width=36) (actual time=771.125..5828.746 rows=147 loops=1)
                     Buffers: shared hit=14092 read=13033
                     ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=4) (actual time=701.312..2910.867 rows=250 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 1379785
                           Buffers: shared hit=13572 read=12221
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.027..1814.698 rows=1380035 loops=1)
                                 Buffers: shared hit=13571 read=12220
                           ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.040..0.042 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'top 250 rank'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=11.581..11.667 rows=1 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=520 read=812
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=147)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=294
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=10.122..10.122 rows=1 loops=142)
               Index Cond: (id = mi_idx.movie_id)
               Buffers: shared hit=353 read=215
 Planning Time: 2330.626 ms
 Execution Time: 7314.363 ms
(35 rows)


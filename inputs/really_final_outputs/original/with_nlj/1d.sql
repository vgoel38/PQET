 Aggregate  (cost=1850.33..1850.33 rows=1 width=68) (actual time=1142.223..1142.223 rows=1 loops=1)
   Buffers: shared hit=20 read=8505
   ->  Nested Loop  (cost=0.03..1849.85 rows=2063 width=45) (actual time=1083.051..1142.139 rows=4 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=20 read=8505
         ->  Nested Loop  (cost=0.01..1438.49 rows=3775 width=32) (actual time=826.946..984.785 rows=5 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=10 read=8495
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.310..0.314 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.01..1436.24 rows=15098 width=36) (actual time=670.248..984.408 rows=100 loops=1)
                     Buffers: shared hit=10 read=8494
                     ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=4) (actual time=626.646..626.686 rows=10 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 1380025
                           Buffers: shared read=8454
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.151..19.152 rows=1 loops=1)
                                 Filter: ((info)::text = 'bottom 10 rank'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=9.135..334.566 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=31.852..35.759 rows=10 loops=10)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=10 read=40
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=31.463..31.463 rows=1 loops=5)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 0
               Buffers: shared hit=10 read=10
 Planning Time: 2074.736 ms
 Execution Time: 1166.201 ms

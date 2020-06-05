 Aggregate  (cost=1441.02..1441.02 rows=1 width=68) (actual time=6617.237..6617.238 rows=1 loops=1)
   Buffers: shared hit=590 read=9289
   ->  Nested Loop  (cost=0.03..1441.02 rows=4 width=45) (actual time=2245.625..6617.164 rows=3 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=590 read=9289
         ->  Nested Loop  (cost=0.01..1438.18 rows=26 width=32) (actual time=793.382..6241.144 rows=23 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Buffers: shared hit=519 read=9268
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.306..0.309 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.01..1438.14 rows=103 width=36) (actual time=793.068..6240.791 rows=23 loops=1)
                     Buffers: shared hit=519 read=9267
                     ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=4) (actual time=626.654..627.723 rows=250 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 1379785
                           Buffers: shared read=8454
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.138..19.141 rows=1 loops=1)
                                 Filter: ((info)::text = 'top 250 rank'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=9.136..347.517 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=22.446..22.447 rows=0 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=519 read=813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=16.344..16.344 rows=0 loops=23)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1
               Buffers: shared hit=71 read=21
 Planning Time: 2113.529 ms
 Execution Time: 6635.776 ms

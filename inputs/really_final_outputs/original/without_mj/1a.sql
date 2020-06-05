                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1355.88..1355.88 rows=1 width=68) (actual time=10939.594..10939.595 rows=1 loops=1)
   Buffers: shared hit=874 read=9484
   ->  Nested Loop  (cost=0.07..1355.87 rows=42 width=45) (actual time=714.074..10938.716 rows=142 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=874 read=9484
         ->  Nested Loop  (cost=0.06..1351.30 rows=42 width=32) (actual time=669.084..7105.801 rows=142 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 5
               Buffers: shared hit=522 read=9268
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.137..0.142 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.06..1351.24 rows=168 width=36) (actual time=668.939..7105.399 rows=147 loops=1)
                     Buffers: shared hit=522 read=9267
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=627.005..628.740 rows=250 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=3 read=8454
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=11.801..332.565 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.502..7.502 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.492..7.494 rows=1 loops=1)
                                       Filter: ((info)::text = 'top 250 rank'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=25.772..25.900 rows=1 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=519 read=813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=26.983..26.983 rows=1 loops=142)
               Index Cond: (id = mi_idx.movie_id)
               Buffers: shared hit=352 read=216
 Planning Time: 2118.533 ms
 Execution Time: 11029.618 ms
(37 rows)


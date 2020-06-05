                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1352.23..1352.23 rows=1 width=68) (actual time=6658.898..6658.899 rows=1 loops=1)
   Buffers: shared hit=593 read=9289
   ->  Nested Loop  (cost=0.07..1352.23 rows=4 width=45) (actual time=2270.685..6658.864 rows=3 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=593 read=9289
         ->  Nested Loop  (cost=0.06..1349.40 rows=26 width=32) (actual time=793.424..6207.856 rows=23 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Buffers: shared hit=522 read=9268
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.131..0.136 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.06..1349.35 rows=103 width=36) (actual time=793.285..6207.678 rows=23 loops=1)
                     Buffers: shared hit=522 read=9267
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=627.026..628.745 rows=250 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=3 read=8454
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=11.834..327.621 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.483..7.483 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.466..7.468 rows=1 loops=1)
                                       Filter: ((info)::text = 'top 250 rank'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=22.310..22.310 rows=0 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=519 read=813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=19.604..19.604 rows=0 loops=23)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1
               Buffers: shared hit=71 read=21
 Planning Time: 2088.964 ms
 Execution Time: 6685.321 ms
(38 rows)


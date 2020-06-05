 Aggregate  (cost=1444.67..1444.67 rows=1 width=68) (actual time=11185.375..11185.376 rows=1 loops=1)
   Buffers: shared hit=871 read=9484
   ->  Nested Loop  (cost=0.03..1444.66 rows=42 width=45) (actual time=793.205..11184.530 rows=142 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=871 read=9484
         ->  Nested Loop  (cost=0.01..1440.09 rows=42 width=32) (actual time=748.202..7288.413 rows=142 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 5
               Buffers: shared hit=519 read=9268
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.148..0.151 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.01..1440.03 rows=168 width=36) (actual time=748.047..7288.010 rows=147 loops=1)
                     Buffers: shared hit=519 read=9267
                     ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=4) (actual time=700.512..701.514 rows=250 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 1379785
                           Buffers: shared read=8454
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=90.119..90.123 rows=1 loops=1)
                                 Filter: ((info)::text = 'top 250 rank'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=9.137..347.207 rows=1380035 loops=1)
                                 Buffers: shared read=8453
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=26.241..26.340 rows=1 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=519 read=813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=27.428..27.428 rows=1 loops=142)
               Index Cond: (id = mi_idx.movie_id)
               Buffers: shared hit=352 read=216
 Planning Time: 2278.460 ms
 Execution Time: 11186.336 ms

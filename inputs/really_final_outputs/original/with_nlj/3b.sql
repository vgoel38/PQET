 Aggregate  (cost=7996.58..7996.58 rows=1 width=32) (actual time=42633.392..42633.393 rows=1 loops=1)
   Buffers: shared hit=45964 read=20183
   ->  Nested Loop  (cost=0.04..7996.58 rows=2 width=17) (actual time=5531.487..42633.296 rows=5 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=45964 read=20183
         ->  Nested Loop  (cost=0.03..7943.01 rows=350 width=25) (actual time=1295.484..22643.646 rows=405 loops=1)
               Buffers: shared hit=43500 read=16434
               ->  Nested Loop  (cost=0.01..7846.64 rows=2259 width=4) (actual time=51.043..6139.874 rows=12951 loops=1)
                     Buffers: shared hit=1324 read=6733
                     ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=7.653..264.869 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared read=949
                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=16.188..195.458 rows=432 loops=30)
                           Index Cond: (keyword_id = k.id)
                           Buffers: shared hit=1324 read=5784
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.272..1.272 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2010)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42176 read=9701
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=49.142..49.354 rows=0 loops=405)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 63
               Buffers: shared hit=2464 read=3749
 Planning Time: 1783.920 ms
 Execution Time: 42666.343 ms

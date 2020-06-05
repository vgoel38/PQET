 Aggregate  (cost=8186.84..8186.84 rows=1 width=32) (actual time=92989.492..92989.493 rows=1 loops=1)
   Buffers: shared hit=112502 read=49064
   ->  Nested Loop  (cost=0.04..8186.62 rows=2873 width=17) (actual time=541.490..92964.286 rows=7250 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=112502 read=49064
         ->  Nested Loop  (cost=0.03..7943.01 rows=1563 width=25) (actual time=263.958..30082.947 rows=7874 loops=1)
               Buffers: shared hit=43477 read=16432
               ->  Nested Loop  (cost=0.01..7846.64 rows=2259 width=4) (actual time=218.248..7515.849 rows=12951 loops=1)
                     Buffers: shared hit=1324 read=6733
                     ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=100.600..355.265 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared read=949
                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=18.657..238.263 rows=432 loops=30)
                           Index Cond: (keyword_id = k.id)
                           Buffers: shared hit=1324 read=5784
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.739..1.739 rows=1 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=42153 read=9699
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=7.040..7.983 rows=1 loops=7874)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
               Rows Removed by Filter: 35
               Buffers: shared hit=69025 read=32632
 Planning Time: 1835.879 ms
 Execution Time: 93019.957 ms

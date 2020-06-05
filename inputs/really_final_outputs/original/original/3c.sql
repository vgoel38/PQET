                                                                     QUERY PLAN                                                                     
----------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1838.31..1838.31 rows=1 width=32) (actual time=90500.060..90500.060 rows=1 loops=1)
   Buffers: shared hit=111192 read=67723
   ->  Nested Loop  (cost=49.50..1838.09 rows=2904 width=17) (actual time=429.798..90474.730 rows=7250 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=111192 read=67723
         ->  Nested Loop  (cost=49.48..1594.48 rows=1563 width=25) (actual time=135.600..27407.414 rows=7874 loops=1)
               Buffers: shared hit=42163 read=35095
               ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=115.549..3279.032 rows=12951 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=8 read=25398
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.005..1680.756 rows=4523930 loops=1)
                           Buffers: shared hit=3 read=24451
                     ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=115.268..115.268 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared hit=2 read=947
                           ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=55.405..115.226 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared hit=2 read=947
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.860..1.860 rows=1 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=42155 read=9697
         ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=7.237..8.006 rows=1 loops=7874)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
               Rows Removed by Filter: 35
               Buffers: shared hit=69029 read=32628
 Planning Time: 2017.869 ms
 Execution Time: 90500.417 ms
(31 rows)


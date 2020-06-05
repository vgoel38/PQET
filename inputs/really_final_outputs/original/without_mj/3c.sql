                                                                     QUERY PLAN                                                                      
-----------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1838.31..1838.31 rows=1 width=32) (actual time=82180.785..82180.785 rows=1 loops=1)
   Buffers: shared hit=111181 read=67734
   ->  Nested Loop  (cost=49.50..1838.09 rows=2873 width=17) (actual time=434.936..82154.872 rows=7250 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=111181 read=67734
         ->  Nested Loop  (cost=49.48..1594.48 rows=1563 width=25) (actual time=149.103..25912.381 rows=7874 loops=1)
               Buffers: shared hit=42156 read=35102
               ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=112.035..3228.650 rows=12951 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=3 read=25403
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=19.998..1615.061 rows=4523930 loops=1)
                           Buffers: shared read=24454
                     ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=91.686..91.687 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared read=949
                           ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.429..91.650 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared read=949
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.749..1.749 rows=1 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=42153 read=9699
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=6.287..7.139 rows=1 loops=7874)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
               Rows Removed by Filter: 35
               Buffers: shared hit=69025 read=32632
 Planning Time: 1887.806 ms
 Execution Time: 82181.130 ms
(31 rows)


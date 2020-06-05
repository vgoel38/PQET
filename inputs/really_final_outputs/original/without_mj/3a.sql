                                                                     QUERY PLAN                                                                      
-----------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1734.93..1734.93 rows=1 width=32) (actual time=58887.002..58887.002 rows=1 loops=1)
   Buffers: shared hit=59928 read=47457
   ->  Nested Loop  (cost=49.50..1734.90 rows=364 width=17) (actual time=3196.734..58886.219 rows=206 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=59928 read=47457
         ->  Nested Loop  (cost=49.48..1594.48 rows=905 width=25) (actual time=1399.365..22178.557 rows=2235 loops=1)
               Buffers: shared hit=42175 read=35104
               ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=119.412..3136.455 rows=12951 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=3 read=25403
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=26.016..1657.174 rows=4523930 loops=1)
                           Buffers: shared read=24454
                     ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=93.023..93.023 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared read=949
                           ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.895..92.980 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared read=949
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.468..1.468 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2005)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42172 read=9701
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=15.799..16.422 rows=0 loops=2235)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
               Rows Removed by Filter: 45
               Buffers: shared hit=17753 read=12353
 Planning Time: 1864.170 ms
 Execution Time: 58896.533 ms
(31 rows)


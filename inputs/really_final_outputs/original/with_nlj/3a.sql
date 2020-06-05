 Aggregate  (cost=8083.46..8083.46 rows=1 width=32) (actual time=67016.200..67016.200 rows=1 loops=1)
   Buffers: shared hit=61249 read=28787
   ->  Nested Loop  (cost=0.04..8083.43 rows=364 width=17) (actual time=2973.282..67015.310 rows=206 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=61249 read=28787
         ->  Nested Loop  (cost=0.03..7943.01 rows=905 width=25) (actual time=1234.229..25338.299 rows=2235 loops=1)
               Buffers: shared hit=43496 read=16434
               ->  Nested Loop  (cost=0.01..7846.64 rows=2259 width=4) (actual time=60.952..6835.446 rows=12951 loops=1)
                     Buffers: shared hit=1324 read=6733
                     ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=17.427..236.449 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared read=949
                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=13.841..219.569 rows=432 loops=30)
                           Index Cond: (keyword_id = k.id)
                           Buffers: shared hit=1324 read=5784
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.426..1.426 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2005)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42172 read=9701
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=17.827..18.645 rows=0 loops=2235)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
               Rows Removed by Filter: 45
               Buffers: shared hit=17753 read=12353
 Planning Time: 1873.230 ms
 Execution Time: 67016.650 ms

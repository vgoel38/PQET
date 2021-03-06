                                                                                    QUERY PLAN                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1037.05..1037.05 rows=1 width=96) (actual time=58677.340..58677.340 rows=1 loops=1)
   Buffers: shared hit=134982 read=33049
   ->  Nested Loop  (cost=0.07..1037.05 rows=1 width=48) (actual time=11804.920..58677.254 rows=12 loops=1)
         Buffers: shared hit=134982 read=33049
         ->  Nested Loop  (cost=0.06..1037.01 rows=2 width=37) (actual time=5915.216..56194.107 rows=383 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=133813 read=32684
               ->  Nested Loop  (cost=0.04..1036.75 rows=1 width=41) (actual time=5880.014..54086.927 rows=36 loops=1)
                     Buffers: shared hit=133555 read=32457
                     ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=20) (actual time=58.951..14285.272 rows=35548 loops=1)
                           Buffers: shared hit=8737 read=14908
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=33.064..251.751 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=32.717..1750.168 rows=4444 loops=8)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=8722 read=14888
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.118..1.118 rows=0 loops=35548)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2014)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=124818 read=17549
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=20.890..58.503 rows=11 loops=36)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=258 read=227
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=6.479..6.479 rows=0 loops=383)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=1169 read=365
 Planning Time: 2859.658 ms
 Execution Time: 58677.898 ms
(32 rows)


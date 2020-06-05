                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=258.91..258.91 rows=1 width=64) (actual time=127476.023..127476.024 rows=1 loops=1)
   Buffers: shared hit=167931 read=102651
   ->  Nested Loop  (cost=0.07..258.91 rows=1 width=23) (actual time=89302.067..127475.984 rows=1 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 1
         Buffers: shared hit=167931 read=102651
         ->  Nested Loop  (cost=0.07..258.87 rows=1 width=27) (actual time=1886.434..127475.955 rows=2 loops=1)
               Join Filter: (mi.movie_id = t.id)
               Buffers: shared hit=167929 read=102651
               ->  Nested Loop  (cost=0.05..258.83 rows=1 width=18) (actual time=117.297..100529.352 rows=5497 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Rows Removed by Join Filter: 3355
                     Buffers: shared hit=152416 read=96152
                     ->  Nested Loop  (cost=0.05..258.78 rows=1 width=22) (actual time=117.271..100334.914 rows=8852 loops=1)
                           Buffers: shared hit=143564 read=96152
                           ->  Nested Loop  (cost=0.04..258.63 rows=1 width=14) (actual time=52.710..8647.197 rows=8561 loops=1)
                                 Join Filter: (mi_idx.info_type_id = it2.id)
                                 Rows Removed by Join Filter: 3535
                                 Buffers: shared hit=67202 read=20833
                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.063 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                                 ->  Nested Loop  (cost=0.04..258.57 rows=55 width=18) (actual time=52.650..8634.351 rows=12096 loops=1)
                                       Buffers: shared hit=67201 read=20833
                                       ->  Nested Loop  (cost=0.03..257.07 rows=67 width=4) (actual time=48.286..4968.070 rows=19528 loops=1)
                                             Buffers: shared hit=10 read=12446
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..12.27 rows=2 width=4) (actual time=42.499..42.525 rows=1 loops=1)
                                                   Index Cond: (keyword = ANY ('{murder,murder-in-title}'::text[]))
                                                   Buffers: shared hit=6 read=4
                                             ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=5.778..4907.524 rows=19528 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=4 read=12442
                                       ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=0.182..0.185 rows=1 loops=19528)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info > '6.0'::text)
                                             Rows Removed by Filter: 2
                                             Buffers: shared hit=67191 read=8387
                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=9.396..10.707 rows=1 loops=8561)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                                 Rows Removed by Filter: 68
                                 Buffers: shared hit=76362 read=75319
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.017 rows=1 loops=8852)
                           Filter: ((info)::text = 'countries'::text)
                           Rows Removed by Filter: 47
                           Buffers: shared hit=8852
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=4.899..4.899 rows=0 loops=5497)
                     Index Cond: (id = mk.movie_id)
                     Filter: ((production_year > 2010) AND ((title ~~ '%murder%'::text) OR (title ~~ '%Murder%'::text) OR (title ~~ '%Mord%'::text)))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=15513 read=6499
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.009 rows=1 loops=2)
               Filter: ((kind)::text = 'movie'::text)
               Rows Removed by Filter: 3
               Buffers: shared hit=2
 Planning Time: 4915.344 ms
 Execution Time: 127498.445 ms
(58 rows)


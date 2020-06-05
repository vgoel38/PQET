                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=800.57..800.57 rows=1 width=64) (actual time=8882.592..8882.592 rows=1 loops=1)
   Buffers: shared hit=4727 read=9501
   ->  Nested Loop  (cost=0.04..800.57 rows=1 width=23) (actual time=4405.796..8882.531 rows=6 loops=1)
         Buffers: shared hit=4727 read=9501
         ->  Nested Loop  (cost=0.03..799.07 rows=105 width=27) (actual time=327.487..8178.161 rows=1070 loops=1)
               Buffers: shared hit=869 read=9068
               ->  Nested Loop  (cost=0.01..795.73 rows=11 width=31) (actual time=68.971..6666.251 rows=72 loops=1)
                     Buffers: shared hit=734 read=8943
                     ->  Nested Loop  (cost=0.00..468.90 rows=69 width=10) (actual time=40.392..1997.911 rows=305 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 7488
                           Buffers: shared hit=3 read=8451
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.021..0.028 rows=1 loops=1)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=7778 width=14) (actual time=0.207..1994.474 rows=7793 loops=1)
                                 Filter: (info > '9.0'::text)
                                 Rows Removed by Filter: 1372242
                                 Buffers: shared hit=2 read=8451
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..4.74 rows=1 width=21) (actual time=15.300..15.300 rows=0 loops=305)
                           Index Cond: (id = mi_idx.movie_id)
                           Filter: (production_year > 2010)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=731 read=492
               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.30 rows=11 width=8) (actual time=20.957..20.981 rows=15 loops=72)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=135 read=125
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.657..0.657 rows=0 loops=1070)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword ~~ '%sequel%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=3858 read=433
 Planning Time: 2203.565 ms
 Execution Time: 8882.933 ms
(35 rows)


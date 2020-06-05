                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.65..517.65 rows=1 width=64) (actual time=207218.550..207218.550 rows=1 loops=1)
   Buffers: shared hit=344219 read=88479
   ->  Nested Loop  (cost=0.07..517.65 rows=1 width=23) (actual time=392.685..207204.041 rows=4115 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 2390
         Buffers: shared hit=344219 read=88479
         ->  Nested Loop  (cost=0.07..517.62 rows=1 width=27) (actual time=263.888..207168.514 rows=5131 loops=1)
               Join Filter: (mi.info_type_id = it.id)
               Rows Removed by Join Filter: 700
               Buffers: shared hit=339088 read=88479
               ->  Nested Loop  (cost=0.07..517.57 rows=1 width=31) (actual time=263.860..207069.703 rows=5831 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=333257 read=88479
                     ->  Nested Loop  (cost=0.05..517.42 rows=1 width=39) (actual time=139.315..67007.508 rows=7271 loops=1)
                           Buffers: shared hit=257487 read=40944
                           ->  Nested Loop  (cost=0.04..517.29 rows=3 width=14) (actual time=116.228..19059.352 rows=31800 loops=1)
                                 Join Filter: (mi_idx.info_type_id = it.id)
                                 Rows Removed by Join Filter: 62852
                                 Buffers: shared hit=145689 read=25403
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.052..0.060 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                                 ->  Nested Loop  (cost=0.04..517.18 rows=395 width=18) (actual time=116.163..19006.740 rows=94652 loops=1)
                                       Buffers: shared hit=145688 read=25403
                                       ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=103.150..11346.210 rows=37091 loops=1)
                                             Buffers: shared hit=10145 read=16297
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=88.197..137.627 rows=3 loops=1)
                                                   Index Cond: ((keyword IS NOT NULL) AND (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[])))
                                                   Buffers: shared hit=8 read=10
                                             ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=13.763..3725.922 rows=12364 loops=3)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=10137 read=16287
                                       ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.198..0.203 rows=3 loops=37091)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info < '8.5'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=135543 read=9106
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.506..1.506 rows=0 loops=31800)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=111798 read=15541
                     ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=17.328..19.259 rows=1 loops=7271)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 63
                           Buffers: shared hit=75770 read=47535
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.012 rows=1 loops=5831)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 20
                     Buffers: shared hit=5831
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.003 rows=1 loops=5131)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=5131
 Planning Time: 4932.718 ms
 Execution Time: 207219.051 ms
(58 rows)


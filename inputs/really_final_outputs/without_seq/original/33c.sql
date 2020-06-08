                                                                                                                     QUERY PLAN                                                                                                                      
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1082.95..1082.95 rows=1 width=192) (actual time=24247.261..24247.262 rows=1 loops=1)
   Buffers: shared hit=650679 read=4893
   ->  Nested Loop  (cost=0.14..1082.95 rows=1 width=84) (actual time=4233.104..24246.948 rows=114 loops=1)
         Join Filter: ((t.id = mi_idx.movie_id) AND (it.id = mi_idx.info_type_id))
         Rows Removed by Join Filter: 20020
         Buffers: shared hit=650679 read=4893
         ->  Nested Loop  (cost=0.12..1082.78 rows=6 width=94) (actual time=678.055..22554.618 rows=15007 loops=1)
               Buffers: shared hit=590282 read=4778
               ->  Nested Loop  (cost=0.11..1082.67 rows=6 width=79) (actual time=678.029..22358.070 rows=15007 loops=1)
                     Buffers: shared hit=530304 read=4728
                     ->  Nested Loop  (cost=0.10..1082.13 rows=6 width=71) (actual time=677.959..20082.161 rows=2996 loops=1)
                           Buffers: shared hit=515992 read=4552
                           ->  Nested Loop  (cost=0.09..1082.04 rows=20 width=75) (actual time=326.444..20068.404 rows=3519 loops=1)
                                 Buffers: shared hit=508954 read=4552
                                 ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.025..0.035 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=2
                                 ->  Nested Loop  (cost=0.09..1072.84 rows=20 width=71) (actual time=326.416..20066.739 rows=3519 loops=1)
                                       Buffers: shared hit=508952 read=4552
                                       ->  Nested Loop  (cost=0.07..931.65 rows=49 width=46) (actual time=229.484..6614.870 rows=7279 loops=1)
                                             Buffers: shared hit=480839 read=3524
                                             ->  Nested Loop  (cost=0.07..930.89 rows=172 width=50) (actual time=229.466..6584.395 rows=7279 loops=1)
                                                   Join Filter: (ml.movie_id = t.id)
                                                   Buffers: shared hit=466281 read=3524
                                                   ->  Nested Loop  (cost=0.06..919.88 rows=172 width=41) (actual time=202.939..4171.968 rows=7279 loops=1)
                                                         Buffers: shared hit=437541 read=3148
                                                         ->  Merge Join  (cost=0.05..914.86 rows=1032 width=45) (actual time=72.908..3901.086 rows=79270 loops=1)
                                                               Merge Cond: (mi_idx.movie_id = ml.movie_id)
                                                               Buffers: shared hit=279001 read=3148
                                                               ->  Nested Loop  (cost=0.04..13743.70 rows=15826 width=33) (actual time=62.492..3709.236 rows=20259 loops=1)
                                                                     Buffers: shared hit=278072 read=2909
                                                                     ->  Nested Loop  (cost=0.03..13218.84 rows=29462 width=18) (actual time=0.036..558.675 rows=47762 loops=1)
                                                                           Buffers: shared hit=88399 read=1461
                                                                           ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.029..206.863 rows=21301 loops=1)
                                                                                 Join Filter: (mi_idx.info_type_id = it.id)
                                                                                 Rows Removed by Join Filter: 42602
                                                                                 Buffers: shared hit=274 read=554
                                                                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.008..133.257 rows=63903 loops=1)
                                                                                       Buffers: shared hit=273 read=553
                                                                                 ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=63903)
                                                                                       Buffers: shared hit=1 read=1
                                                                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.012..0.013 rows=1 loops=1)
                                                                                             Index Cond: ((info)::text = 'rating'::text)
                                                                                             Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=8) (actual time=0.011..0.014 rows=2 loops=21301)
                                                                                 Index Cond: (movie_id = mi_idx.movie_id)
                                                                                 Buffers: shared hit=88125 read=907
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.065..0.065 rows=0 loops=47762)
                                                                           Index Cond: (id = mc.company_id)
                                                                           Filter: ((country_code)::text <> '[us]'::text)
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=189673 read=1448
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.037..123.496 rows=95914 loops=1)
                                                                     Buffers: shared hit=929 read=239
                                                         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=79270)
                                                               Index Cond: (id = ml.link_type_id)
                                                               Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=158540
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.330..0.330 rows=1 loops=7279)
                                                         Index Cond: (id = mc.movie_id)
                                                         Buffers: shared hit=28740 read=376
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=7279)
                                                   Index Cond: (id = t.kind_id)
                                                   Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                   Buffers: shared hit=14558
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..2.88 rows=1 width=25) (actual time=1.847..1.847 rows=0 loops=7279)
                                             Index Cond: (id = ml.linked_movie_id)
                                             Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=28113 read=1028
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=3519)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=7038
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.09 rows=2 width=8) (actual time=0.510..0.757 rows=5 loops=2996)
                           Index Cond: (movie_id = t.id)
                           Buffers: shared hit=14312 read=176
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.012..0.012 rows=1 loops=15007)
                     Index Cond: (id = mc.company_id)
                     Buffers: shared hit=59978 read=50
         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.03 rows=2 width=14) (actual time=0.111..0.112 rows=1 loops=15007)
               Index Cond: (movie_id = mc.movie_id)
               Filter: (info < '3.5'::text)
               Rows Removed by Filter: 2
               Buffers: shared hit=60397 read=115
 Planning Time: 6237.617 ms
 Execution Time: 24247.801 ms
(90 rows)


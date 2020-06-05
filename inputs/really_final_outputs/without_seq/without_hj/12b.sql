                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13679.45..13679.45 rows=1 width=64) (actual time=3116.788..3116.788 rows=1 loops=1)
   Buffers: shared hit=16355 read=12342
   ->  Nested Loop  (cost=0.08..13679.45 rows=1 width=59) (actual time=1047.879..3116.684 rows=10 loops=1)
         Buffers: shared hit=16355 read=12342
         ->  Nested Loop  (cost=0.07..13679.26 rows=40 width=63) (actual time=991.364..3111.102 rows=1210 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=13935 read=12342
               ->  Nested Loop  (cost=0.06..13678.50 rows=3 width=29) (actual time=959.776..2820.165 rows=10 loops=1)
                     Buffers: shared hit=13743 read=12298
                     ->  Nested Loop  (cost=0.05..13678.35 rows=8 width=33) (actual time=911.350..2398.071 rows=33 loops=1)
                           Buffers: shared hit=13653 read=12256
                           ->  Nested Loop  (cost=0.04..13678.29 rows=16 width=37) (actual time=911.307..2397.603 rows=33 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=13587 read=12256
                                 ->  Nested Loop  (cost=0.03..13677.78 rows=7 width=25) (actual time=875.685..2297.202 rows=2 loops=1)
                                       Buffers: shared hit=13585 read=12248
                                       ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=4) (actual time=740.867..1971.295 rows=10 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 1380025
                                             Buffers: shared hit=13572 read=12221
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.029..1107.296 rows=1380035 loops=1)
                                                   Buffers: shared hit=13571 read=12220
                                             ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.054..0.056 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                                         Buffers: shared hit=1 read=1
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=32.584..32.584 rows=0 loops=10)
                                             Index Cond: (id = mi_idx.movie_id)
                                             Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=13 read=27
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=36.033..50.140 rows=16 loops=2)
                                       Index Cond: (movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=2 read=8
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=33)
                                 Index Cond: (id = mc.company_type_id)
                                 Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                                 Buffers: shared hit=66
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=12.788..12.788 rows=0 loops=33)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=90 read=42
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=50) (actual time=7.068..28.991 rows=121 loops=10)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=192 read=44
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=1210)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'budget'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2420
 Planning Time: 5342.437 ms
 Execution Time: 3131.170 ms
(54 rows)


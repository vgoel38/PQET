                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=817214.63..817214.63 rows=1 width=96) (actual time=31092.085..31092.085 rows=1 loops=1)
   Buffers: shared hit=6451699 read=204484
   ->  Merge Join  (cost=793967.63..817214.63 rows=1 width=48) (actual time=29086.312..31092.023 rows=6 loops=1)
         Merge Cond: (mk.movie_id = t.id)
         Buffers: shared hit=6451699 read=204484
         ->  Sort  (cost=793967.44..793967.44 rows=1 width=39) (actual time=20965.538..20965.542 rows=6 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=4140814 read=163838
               ->  Merge Join  (cost=793965.16..793967.44 rows=1 width=39) (actual time=20954.709..20954.720 rows=6 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=4140810 read=163838
                     ->  Sort  (cost=793959.03..793960.16 rows=14655 width=27) (actual time=20922.699..20924.363 rows=6183 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 1171kB
                           Buffers: shared hit=4140810 read=163834
                           ->  Merge Join  (cost=754288.96..793927.53 rows=14655 width=27) (actual time=17786.439..20915.599 rows=10066 loops=1)
                                 Merge Cond: (ci.movie_id = mk.movie_id)
                                 Buffers: shared hit=4140810 read=163834
                                 ->  Sort  (cost=754288.95..754289.22 rows=3479 width=19) (actual time=17618.957..17619.089 rows=486 loops=1)
                                       Sort Key: ci.movie_id
                                       Sort Method: quicksort  Memory: 62kB
                                       Buffers: shared hit=4119269 read=127156
                                       ->  Merge Join  (cost=0.03..754282.59 rows=3479 width=19) (actual time=13763.776..17618.593 rows=486 loops=1)
                                             Merge Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=4119269 read=127156
                                             ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.034..11978.527 rows=4303605 loops=1)
                                                   Buffers: shared hit=180667 read=56474
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=483.416..4337.370 rows=2 loops=1)
                                                   Filter: (name ~~ '%Downey%Robert%'::text)
                                                   Rows Removed by Filter: 4167489
                                                   Buffers: shared hit=3938602 read=70682
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2553.295 rows=4508640 loops=1)
                                       Buffers: shared hit=21541 read=36678
                     ->  Sort  (cost=6.13..6.13 rows=1 width=20) (actual time=27.843..27.843 rows=1 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=27.823..27.826 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=53.113..10079.938 rows=365554 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1980883
               Buffers: shared hit=2310885 read=40646
 Planning Time: 2446.685 ms
 Execution Time: 31110.912 ms
(47 rows)


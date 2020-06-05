                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=817291.43..817291.43 rows=1 width=96) (actual time=31188.698..31188.698 rows=1 loops=1)
   Buffers: shared hit=6451699 read=204484
   ->  Merge Join  (cost=793967.64..817291.43 rows=1 width=48) (actual time=29506.794..31188.633 rows=6 loops=1)
         Merge Cond: (mk.movie_id = t.id)
         Buffers: shared hit=6451699 read=204484
         ->  Sort  (cost=793967.44..793967.44 rows=1 width=39) (actual time=21132.284..21132.290 rows=6 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=4140814 read=163838
               ->  Merge Join  (cost=793965.16..793967.44 rows=1 width=39) (actual time=21121.470..21121.480 rows=6 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=4140810 read=163838
                     ->  Sort  (cost=793959.03..793960.16 rows=14655 width=27) (actual time=21091.916..21093.634 rows=6183 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 1171kB
                           Buffers: shared hit=4140810 read=163834
                           ->  Merge Join  (cost=754288.96..793927.53 rows=14655 width=27) (actual time=17995.860..21085.472 rows=10066 loops=1)
                                 Merge Cond: (ci.movie_id = mk.movie_id)
                                 Buffers: shared hit=4140810 read=163834
                                 ->  Sort  (cost=754288.95..754289.22 rows=3479 width=19) (actual time=17771.239..17771.382 rows=486 loops=1)
                                       Sort Key: ci.movie_id
                                       Sort Method: quicksort  Memory: 62kB
                                       Buffers: shared hit=4119269 read=127156
                                       ->  Merge Join  (cost=0.03..754282.59 rows=3479 width=19) (actual time=13976.770..17770.795 rows=486 loops=1)
                                             Merge Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=4119269 read=127156
                                             ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.037..12189.031 rows=4303605 loops=1)
                                                   Buffers: shared hit=180667 read=56474
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=474.936..4267.966 rows=2 loops=1)
                                                   Filter: (name ~~ '%Downey%Robert%'::text)
                                                   Rows Removed by Filter: 4167489
                                                   Buffers: shared hit=3938602 read=70682
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2562.953 rows=4508640 loops=1)
                                       Buffers: shared hit=21541 read=36678
                     ->  Sort  (cost=6.13..6.13 rows=1 width=20) (actual time=25.296..25.296 rows=1 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=25.274..25.277 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=26.689..9905.958 rows=1300401 loops=1)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 1046036
               Buffers: shared hit=2310885 read=40646
 Planning Time: 2673.451 ms
 Execution Time: 31230.723 ms
(47 rows)


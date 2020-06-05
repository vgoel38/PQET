                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=977310.39..977310.39 rows=1 width=96) (actual time=103564.862..103564.862 rows=1 loops=1)
   Buffers: shared hit=8214910 read=500283
   ->  Merge Join  (cost=929732.90..977309.23 rows=4974 width=48) (actual time=98689.878..103269.501 rows=785477 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=8214910 read=500283
         ->  Sort  (cost=929732.85..929733.23 rows=4974 width=37) (actual time=98663.799..98812.137 rows=785477 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 90473kB
               Buffers: shared hit=4361575 read=431367
               ->  Merge Join  (cost=900771.36..929723.36 rows=4974 width=37) (actual time=80003.375..98327.982 rows=785477 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4361571 read=431367
                     ->  Merge Join  (cost=55568.97..78892.81 rows=148 width=41) (actual time=5336.363..14669.025 rows=14165 loops=1)
                           Merge Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2509805 read=79690
                           ->  Sort  (cost=55568.77..55568.79 rows=270 width=20) (actual time=4855.253..4861.719 rows=35548 loops=1)
                                 Sort Key: mk.movie_id
                                 Sort Method: quicksort  Memory: 3278kB
                                 Buffers: shared hit=21658 read=36830
                                 ->  Merge Join  (cost=54865.94..55568.43 rows=270 width=20) (actual time=4245.504..4842.049 rows=35548 loops=1)
                                       Merge Cond: (k.id = mk.keyword_id)
                                       Buffers: shared hit=21658 read=36830
                                       ->  Sort  (cost=49.06..49.06 rows=8 width=20) (actual time=52.775..52.777 rows=8 loops=1)
                                             Sort Key: k.id
                                             Sort Method: quicksort  Memory: 25kB
                                             Buffers: shared hit=15 read=20
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=25.512..52.713 rows=8 loops=1)
                                                   Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                   Buffers: shared hit=15 read=20
                                       ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=4049.851..4470.727 rows=2796931 loops=1)
                                             Sort Key: mk.keyword_id
                                             Sort Method: quicksort  Memory: 408668kB
                                             Buffers: shared hit=21643 read=36810
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.034..2362.906 rows=4523930 loops=1)
                                                   Buffers: shared hit=21643 read=36810
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=18.911..9654.181 rows=1381079 loops=1)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1144653
                                 Buffers: shared hit=2488147 read=42860
                     ->  Sort  (cost=845202.39..848016.39 rows=36244344 width=8) (actual time=74663.204..79334.076 rows=36443382 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 3271818kB
                           Buffers: shared hit=1851766 read=351677
                           ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.021..54117.584 rows=36244344 loops=1)
                                 Buffers: shared hit=1851766 read=351677
         ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=0.021..3602.288 rows=4061912 loops=1)
               Buffers: shared hit=3853335 read=68916
 Planning Time: 2536.943 ms
 Execution Time: 103726.862 ms
(49 rows)


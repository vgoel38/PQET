                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=817334.36..817334.36 rows=1 width=96) (actual time=29396.303..29396.303 rows=1 loops=1)
   Buffers: shared hit=6623756 read=206699
   ->  Merge Join  (cost=794010.57..817334.36 rows=1 width=48) (actual time=21361.539..29396.146 rows=88 loops=1)
         Merge Cond: (mk.movie_id = t.id)
         Buffers: shared hit=6623756 read=206699
         ->  Sort  (cost=794010.37..794010.37 rows=1 width=39) (actual time=19935.355..19935.393 rows=112 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 33kB
               Buffers: shared hit=4140829 read=163854
               ->  Merge Join  (cost=794008.09..794010.37 rows=1 width=39) (actual time=19927.343..19930.286 rows=112 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=4140825 read=163854
                     ->  Sort  (cost=793959.03..793960.16 rows=14655 width=27) (actual time=19851.715..19853.274 rows=6194 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 1171kB
                           Buffers: shared hit=4140810 read=163834
                           ->  Merge Join  (cost=754288.96..793927.53 rows=14655 width=27) (actual time=16520.985..19845.247 rows=10066 loops=1)
                                 Merge Cond: (ci.movie_id = mk.movie_id)
                                 Buffers: shared hit=4140810 read=163834
                                 ->  Sort  (cost=754288.95..754289.22 rows=3479 width=19) (actual time=16336.590..16336.729 rows=486 loops=1)
                                       Sort Key: ci.movie_id
                                       Sort Method: quicksort  Memory: 62kB
                                       Buffers: shared hit=4119269 read=127156
                                       ->  Merge Join  (cost=0.03..754282.59 rows=3479 width=19) (actual time=12622.577..16336.127 rows=486 loops=1)
                                             Merge Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=4119269 read=127156
                                             ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.036..10902.356 rows=4303605 loops=1)
                                                   Buffers: shared hit=180667 read=56474
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=468.651..4181.245 rows=2 loops=1)
                                                   Filter: (name ~~ '%Downey%Robert%'::text)
                                                   Rows Removed by Filter: 4167489
                                                   Buffers: shared hit=3938602 read=70682
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.020..2759.926 rows=4508640 loops=1)
                                       Buffers: shared hit=21541 read=36678
                     ->  Sort  (cost=49.06..49.06 rows=8 width=20) (actual time=74.984..74.986 rows=8 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=22.702..74.928 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=26.241..9304.584 rows=1378920 loops=1)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 1141453
               Buffers: shared hit=2482927 read=42845
 Planning Time: 2396.068 ms
 Execution Time: 29421.483 ms
(47 rows)


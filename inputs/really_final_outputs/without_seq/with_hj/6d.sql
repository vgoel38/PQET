                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=818788.61..818788.61 rows=1 width=96) (actual time=75619.619..75619.619 rows=1 loops=1)
   Buffers: shared hit=8301879 read=502117
   ->  Hash Join  (cost=111957.26..818788.61 rows=1 width=48) (actual time=27584.378..75619.552 rows=88 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=8301879 read=502117
         ->  Hash Join  (cost=88516.14..795347.49 rows=1 width=39) (actual time=17423.491..65458.614 rows=112 loops=1)
               Hash Cond: (ci.movie_id = mk.movie_id)
               Buffers: shared hit=5812006 read=459209
               ->  Hash Join  (cost=48812.44..755643.39 rows=3479 width=19) (actual time=14638.851..62673.729 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=37.019..48460.179 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=400 width=19) (actual time=4554.577..4554.577 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=517.388..4554.565 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=39703.66..39703.66 rows=270 width=20) (actual time=2784.613..2784.613 rows=35548 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2124kB
                     Buffers: shared hit=21651 read=36837
                     ->  Hash Join  (cost=49.07..39703.66 rows=270 width=20) (actual time=134.259..2770.699 rows=35548 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=21651 read=36837
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=37.593..1904.793 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=95.889..95.890 rows=8 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=15 read=20
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=43.623..95.847 rows=8 loops=1)
                                       Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                       Buffers: shared hit=15 read=20
         ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=21) (actual time=10156.002..10156.002 rows=1381453 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=28.388..9612.580 rows=1381453 loops=1)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 1146859
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 2408.719 ms
 Execution Time: 75621.738 ms
(43 rows)


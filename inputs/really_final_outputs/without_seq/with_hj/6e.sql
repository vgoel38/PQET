                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=818745.65..818745.65 rows=1 width=96) (actual time=75087.733..75087.734 rows=1 loops=1)
   Buffers: shared hit=8301864 read=502101
   ->  Hash Join  (cost=111914.30..818745.65 rows=1 width=48) (actual time=27857.879..75087.698 rows=6 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=8301864 read=502101
         ->  Hash Join  (cost=88473.18..795304.53 rows=1 width=39) (actual time=17302.543..64532.355 rows=6 loops=1)
               Hash Cond: (ci.movie_id = mk.movie_id)
               Buffers: shared hit=5811991 read=459193
               ->  Hash Join  (cost=48812.44..755643.39 rows=3479 width=19) (actual time=14327.965..61557.723 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=38.003..47728.014 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=400 width=19) (actual time=4381.140..4381.140 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=511.030..4381.113 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=39660.73..39660.73 rows=34 width=20) (actual time=2974.418..2974.418 rows=14 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=21636 read=36821
                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=20) (actual time=141.853..2974.378 rows=14 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=21636 read=36821
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=36.736..2117.201 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=44.850..44.850 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=44.833..44.837 rows=1 loops=1)
                                       Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                       Buffers: shared read=4
         ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=21) (actual time=10539.706..10539.706 rows=1381453 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=27.905..9945.682 rows=1381453 loops=1)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 1146859
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 2242.439 ms
 Execution Time: 75112.554 ms
(43 rows)


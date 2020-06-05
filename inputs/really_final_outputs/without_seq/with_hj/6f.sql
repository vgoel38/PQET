                                                                                           QUERY PLAN                                                                                            
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=820344.31..820344.31 rows=1 width=96) (actual time=75798.367..75798.367 rows=1 loops=1)
   Buffers: shared hit=8301879 read=502117
   ->  Hash Join  (cost=112245.36..820343.15 rows=4974 width=48) (actual time=19171.357..75254.372 rows=785477 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=8301879 read=502117
         ->  Hash Join  (cost=63144.84..771242.23 rows=4974 width=37) (actual time=13458.511..68940.428 rows=785477 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=4363278 read=431431
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=45.387..42894.906 rows=36244344 loops=1)
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=63144.80..63144.80 rows=148 width=41) (actual time=13413.074..13413.074 rows=14165 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1135kB
                     Buffers: shared hit=2511521 read=79745
                     ->  Hash Join  (cost=23490.19..63144.80 rows=148 width=41) (actual time=10581.634..13404.989 rows=14165 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2511521 read=79745
                           ->  Hash Join  (cost=49.07..39703.66 rows=270 width=20) (actual time=129.232..2933.806 rows=35548 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21651 read=36837
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=32.442..2065.308 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=95.870..95.870 rows=8 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=15 read=20
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=43.619..95.823 rows=8 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                             Buffers: shared hit=15 read=20
                           ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=21) (actual time=10440.948..10440.948 rows=1381453 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=42.630..9852.071 rows=1381453 loops=1)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1146859
                                       Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=48488.80..48488.80 rows=4167491 width=19) (actual time=5703.063..5703.063 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=21.848..4136.028 rows=4167491 loops=1)
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 2175.153 ms
 Execution Time: 75804.246 ms
(41 rows)


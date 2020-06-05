                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20498.76..20498.76 rows=1 width=96) (actual time=18272.110..18272.110 rows=1 loops=1)
   Buffers: shared hit=27 read=368730
   ->  Hash Join  (cost=5845.05..20497.60 rows=4974 width=48) (actual time=6059.239..17989.752 rows=785477 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=27 read=368730
         ->  Hash Join  (cost=3200.78..17852.93 rows=4974 width=37) (actual time=3163.388..14737.756 rows=785477 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=23 read=313118
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.007..5098.383 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=3200.76..3200.76 rows=148 width=41) (actual time=3163.355..3163.355 rows=14165 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1135kB
                     Buffers: shared hit=19 read=60468
                     ->  Hash Join  (cost=1752.09..3200.76 rows=148 width=41) (actual time=2024.671..3157.825 rows=14165 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=19 read=60468
                           ->  Hash Join  (cost=49.06..1497.70 rows=270 width=20) (actual time=113.532..1230.898 rows=35548 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=18 read=24471
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.004..535.395 rows=4523930 loops=1)
                                       Buffers: shared hit=3 read=24451
                                 ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=92.407..92.408 rows=8 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=15 read=20
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=40.171..92.359 rows=8 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                             Buffers: shared hit=15 read=20
                           ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1896.487..1896.487 rows=1381453 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=5.656..1311.983 rows=1381453 loops=1)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1146859
                                       Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2885.762..2885.762 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=13.315..1492.501 rows=4167491 loops=1)
                     Buffers: shared hit=1 read=55612
 Planning Time: 2756.831 ms
 Execution Time: 18277.918 ms
(41 rows)


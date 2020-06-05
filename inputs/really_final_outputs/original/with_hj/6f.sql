                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20498.76..20498.76 rows=1 width=96) (actual time=19064.451..19064.452 rows=1 loops=1)
   Buffers: shared hit=18 read=368739
   ->  Hash Join  (cost=5845.05..20497.60 rows=4974 width=48) (actual time=5834.389..18777.900 rows=785477 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=18 read=368739
         ->  Hash Join  (cost=3200.78..17852.93 rows=4974 width=37) (actual time=2988.649..15571.505 rows=785477 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=15 read=313126
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=5.927..5956.639 rows=36244344 loops=1)
                     Buffers: shared read=252654
               ->  Hash  (cost=3200.76..3200.76 rows=148 width=41) (actual time=2982.662..2982.662 rows=14165 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1135kB
                     Buffers: shared hit=15 read=60472
                     ->  Hash Join  (cost=1752.09..3200.76 rows=148 width=41) (actual time=1844.496..2977.106 rows=14165 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=15 read=60472
                           ->  Hash Join  (cost=49.06..1497.70 rows=270 width=20) (actual time=103.867..1220.710 rows=35548 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=15 read=24474
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.457..517.789 rows=4523930 loops=1)
                                       Buffers: shared read=24454
                                 ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=95.834..95.835 rows=8 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=15 read=20
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=43.586..95.798 rows=8 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                             Buffers: shared hit=15 read=20
                           ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1732.409..1732.409 rows=1381453 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=24.305..1151.021 rows=1381453 loops=1)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1146859
                                       Buffers: shared read=35998
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2819.223..2819.223 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=21.981..1414.559 rows=4167491 loops=1)
                     Buffers: shared read=55613
 Planning Time: 2246.993 ms
 Execution Time: 19088.897 ms
(41 rows)


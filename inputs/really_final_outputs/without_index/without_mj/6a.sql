                                                                       QUERY PLAN                                                                        
---------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18824.28..18824.28 rows=1 width=96) (actual time=20052.423..20052.423 rows=1 loops=1)
   Buffers: shared hit=159822 read=367680
   ->  Nested Loop  (cost=2405.64..18824.28 rows=1 width=48) (actual time=6420.182..20052.381 rows=6 loops=1)
         Join Filter: (mk.movie_id = t.id)
         Rows Removed by Join Filter: 2125881
         Buffers: shared hit=159822 read=367680
         ->  Nested Loop  (cost=2405.64..17266.53 rows=1 width=39) (actual time=5114.199..16915.908 rows=6 loops=1)
               Join Filter: (ci.movie_id = mk.movie_id)
               Rows Removed by Join Filter: 6798
               Buffers: shared hit=3 read=333670
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3864.344..15665.052 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=3 read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=23.423..7317.390 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2735.182..2735.182 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=315.674..2735.167 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared read=55613
               ->  Materialize  (cost=49.46..1498.11 rows=34 width=20) (actual time=0.269..2.572 rows=14 loops=486)
                     Buffers: shared read=25403
                     ->  Hash Join  (cost=49.46..1498.10 rows=34 width=20) (actual time=130.642..1249.633 rows=14 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.930..547.014 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=1 width=20) (actual time=83.403..83.403 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=20) (actual time=20.824..83.389 rows=1 loops=1)
                                       Filter: (keyword = 'marvel-cinematic-universe'::text)
                                       Rows Removed by Filter: 134169
                                       Buffers: shared read=949
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=0.606..486.111 rows=354314 loops=6)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1904581
               Buffers: shared hit=159819 read=34010
 Planning Time: 2018.270 ms
 Execution Time: 20053.249 ms
(42 rows)


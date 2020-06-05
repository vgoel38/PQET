                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20777.43..20777.43 rows=1 width=32) (actual time=19554.494..19554.494 rows=1 loops=1)
   Buffers: shared hit=19 read=391435
   ->  Hash Join  (cost=6847.91..20777.40 rows=279 width=15) (actual time=6730.928..19381.109 rows=1113120 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=19 read=391435
         ->  Hash Join  (cost=2434.93..15820.63 rows=4669158 width=19) (actual time=2609.589..14085.660 rows=4857682 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.006..4922.907 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2356.12..2356.12 rows=536875 width=19) (actual time=2606.944..2606.944 rows=536716 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 36076kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=536875 width=19) (actual time=10.375..2358.014 rows=536716 loops=1)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 3630775
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=4412.96..4412.96 rows=189 width=12) (actual time=4121.280..4121.280 rows=148552 loops=1)
               Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8432kB
               Buffers: shared hit=11 read=83173
               ->  Hash Join  (cost=3339.33..4412.96 rows=189 width=12) (actual time=3181.262..4079.334 rows=148552 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=11 read=83173
                     ->  Hash Join  (cost=3194.67..4268.29 rows=190 width=16) (actual time=2973.248..3805.765 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=9 read=80181
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..350.389 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=3194.67..3194.67 rows=34 width=8) (actual time=2968.372..2968.372 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=6 read=61395
                                 ->  Hash Join  (cost=1498.11..3194.67 rows=34 width=8) (actual time=1256.891..2949.084 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=6 read=61395
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=9.940..972.481 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1246.859..1246.859 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=5 read=25398
                                             ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=87.300..1236.053 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=5 read=25398
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..534.536 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=87.217..87.217 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2 read=947
                                                         ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=26.975..87.205 rows=1 loops=1)
                                                               Filter: (keyword = 'character-name-in-title'::text)
                                                               Rows Removed by Filter: 134169
                                                               Buffers: shared hit=2 read=947
                     ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=207.332..207.332 rows=234997 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 10310kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=8.591..134.224 rows=234997 loops=1)
                                 Buffers: shared hit=2 read=2992
 Planning Time: 5309.119 ms
 Execution Time: 19556.030 ms
(58 rows)


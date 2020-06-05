                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22209.30..22209.30 rows=1 width=64) (actual time=19307.868..19307.868 rows=1 loops=1)
   Buffers: shared hit=23 read=402826
   ->  Hash Join  (cost=7556.21..22209.26 rows=253 width=33) (actual time=7373.275..19209.186 rows=319932 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=23 read=402826
         ->  Hash Join  (cost=7004.16..21656.32 rows=293 width=25) (actual time=6806.804..18541.435 rows=221609 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=18 read=391433
               ->  Hash Join  (cost=4359.89..19012.02 rows=293 width=21) (actual time=4177.416..15830.741 rows=221609 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=16 read=335822
                     ->  Hash Join  (cost=4219.03..18871.10 rows=810 width=25) (actual time=3990.978..15539.479 rows=329808 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=14 read=332830
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.007..5371.145 rows=36244344 loops=1)
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=4219.02..4219.02 rows=71 width=33) (actual time=3990.848..3990.848 rows=11406 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 941kB
                                 Buffers: shared hit=10 read=80180
                                 ->  Hash Join  (cost=3145.41..4219.02 rows=71 width=33) (actual time=2962.046..3986.549 rows=11406 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=10 read=80180
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.004..575.201 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=3145.40..3145.40 rows=13 width=25) (actual time=2955.993..2955.993 rows=6926 loops=1)
                                             Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 499kB
                                             Buffers: shared hit=7 read=61394
                                             ->  Hash Join  (cost=1498.11..3145.40 rows=13 width=25) (actual time=1244.755..2951.916 rows=6926 loops=1)
                                                   Hash Cond: (t.id = mk.movie_id)
                                                   Buffers: shared hit=7 read=61394
                                                   ->  Seq Scan on title t  (cost=0.00..1500.26 rows=946906 width=21) (actual time=0.007..1461.783 rows=946906 loops=1)
                                                         Filter: (episode_nr < 100)
                                                         Rows Removed by Filter: 1581406
                                                         Buffers: shared hit=2 read=35996
                                                   ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1244.678..1244.678 rows=41840 loops=1)
                                                         Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                                         Buffers: shared hit=5 read=25398
                                                         ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=85.362..1234.337 rows=41840 loops=1)
                                                               Hash Cond: (mk.keyword_id = k.id)
                                                               Buffers: shared hit=5 read=25398
                                                               ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.005..559.366 rows=4523930 loops=1)
                                                                     Buffers: shared hit=3 read=24451
                                                               ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=85.310..85.311 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=2 read=947
                                                                     ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=24.847..85.287 rows=1 loops=1)
                                                                           Filter: (keyword = 'character-name-in-title'::text)
                                                                           Rows Removed by Filter: 134169
                                                                           Buffers: shared hit=2 read=947
                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=186.084..186.084 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.704..157.300 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2618.502..2618.502 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=4.827..1355.089 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=563.905..563.905 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.007..290.673 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7489.285 ms
 Execution Time: 19313.388 ms
(68 rows)


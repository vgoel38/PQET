                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22213.85..22213.85 rows=1 width=64) (actual time=21434.149..21434.149 rows=1 loops=1)
   Buffers: shared hit=20 read=401884
   ->  Hash Join  (cost=7559.21..22213.75 rows=686 width=33) (actual time=7584.903..20638.801 rows=3710592 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=20 read=401884
         ->  Hash Join  (cost=7007.17..21659.30 rows=789 width=25) (actual time=6994.363..19057.669 rows=2832555 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=15 read=390491
               ->  Hash Join  (cost=4362.89..19014.96 rows=789 width=21) (actual time=4380.960..15584.109 rows=2832555 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=13 read=334880
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.006..4005.503 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=4362.88..4362.88 rows=68 width=29) (actual time=4380.930..4380.930 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5548kB
                           Buffers: shared hit=9 read=82230
                           ->  Hash Join  (cost=3270.71..4362.88 rows=68 width=29) (actual time=3131.028..4358.418 rows=68316 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=9 read=82230
                                 ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1393.877..2586.453 rows=68316 loops=1)
                                       Hash Cond: (mc.movie_id = mk.movie_id)
                                       Buffers: shared hit=8 read=46233
                                       ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=190.969..1190.023 rows=1153798 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..387.421 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=190.641..190.641 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=4.678..157.793 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1194.782..1194.782 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=3 read=24455
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=40.400..1184.025 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=3 read=24455
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.014..531.712 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=40.258..40.258 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=40.242..40.246 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
                                 ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1721.856..1721.856 rows=2528312 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=10.547..869.458 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2603.898..2603.898 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=6.782..1324.684 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=582.725..582.725 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.018..312.166 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7280.510 ms
 Execution Time: 21459.918 ms
(65 rows)


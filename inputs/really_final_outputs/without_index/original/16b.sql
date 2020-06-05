                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22257.15..22257.15 rows=1 width=64) (actual time=21879.251..21879.251 rows=1 loops=1)
   Buffers: shared hit=22 read=402827
   ->  Hash Join  (cost=7602.54..22257.05 rows=676 width=33) (actual time=7661.300..21077.569 rows=3710592 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=22 read=402827
         ->  Hash Join  (cost=7050.49..21702.62 rows=781 width=25) (actual time=7082.630..19501.528 rows=2832555 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=17 read=391434
               ->  Hash Join  (cost=4406.22..19058.29 rows=781 width=21) (actual time=4461.849..16009.567 rows=2832555 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=15 read=335823
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.007..4098.548 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=4406.21..4406.21 rows=68 width=29) (actual time=4461.814..4461.814 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5548kB
                           Buffers: shared hit=11 read=83173
                           ->  Hash Join  (cost=3314.04..4406.21 rows=68 width=29) (actual time=3180.259..4438.566 rows=68316 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=11 read=83173
                                 ->  Hash Join  (cost=1638.97..2731.13 rows=68 width=8) (actual time=1455.689..2677.447 rows=68316 loops=1)
                                       Hash Cond: (mc.movie_id = mk.movie_id)
                                       Buffers: shared hit=10 read=47176
                                       ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=193.732..1212.991 rows=1153798 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..393.225 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=193.401..193.401 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.138..161.651 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1255.212..1255.212 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=5 read=25398
                                             ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=86.063..1244.478 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=5 read=25398
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..542.461 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=85.981..85.982 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2 read=947
                                                         ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=25.373..85.970 rows=1 loops=1)
                                                               Filter: (keyword = 'character-name-in-title'::text)
                                                               Rows Removed by Filter: 134169
                                                               Buffers: shared hit=2 read=947
                                 ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1714.857..1714.857 rows=2528312 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=7.019..832.109 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2602.923..2602.923 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=5.022..1333.065 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=575.835..575.835 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.008..302.574 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7178.255 ms
 Execution Time: 21886.739 ms
(66 rows)


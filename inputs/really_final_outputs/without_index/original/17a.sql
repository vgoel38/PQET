                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20546.93..20546.93 rows=1 width=64) (actual time=19369.071..19369.071 rows=1 loops=1)
   Buffers: shared hit=19 read=391435
   ->  Hash Join  (cost=6812.83..20546.92 rows=64 width=15) (actual time=7059.315..19315.620 rows=258289 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=19 read=391435
         ->  Hash Join  (cost=2406.61..15792.31 rows=2991470 width=19) (actual time=2796.782..14510.828 rows=3118033 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.006..5425.907 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2356.12..2356.12 rows=343969 width=19) (actual time=2620.991..2620.991 rows=343399 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 21878kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=343969 width=19) (actual time=62.028..2491.039 rows=343399 loops=1)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 3824092
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=4406.21..4406.21 rows=68 width=12) (actual time=4262.470..4262.470 rows=68316 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
               Buffers: shared hit=11 read=83173
               ->  Hash Join  (cost=3314.04..4406.21 rows=68 width=12) (actual time=3123.519..4242.963 rows=68316 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=11 read=83173
                     ->  Hash Join  (cost=1638.97..2731.13 rows=68 width=8) (actual time=1397.353..2483.869 rows=68316 loops=1)
                           Hash Cond: (mc.movie_id = mk.movie_id)
                           Buffers: shared hit=10 read=47176
                           ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=145.114..1042.090 rows=1153798 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..303.461 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.783..144.783 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.145..115.789 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1243.796..1243.796 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                 Buffers: shared hit=5 read=25398
                                 ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=84.643..1233.122 rows=41840 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=5 read=25398
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.009..517.920 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=84.565..84.565 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2 read=947
                                             ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=23.903..84.558 rows=1 loops=1)
                                                   Filter: (keyword = 'character-name-in-title'::text)
                                                   Rows Removed by Filter: 134169
                                                   Buffers: shared hit=2 read=947
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=4) (actual time=1716.462..1716.463 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=8.667..884.801 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
 Planning Time: 5346.105 ms
 Execution Time: 19372.166 ms
(60 rows)


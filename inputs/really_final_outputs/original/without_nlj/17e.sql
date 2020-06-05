                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21659.36..21659.36 rows=1 width=32) (actual time=19507.595..19507.595 rows=1 loops=1)
   Buffers: shared hit=17 read=390492
   ->  Hash Join  (cost=7007.17..21659.30 rows=789 width=15) (actual time=6999.843..19087.844 rows=2832555 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=17 read=390492
         ->  Hash Join  (cost=4362.89..19014.96 rows=789 width=4) (actual time=4352.617..15597.306 rows=2832555 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=13 read=334880
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.007..4258.720 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=4362.88..4362.88 rows=68 width=12) (actual time=4352.585..4352.585 rows=68316 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
                     Buffers: shared hit=9 read=82230
                     ->  Hash Join  (cost=3270.71..4362.88 rows=68 width=12) (actual time=3120.903..4331.423 rows=68316 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=9 read=82230
                           ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1397.203..2573.129 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=8 read=46233
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=193.836..1173.489 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.008..359.765 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=193.507..193.508 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.199..161.397 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1195.004..1195.004 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=3 read=24455
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=41.082..1184.305 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=3 read=24455
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..529.860 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=40.959..40.959 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=40.944..40.948 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                           ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=4) (actual time=1714.227..1714.227 rows=2528312 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=6.436..902.479 rows=2528312 loops=1)
                                       Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2620.825..2620.825 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=22.117..1273.781 rows=4167491 loops=1)
                     Buffers: shared hit=1 read=55612
 Planning Time: 5546.385 ms
 Execution Time: 19533.449 ms
(57 rows)


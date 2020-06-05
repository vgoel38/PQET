                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20503.61..20503.61 rows=1 width=64) (actual time=19509.683..19509.683 rows=1 loops=1)
   Buffers: shared hit=17 read=390492
   ->  Hash Join  (cost=6769.51..20503.60 rows=64 width=15) (actual time=7192.260..19453.099 rows=258289 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=17 read=390492
         ->  Hash Join  (cost=2406.61..15792.31 rows=2991470 width=19) (actual time=2961.281..14679.867 rows=3118033 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.004..5402.275 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2356.12..2356.12 rows=343969 width=19) (actual time=2785.335..2785.335 rows=343399 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 21878kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=343969 width=19) (actual time=126.787..2643.038 rows=343399 loops=1)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 3824092
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=4362.88..4362.88 rows=68 width=12) (actual time=4230.910..4230.910 rows=68316 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
               Buffers: shared hit=9 read=82230
               ->  Hash Join  (cost=3270.71..4362.88 rows=68 width=12) (actual time=3081.764..4211.103 rows=68316 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=9 read=82230
                     ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1355.784..2451.890 rows=68316 loops=1)
                           Hash Cond: (mc.movie_id = mk.movie_id)
                           Buffers: shared hit=8 read=46233
                           ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.975..1050.720 rows=1153798 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..306.646 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=143.648..143.648 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.163..112.477 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1202.658..1202.658 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                 Buffers: shared hit=3 read=24455
                                 ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=40.934..1191.580 rows=41840 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=3 read=24455
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..525.183 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=40.812..40.812 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=40.797..40.800 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=4) (actual time=1716.348..1716.348 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=8.561..888.460 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
 Planning Time: 5340.462 ms
 Execution Time: 19513.792 ms
(59 rows)


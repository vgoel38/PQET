                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=678841.75..678841.75 rows=1 width=64) (actual time=32750.206..32750.206 rows=1 loops=1)
   Buffers: shared hit=2822736 read=287327
   ->  Hash Join  (cost=63496.11..678841.75 rows=1 width=59) (actual time=32581.852..32750.182 rows=10 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2822736 read=287327
         ->  Hash Join  (cost=63486.93..678832.57 rows=1 width=63) (actual time=32573.463..32741.787 rows=10 loops=1)
               Hash Cond: (t.id = mi_idx.movie_id)
               Buffers: shared hit=2822733 read=287325
               ->  Hash Join  (cost=23637.28..638982.91 rows=70 width=67) (actual time=28609.309..28826.039 rows=433 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=2577452 read=245339
                     ->  Hash Join  (cost=23631.15..638976.13 rows=7951 width=71) (actual time=10653.910..28817.787 rows=25015 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2577452 read=245337
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=50) (actual time=61.874..14732.420 rows=14835720 loops=1)
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=23630.94..23630.94 rows=1355 width=21) (actual time=10566.964..10566.965 rows=2536 loops=1)
                                 Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 195kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=1355 width=21) (actual time=666.612..10564.952 rows=2536 loops=1)
                                       Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                       Rows Removed by Filter: 2525776
                                       Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=2.720..2.720 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=2.705..2.708 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'budget'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=39848.08..39848.08 rows=10637 width=12) (actual time=3915.519..3915.519 rows=72 loops=1)
                     Buckets: 16384  Batches: 1  Memory Usage: 132kB
                     Buffers: shared hit=245281 read=41986
                     ->  Hash Join  (cost=16762.35..39848.08 rows=10637 width=12) (actual time=2577.613..3915.431 rows=72 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=245281 read=41986
                           ->  Hash Join  (cost=12152.70..35236.03 rows=29462 width=16) (actual time=1826.870..3164.562 rows=120 loops=1)
                                 Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=13567 read=38146
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=18.875..1308.534 rows=2609129 loops=1)
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=12150.89..12150.89 rows=12213 width=4) (actual time=1355.725..1355.725 rows=10 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 129kB
                                       Buffers: shared hit=13567 read=12226
                                       ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=643.645..1355.683 rows=10 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=13567 read=12226
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=31.071..1052.097 rows=1380035 loops=1)
                                                   Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.048..0.048 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.033..0.034 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                                         Buffers: shared hit=2
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=750.173..750.173 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=231714 read=3840
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=44.698..724.220 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=8.324..8.324 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=2 width=4) (actual time=8.299..8.308 rows=2 loops=1)
                     Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                     Rows Removed by Filter: 2
                     Buffers: shared read=2
 Planning Time: 4682.415 ms
 Execution Time: 32774.883 ms
(70 rows)


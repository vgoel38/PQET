                                                                             QUERY PLAN                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23938.33..23938.33 rows=1 width=128) (actual time=20420.492..20420.493 rows=1 loops=1)
   Buffers: shared hit=3 read=413891
   ->  Hash Join  (cost=7779.09..23936.82 rows=4872 width=64) (actual time=12341.004..20230.289 rows=483082 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=3 read=413891
         ->  Hash Join  (cost=6104.02..22261.35 rows=4872 width=55) (actual time=10369.910..18112.612 rows=483082 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared read=377893
               ->  Hash Join  (cost=4842.43..20989.34 rows=7026 width=51) (actual time=8960.651..16532.254 rows=482841 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared read=356110
                     ->  Hash Join  (cost=3021.13..19166.85 rows=14477 width=39) (actual time=7225.775..14645.954 rows=503022 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared read=319663
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=3953.787..11235.740 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared read=252655
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=11.325..11006.445 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.809..21.810 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.791..21.798 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=2990.55..2990.55 rows=208060 width=39) (actual time=3270.989..3270.989 rows=193486 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 16249kB
                                 Buffers: shared read=67008
                                 ->  Hash Join  (cost=2497.33..2990.55 rows=208060 width=39) (actual time=2700.053..3197.494 rows=193486 loops=1)
                                       Hash Cond: (an.person_id = n.id)
                                       Buffers: shared read=67008
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=5.226..179.694 rows=901343 loops=1)
                                             Buffers: shared read=11395
                                       ->  Hash  (cost=2356.12..2356.12 rows=961996 width=19) (actual time=2689.726..2689.726 rows=961555 loops=1)
                                             Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                             Buffers: shared read=55613
                                             ->  Seq Scan on name n  (cost=0.00..2356.12 rows=961996 width=19) (actual time=1180.699..2394.420 rows=961555 loops=1)
                                                   Filter: ((gender)::text = 'f'::text)
                                                   Rows Removed by Filter: 3205936
                                                   Buffers: shared read=55613
                     ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1725.320..1725.320 rows=3140339 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                           Buffers: shared read=36447
                           ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=9.993..735.911 rows=3140339 loops=1)
                                 Buffers: shared read=36447
               ->  Hash  (cost=1123.32..1123.32 rows=941996 width=4) (actual time=1406.847..1406.847 rows=1153798 loops=1)
                     Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                     Buffers: shared read=21783
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=149.901..1080.641 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=21783
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=11.102..313.654 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.793..137.793 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.236..108.218 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
         ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1945.382..1945.382 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared read=35998
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=20.890..1060.614 rows=2528312 loops=1)
                     Buffers: shared read=35998
 Planning Time: 4050.961 ms
 Execution Time: 20453.356 ms
(70 rows)


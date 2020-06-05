                                                                                          QUERY PLAN                                                                                          
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=978983.83..978983.83 rows=1 width=64) (actual time=77846.347..77846.347 rows=1 loops=1)
   Buffers: shared hit=8808250 read=538308
   ->  Hash Join  (cost=272085.48..978983.83 rows=1 width=32) (actual time=30527.250..77846.322 rows=16 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=8808250 read=538308
         ->  Hash Join  (cost=229425.55..936323.89 rows=1 width=44) (actual time=28836.583..76155.650 rows=8 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=8513402 read=524448
               ->  Hash Join  (cost=228670.62..935568.97 rows=1 width=52) (actual time=28753.417..76072.484 rows=22 loops=1)
                     Hash Cond: (n.id = pi.person_id)
                     Buffers: shared hit=8512145 read=524200
                     ->  Hash Join  (cost=72595.14..779490.71 rows=23849 width=48) (actual time=22130.128..70115.839 rows=33044 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=8280225 read=465280
                           ->  Hash Join  (cost=49149.33..755980.27 rows=792707 width=27) (actual time=4343.000..60352.986 rows=912324 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=5790355 read=422372
                                 ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=49.425..45177.281 rows=36244344 loops=1)
                                       Buffers: shared hit=1851757 read=351686
                                 ->  Hash  (cost=49135.93..49135.93 rows=91148 width=19) (actual time=4292.497..4292.498 rows=91976 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 5792kB
                                       Buffers: shared hit=3938598 read=70686
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=91148 width=19) (actual time=65.039..4264.188 rows=91976 loops=1)
                                             Filter: (((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))
                                             Rows Removed by Filter: 4075515
                                             Buffers: shared hit=3938598 read=70686
                           ->  Hash  (cost=23434.65..23434.65 rows=76065 width=21) (actual time=9444.598..9444.598 rows=76065 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5123kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=76065 width=21) (actual time=271.585..9410.953 rows=76065 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1984))
                                       Rows Removed by Filter: 2452247
                                       Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=156075.49..156075.49 rows=1 width=4) (actual time=5948.901..5948.901 rows=64 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                           Buffers: shared hit=231920 read=58920
                           ->  Hash Join  (cost=6.14..156075.49 rows=1 width=4) (actual time=247.939..5948.734 rows=64 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=231920 read=58920
                                 ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..156069.36 rows=64 width=8) (actual time=228.033..5928.477 rows=64 loops=1)
                                       Filter: (note = 'Volker Boehm'::text)
                                       Rows Removed by Filter: 2963600
                                       Buffers: shared hit=231920 read=58918
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=19.862..19.863 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=19.843..19.846 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'mini biography'::text)
                                             Buffers: shared read=2
               ->  Hash  (cost=754.68..754.68 rows=1666 width=4) (actual time=83.130..83.130 rows=5186 loops=1)
                     Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 247kB
                     Buffers: shared hit=1257 read=248
                     ->  Hash Join  (cost=6.13..754.68 rows=1666 width=4) (actual time=68.749..80.429 rows=5186 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=1257 read=248
                           ->  Index Scan using link_type_id_movie_link on movie_link ml  (cost=0.01..745.94 rows=29997 width=8) (actual time=27.151..68.872 rows=29997 loops=1)
                                 Buffers: shared hit=1257 read=246
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.100..0.100 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using link_type_link_key on link_type lt  (cost=0.00..6.13 rows=1 width=4) (actual time=0.095..0.096 rows=1 loops=1)
                                       Index Cond: ((link)::text = 'features'::text)
                                       Buffers: shared read=2
         ->  Hash  (cost=42561.30..42561.30 rows=671965 width=4) (actual time=1688.193..1688.193 rows=674692 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 31912kB
               Buffers: shared hit=294845 read=13860
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42561.30 rows=671965 width=4) (actual time=50.700..1437.711 rows=674692 loops=1)
                     Filter: (name ~~ '%a%'::text)
                     Rows Removed by Filter: 226651
                     Buffers: shared hit=294845 read=13860
 Planning Time: 5905.757 ms
 Execution Time: 77848.029 ms
(72 rows)


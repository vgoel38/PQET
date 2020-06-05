                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=980381.74..980381.74 rows=1 width=64) (actual time=79754.969..79754.970 rows=1 loops=1)
   Buffers: shared hit=8808251 read=538307
   ->  Hash Join  (cost=273150.98..980381.74 rows=1 width=32) (actual time=23749.931..79754.905 rows=32 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=8808251 read=538307
         ->  Hash Join  (cost=230491.05..937721.81 rows=1 width=44) (actual time=22094.648..78099.608 rows=14 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=8513403 read=524447
               ->  Hash Join  (cost=229736.13..936966.88 rows=1 width=52) (actual time=21940.375..78011.209 rows=390 loops=1)
                     Hash Cond: (n.id = pi.person_id)
                     Buffers: shared hit=8512146 read=524199
                     ->  Hash Join  (cost=73660.64..780826.94 rows=553491 width=48) (actual time=15108.478..72309.624 rows=848203 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=8280226 read=465279
                           ->  Hash Join  (cost=50176.06..757007.01 rows=4113627 width=27) (actual time=4808.941..59546.133 rows=5504872 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=5790356 read=422371
                                 ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=53.823..42862.188 rows=36244344 loops=1)
                                       Buffers: shared hit=1851757 read=351686
                                 ->  Hash  (cost=50106.62..50106.62 rows=472998 width=19) (actual time=4751.137..4751.137 rows=543291 loops=1)
                                       Buckets: 1048576 (originally 524288)  Batches: 1 (originally 1)  Memory Usage: 36304kB
                                       Buffers: shared hit=3938599 read=70685
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..50106.62 rows=472998 width=19) (actual time=19.114..4547.546 rows=543291 loops=1)
                                             Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                                             Rows Removed by Filter: 3624200
                                             Buffers: shared hit=3938599 read=70685
                           ->  Hash  (cost=23434.65..23434.65 rows=340186 width=21) (actual time=10297.627..10297.627 rows=340186 loops=1)
                                 Buckets: 524288  Batches: 1  Memory Usage: 22393kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=340186 width=21) (actual time=49.679..10152.205 rows=340186 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1995))
                                       Rows Removed by Filter: 2188126
                                       Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=156075.49..156075.49 rows=1 width=4) (actual time=5523.445..5523.445 rows=64 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                           Buffers: shared hit=231920 read=58920
                           ->  Hash Join  (cost=6.14..156075.49 rows=1 width=4) (actual time=137.181..5523.279 rows=64 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=231920 read=58920
                                 ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..156069.36 rows=64 width=8) (actual time=110.606..5496.385 rows=64 loops=1)
                                       Filter: (note = 'Volker Boehm'::text)
                                       Rows Removed by Filter: 2963600
                                       Buffers: shared hit=231920 read=58918
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=26.540..26.541 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=26.524..26.527 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'mini biography'::text)
                                             Buffers: shared read=2
               ->  Hash  (cost=754.68..754.68 rows=1666 width=4) (actual time=88.213..88.213 rows=5186 loops=1)
                     Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 247kB
                     Buffers: shared hit=1257 read=248
                     ->  Hash Join  (cost=6.13..754.68 rows=1666 width=4) (actual time=74.312..85.622 rows=5186 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=1257 read=248
                           ->  Index Scan using link_type_id_movie_link on movie_link ml  (cost=0.01..745.94 rows=29997 width=8) (actual time=32.759..73.712 rows=29997 loops=1)
                                 Buffers: shared hit=1257 read=246
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.362..0.362 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using link_type_link_key on link_type lt  (cost=0.00..6.13 rows=1 width=4) (actual time=0.350..0.353 rows=1 loops=1)
                                       Index Cond: ((link)::text = 'features'::text)
                                       Buffers: shared read=2
         ->  Hash  (cost=42561.30..42561.30 rows=671965 width=4) (actual time=1652.840..1652.841 rows=674692 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 31912kB
               Buffers: shared hit=294845 read=13860
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42561.30 rows=671965 width=4) (actual time=95.948..1396.818 rows=674692 loops=1)
                     Filter: (name ~~ '%a%'::text)
                     Rows Removed by Filter: 226651
                     Buffers: shared hit=294845 read=13860
 Planning Time: 6227.421 ms
 Execution Time: 79757.405 ms
(72 rows)


                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=980487.25..980487.26 rows=1 width=64) (actual time=80049.511..80049.511 rows=1 loops=1)
   Buffers: shared hit=8879641 read=538851
   ->  Hash Join  (cost=273183.15..980487.25 rows=2 width=110) (actual time=23096.560..78929.530 rows=68185 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=8808251 read=538307
         ->  Hash Join  (cost=248761.28..956065.33 rows=477 width=114) (actual time=12794.931..68206.908 rows=1618304 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=6317121 read=495151
               ->  Hash Join  (cost=50175.19..757006.14 rows=4061863 width=27) (actual time=4911.491..58821.030 rows=5178915 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790356 read=422371
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=43.237..41821.805 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=50106.62..50106.62 rows=467046 width=19) (actual time=4864.280..4864.280 rows=507621 loops=1)
                           Buckets: 524288  Batches: 1  Memory Usage: 30333kB
                           Buffers: shared hit=3938599 read=70685
                           ->  Index Scan using name_pkey on name n  (cost=0.01..50106.62 rows=467046 width=19) (actual time=19.127..4682.002 rows=507621 loops=1)
                                 Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'A%'::text))))
                                 Rows Removed by Filter: 3659870
                                 Buffers: shared hit=3938599 read=70685
               ->  Hash  (cost=198585.95..198585.95 rows=958 width=103) (actual time=7780.451..7780.451 rows=72980 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 60913kB
                     Buffers: shared hit=526765 read=72780
                     ->  Hash Join  (cost=42737.44..198585.95 rows=958 width=103) (actual time=1710.246..7690.326 rows=72980 loops=1)
                           Hash Cond: (pi.person_id = an.person_id)
                           Buffers: shared hit=526765 read=72780
                           ->  Hash Join  (cost=6.14..155852.32 rows=745 width=99) (actual time=74.086..5975.650 rows=84183 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=231920 read=58920
                                 ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..155839.26 rows=84183 width=103) (actual time=52.527..5910.354 rows=84183 loops=1)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 2879481
                                       Buffers: shared hit=231920 read=58918
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.505..21.505 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=21.489..21.492 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'mini biography'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=42631.28..42631.28 rows=681455 width=4) (actual time=1628.347..1628.347 rows=686100 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 32313kB
                                 Buffers: shared hit=294845 read=13860
                                 ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42631.28 rows=681455 width=4) (actual time=42.113..1346.590 rows=686100 loops=1)
                                       Filter: ((name IS NOT NULL) AND ((name ~~ '%a%'::text) OR (name ~~ 'A%'::text)))
                                       Rows Removed by Filter: 215243
                                       Buffers: shared hit=294845 read=13860
         ->  Hash  (cost=24421.27..24421.27 rows=4101 width=8) (actual time=10301.517..10301.518 rows=14194 loops=1)
               Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 683kB
               Buffers: shared hit=2491127 read=43156
               ->  Hash Join  (cost=23672.18..24421.27 rows=4101 width=8) (actual time=10239.132..10294.416 rows=14194 loops=1)
                     Hash Cond: (ml.linked_movie_id = t.id)
                     Buffers: shared hit=2491127 read=43156
                     ->  Hash Join  (cost=9.20..757.75 rows=6666 width=4) (actual time=49.090..91.337 rows=21505 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=1257 read=248
                           ->  Index Scan using link_type_id_movie_link on movie_link ml  (cost=0.01..745.94 rows=29997 width=8) (actual time=35.974..77.687 rows=29997 loops=1)
                                 Buffers: shared hit=1257 read=246
                           ->  Hash  (cost=9.19..9.19 rows=4 width=4) (actual time=0.350..0.350 rows=4 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=4 width=4) (actual time=0.309..0.326 rows=4 loops=1)
                                       Filter: ((link)::text = ANY ('{references,"referenced in",features,"featured in"}'::text[]))
                                       Rows Removed by Filter: 14
                                       Buffers: shared read=2
                     ->  Hash  (cost=23434.65..23434.65 rows=1555597 width=4) (actual time=10184.779..10184.779 rows=1555597 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 71073kB
                           Buffers: shared hit=2489870 read=42908
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1555597 width=4) (actual time=38.632..9634.302 rows=1555597 loops=1)
                                 Filter: ((production_year >= 1980) AND (production_year <= 2010))
                                 Rows Removed by Filter: 972715
                                 Buffers: shared hit=2489870 read=42908
 Planning Time: 5963.060 ms
 Execution Time: 80053.174 ms
(73 rows)


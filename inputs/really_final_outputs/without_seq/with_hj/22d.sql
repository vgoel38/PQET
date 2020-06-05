                                                                                                                    QUERY PLAN                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=722966.73..722966.73 rows=1 width=96) (actual time=35112.949..35112.949 rows=1 loops=1)
   Buffers: shared hit=2844380 read=324156
   ->  Hash Join  (cost=103012.29..722966.73 rows=1 width=42) (actual time=23598.494..35072.245 rows=46281 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2844380 read=324156
         ->  Hash Join  (cost=103006.16..722960.61 rows=1 width=46) (actual time=23578.956..35039.984 rows=46281 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=2844377 read=324154
               ->  Hash Join  (cost=98390.43..718344.88 rows=1 width=31) (actual time=22817.146..34285.031 rows=64848 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=2612663 read=320314
                     ->  Hash Join  (cost=6.14..619959.85 rows=6329 width=4) (actual time=6177.821..17507.680 rows=614251 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=87582 read=202431
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=3129.987..17288.007 rows=716210 loops=1)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                 Rows Removed by Filter: 14119510
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=18.510..18.510 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=18.493..18.496 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'countries'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=98384.29..98384.29 rows=1 width=47) (actual time=16637.523..16637.524 rows=75603 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 6690kB
                           Buffers: shared hit=2525081 read=117883
                           ->  Hash Join  (cost=58729.69..98384.29 rows=1 width=47) (actual time=13866.390..16602.962 rows=75603 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2525081 read=117883
                                 ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=99.353..2827.533 rows=37091 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=21644 read=36827
                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=35.372..1974.621 rows=4523930 loops=1)
                                             Buffers: shared hit=21636 read=36817
                                       ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.489..63.489 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=8 read=10
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.530..63.467 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                   Buffers: shared hit=8 read=10
                                 ->  Hash  (cost=58704.67..58704.67 rows=3283 width=43) (actual time=13738.079..13738.079 rows=322457 loops=1)
                                       Buckets: 524288 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 27519kB
                                       Buffers: shared hit=2503437 read=81056
                                       ->  Hash Join  (cost=35623.28..58704.67 rows=3283 width=43) (actual time=11848.800..13597.718 rows=322457 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=2503437 read=81056
                                             ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=36.370..1050.417 rows=2609129 loops=1)
                                                   Buffers: shared read=25920
                                             ->  Hash  (cost=35623.06..35623.06 rows=1361 width=31) (actual time=11812.375..11812.375 rows=106971 loops=1)
                                                   Buckets: 131072 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 7585kB
                                                   Buffers: shared hit=2503437 read=55136
                                                   ->  Hash Join  (cost=12265.98..35623.06 rows=1361 width=31) (actual time=1821.261..11768.384 rows=106971 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=2503437 read=55136
                                                         ->  Hash Join  (cost=12256.79..35613.42 rows=4764 width=35) (actual time=1608.758..11698.747 rows=140455 loops=1)
                                                               Hash Cond: (t.id = mi_idx.movie_id)
                                                               Buffers: shared hit=2503437 read=55134
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=42.260..9721.422 rows=1012920 loops=1)
                                                                     Filter: (production_year > 2005)
                                                                     Rows Removed by Filter: 1515392
                                                                     Buffers: shared hit=2489870 read=42908
                                                               ->  Hash  (cost=12255.03..12255.03 rows=11890 width=10) (actual time=1566.331..1566.331 rows=454230 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                                     Buffers: shared hit=13567 read=12226
                                                                     ->  Hash Join  (cost=6.14..12255.03 rows=11890 width=10) (actual time=35.044..1408.419 rows=454230 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=13567 read=12226
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=34.938..1095.286 rows=1343555 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 36480
                                                                                 Buffers: shared hit=13565 read=12226
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.049..0.049 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.037..0.039 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'rating'::text)
                                                                                       Buffers: shared hit=2
                                                         ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=24.801..24.801 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=24.771..24.782 rows=2 loops=1)
                                                                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                     Rows Removed by Filter: 5
                                                                     Buffers: shared read=2
               ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=731.506..731.506 rows=126230 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                     Buffers: shared hit=231714 read=3840
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=48.396..692.061 rows=126230 loops=1)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 108767
                           Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=19.508..19.508 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=19.488..19.493 rows=4 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 8541.567 ms
 Execution Time: 35114.644 ms
(100 rows)


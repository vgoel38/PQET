                                                                                                                    QUERY PLAN                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=719568.87..719568.87 rows=1 width=96) (actual time=34501.084..34501.084 rows=1 loops=1)
   Buffers: shared hit=2844380 read=324156
   ->  Hash Join  (cost=103073.89..719568.87 rows=1 width=42) (actual time=23168.873..34499.902 rows=2851 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2844380 read=324156
         ->  Hash Join  (cost=103067.76..719562.74 rows=1 width=46) (actual time=23153.508..34483.627 rows=2851 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2844377 read=324154
               ->  Hash Join  (cost=6.14..616500.43 rows=5910 width=4) (actual time=6343.439..17729.823 rows=588764 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared hit=87582 read=202431
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=667885 width=8) (actual time=3326.615..17519.875 rows=669336 loops=1)
                           Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                           Rows Removed by Filter: 14166384
                           Buffers: shared hit=87582 read=202429
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.077..21.078 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=21.059..21.063 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'countries'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=103061.62..103061.62 rows=1 width=62) (actual time=16667.991..16667.992 rows=2958 loops=1)
                     Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 308kB
                     Buffers: shared hit=2756795 read=121723
                     ->  Hash Join  (cost=63407.02..103061.62 rows=1 width=62) (actual time=14210.044..16666.099 rows=2958 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2756795 read=121723
                           ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=107.959..2733.594 rows=37091 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21644 read=36827
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=35.627..1895.492 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=71.833..71.833 rows=3 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=46.873..71.804 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                           ->  Hash  (cost=63382.47..63382.47 rows=55 width=58) (actual time=13921.945..13921.945 rows=6816 loops=1)
                                 Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 674kB
                                 Buffers: shared hit=2735151 read=84896
                                 ->  Hash Join  (cost=40067.00..63382.47 rows=55 width=58) (actual time=4837.983..13917.891 rows=6816 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2735151 read=84896
                                       ->  Hash Join  (cost=40057.81..63373.27 rows=193 width=62) (actual time=4716.806..13911.527 rows=9035 loops=1)
                                             Hash Cond: (t.id = mi_idx.movie_id)
                                             Buffers: shared hit=2735151 read=84894
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=662066 width=25) (actual time=76.939..9620.905 rows=662065 loops=1)
                                                   Filter: (production_year > 2008)
                                                   Rows Removed by Filter: 1866247
                                                   Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=40057.69..40057.69 rows=738 width=37) (actual time=4077.846..4077.846 rows=115293 loops=1)
                                                   Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8778kB
                                                   Buffers: shared hit=245281 read=41986
                                                   ->  Hash Join  (cost=16858.22..40057.69 rows=738 width=37) (actual time=2161.426..4025.088 rows=115293 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=245281 read=41986
                                                         ->  Hash Join  (cost=12242.50..35441.85 rows=1375 width=22) (actual time=1383.667..3183.433 rows=135012 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=13567 read=38146
                                                               ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=16.301..1703.725 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared read=25920
                                                               ->  Hash  (cost=12240.96..12240.96 rows=10379 width=10) (actual time=1367.213..1367.213 rows=324117 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                                     Buffers: shared hit=13567 read=12226
                                                                     ->  Hash Join  (cost=6.14..12240.96 rows=10379 width=10) (actual time=31.262..1249.096 rows=324117 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=13567 read=12226
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1172842 width=14) (actual time=31.170..1006.051 rows=1172832 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207203
                                                                                 Buffers: shared hit=13565 read=12226
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.032..0.034 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'rating'::text)
                                                                                       Buffers: shared hit=2
                                                         ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=776.620..776.620 rows=126230 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                                               Buffers: shared hit=231714 read=3840
                                                               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=66.611..731.744 rows=126230 loops=1)
                                                                     Filter: ((country_code)::text <> '[us]'::text)
                                                                     Rows Removed by Filter: 108767
                                                                     Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=2.868..2.868 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=2.833..2.844 rows=2 loops=1)
                                                   Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                   Rows Removed by Filter: 5
                                                   Buffers: shared read=2
         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=15.337..15.337 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=15.311..15.316 rows=4 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 8612.407 ms
 Execution Time: 34502.155 ms
(102 rows)


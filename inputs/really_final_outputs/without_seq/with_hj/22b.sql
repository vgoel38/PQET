                                                                                                                    QUERY PLAN                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=719553.87..719553.87 rows=1 width=96) (actual time=36240.195..36240.195 rows=1 loops=1)
   Buffers: shared hit=2844380 read=324156
   ->  Hash Join  (cost=103058.89..719553.87 rows=1 width=42) (actual time=25078.083..36240.131 rows=31 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2844380 read=324156
         ->  Hash Join  (cost=103052.77..719547.75 rows=1 width=46) (actual time=25063.705..36225.731 rows=31 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2844377 read=324154
               ->  Hash Join  (cost=6.14..616500.43 rows=5910 width=4) (actual time=6632.623..18162.943 rows=588764 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared hit=87582 read=202431
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=667885 width=8) (actual time=3384.917..17947.116 rows=669336 loops=1)
                           Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                           Rows Removed by Filter: 14166384
                           Buffers: shared hit=87582 read=202429
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=29.426..29.426 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=29.408..29.411 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'countries'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=103046.63..103046.63 rows=1 width=62) (actual time=17984.328..17984.329 rows=50 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 13kB
                     Buffers: shared hit=2756795 read=121723
                     ->  Hash Join  (cost=63392.03..103046.63 rows=1 width=62) (actual time=15633.597..17984.220 rows=50 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2756795 read=121723
                           ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=93.753..3043.172 rows=37091 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21644 read=36827
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=29.759..2174.316 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.483..63.483 rows=3 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.536..63.453 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                           ->  Hash  (cost=63367.48..63367.48 rows=45 width=58) (actual time=14933.982..14933.982 rows=347 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 39kB
                                 Buffers: shared hit=2735151 read=84896
                                 ->  Hash Join  (cost=40067.00..63367.48 rows=45 width=58) (actual time=5227.456..14933.576 rows=347 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2735151 read=84896
                                       ->  Hash Join  (cost=40057.81..63358.27 rows=156 width=62) (actual time=5126.176..14930.255 rows=438 loops=1)
                                             Hash Cond: (t.id = mi_idx.movie_id)
                                             Buffers: shared hit=2735151 read=84894
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=533370 width=25) (actual time=76.938..10502.075 rows=533369 loops=1)
                                                   Filter: (production_year > 2009)
                                                   Rows Removed by Filter: 1994943
                                                   Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=40057.69..40057.69 rows=738 width=37) (actual time=4251.566..4251.566 rows=115293 loops=1)
                                                   Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8778kB
                                                   Buffers: shared hit=245281 read=41986
                                                   ->  Hash Join  (cost=16858.22..40057.69 rows=738 width=37) (actual time=2416.031..4201.157 rows=115293 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=245281 read=41986
                                                         ->  Hash Join  (cost=12242.50..35441.85 rows=1375 width=22) (actual time=1656.125..3374.773 rows=135012 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=13567 read=38146
                                                               ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=17.585..1619.869 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared read=25920
                                                               ->  Hash  (cost=12240.96..12240.96 rows=10379 width=10) (actual time=1638.379..1638.379 rows=324117 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                                     Buffers: shared hit=13567 read=12226
                                                                     ->  Hash Join  (cost=6.14..12240.96 rows=10379 width=10) (actual time=31.151..1517.446 rows=324117 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=13567 read=12226
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1172842 width=14) (actual time=31.057..1255.046 rows=1172832 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207203
                                                                                 Buffers: shared hit=13565 read=12226
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.045..0.046 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.034..0.036 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'rating'::text)
                                                                                       Buffers: shared hit=2
                                                         ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=758.775..758.775 rows=126230 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                                               Buffers: shared hit=231714 read=3840
                                                               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=66.623..718.200 rows=126230 loops=1)
                                                                     Filter: ((country_code)::text <> '[us]'::text)
                                                                     Rows Removed by Filter: 108767
                                                                     Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=2.866..2.866 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=2.830..2.842 rows=2 loops=1)
                                                   Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                   Rows Removed by Filter: 5
                                                   Buffers: shared read=2
         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=14.352..14.352 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=14.332..14.337 rows=4 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 8430.145 ms
 Execution Time: 36241.254 ms
(102 rows)


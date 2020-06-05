                                                                                                                    QUERY PLAN                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=723083.57..723083.57 rows=1 width=96) (actual time=34155.163..34155.163 rows=1 loops=1)
   Buffers: shared hit=2844380 read=324156
   ->  Hash Join  (cost=103129.12..723083.56 rows=1 width=42) (actual time=23053.970..34128.222 rows=21489 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2844380 read=324156
         ->  Hash Join  (cost=103123.00..723077.44 rows=1 width=46) (actual time=23035.323..34103.572 rows=21489 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2844377 read=324154
               ->  Hash Join  (cost=6.14..619959.85 rows=6329 width=4) (actual time=5906.064..16958.630 rows=614251 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=87582 read=202431
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=2970.891..16750.729 rows=716210 loops=1)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 14119510
                           Buffers: shared hit=87582 read=202429
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=18.460..18.460 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=18.444..18.447 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'countries'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=103116.86..103116.86 rows=1 width=62) (actual time=17032.882..17032.882 rows=23425 loops=1)
                     Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2423kB
                     Buffers: shared hit=2756795 read=121723
                     ->  Hash Join  (cost=63462.26..103116.86 rows=1 width=62) (actual time=14296.168..17020.051 rows=23425 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2756795 read=121723
                           ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=103.654..2953.692 rows=37091 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21644 read=36827
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.348..2048.126 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=71.818..71.818 rows=3 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=46.873..71.796 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                           ->  Hash  (cost=63437.70..63437.70 rows=97 width=58) (actual time=14045.975..14045.975 rows=56007 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5419kB
                                 Buffers: shared hit=2735151 read=84896
                                 ->  Hash Join  (cost=40081.34..63437.70 rows=97 width=58) (actual time=4654.842..14019.753 rows=56007 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2735151 read=84896
                                       ->  Hash Join  (cost=40072.16..63428.48 rows=339 width=62) (actual time=4601.095..13993.994 rows=71709 loops=1)
                                             Hash Cond: (t.id = mi_idx.movie_id)
                                             Buffers: shared hit=2735151 read=84894
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=42.277..9504.048 rows=1012920 loops=1)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1515392
                                                   Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=40072.02..40072.02 rows=846 width=37) (actual time=4166.697..4166.697 rows=178762 loops=1)
                                                   Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 13953kB
                                                   Buffers: shared hit=245281 read=41986
                                                   ->  Hash Join  (cost=16872.52..40072.02 rows=846 width=37) (actual time=2276.460..4089.521 rows=178762 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=245281 read=41986
                                                         ->  Hash Join  (cost=12256.79..35456.16 rows=1575 width=22) (actual time=1506.592..3223.744 rows=204359 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=13567 read=38146
                                                               ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=17.279..1596.958 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared read=25920
                                                               ->  Hash  (cost=12255.03..12255.03 rows=11890 width=10) (actual time=1489.254..1489.255 rows=454230 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                                     Buffers: shared hit=13567 read=12226
                                                                     ->  Hash Join  (cost=6.14..12255.03 rows=11890 width=10) (actual time=31.302..1338.807 rows=454230 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=13567 read=12226
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=31.213..1036.274 rows=1343555 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 36480
                                                                                 Buffers: shared hit=13565 read=12226
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.045..0.045 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.035..0.037 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'rating'::text)
                                                                                       Buffers: shared hit=2
                                                         ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=768.776..768.776 rows=126230 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                                               Buffers: shared hit=231714 read=3840
                                                               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=68.012..728.145 rows=126230 loops=1)
                                                                     Filter: ((country_code)::text <> '[us]'::text)
                                                                     Rows Removed by Filter: 108767
                                                                     Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=2.888..2.888 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=2.851..2.863 rows=2 loops=1)
                                                   Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                   Rows Removed by Filter: 5
                                                   Buffers: shared read=2
         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=18.619..18.619 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=18.592..18.597 rows=4 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 8600.835 ms
 Execution Time: 34156.385 ms
(102 rows)


                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13479.17..13479.17 rows=1 width=96) (actual time=9048231.326..9048231.326 rows=1 loops=1)
   Buffers: shared hit=597552991 read=253514
   ->  Nested Loop  (cost=625.93..13479.17 rows=1 width=42) (actual time=490032.675..9048231.177 rows=31 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Buffers: shared hit=597552991 read=253514
         ->  Nested Loop  (cost=625.93..13479.14 rows=1 width=46) (actual time=490032.663..9048231.052 rows=31 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 1486290
               Buffers: shared hit=597552960 read=253514
               ->  Nested Loop  (cost=625.93..13332.21 rows=1 width=31) (actual time=489988.698..9047617.722 rows=39 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Rows Removed by Join Filter: 300541522
                     Buffers: shared hit=597520965 read=250522
                     ->  Nested Loop  (cost=625.93..12136.28 rows=1 width=39) (actual time=89531.962..8541931.290 rows=991 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Rows Removed by Join Filter: 7747437437
                           Buffers: shared hit=578919852 read=231736
                           ->  Nested Loop  (cost=625.90..10562.21 rows=1 width=18) (actual time=9180.812..756402.924 rows=16083 loops=1)
                                 Join Filter: (mk.movie_id = mi.movie_id)
                                 Rows Removed by Join Filter: 5461522394
                                 Buffers: shared hit=14 read=195739
                                 ->  Hash Join  (cost=59.88..1508.52 rows=135 width=4) (actual time=79.438..1551.537 rows=37091 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=8 read=25398
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..784.088 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=59.88..59.88 rows=4 width=4) (actual time=79.366..79.366 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2 read=947
                                             ->  Seq Scan on keyword k  (cost=0.00..59.88 rows=4 width=4) (actual time=19.592..79.343 rows=3 loops=1)
                                                   Filter: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                   Rows Removed by Filter: 134167
                                                   Buffers: shared hit=2 read=947
                                 ->  Materialize  (cost=566.02..9052.48 rows=40 width=14) (actual time=0.208..6.575 rows=147247 loops=37091)
                                       Buffers: shared hit=6 read=170341
                                       ->  Hash Join  (cost=566.02..9052.47 rows=40 width=14) (actual time=7722.297..8989.119 rows=147247 loops=1)
                                             Hash Cond: (mi.info_type_id = it1.id)
                                             Buffers: shared hit=6 read=170341
                                             ->  Hash Join  (cost=565.97..9052.06 rows=4465 width=18) (actual time=670.704..8949.934 rows=173221 loops=1)
                                                   Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=5 read=170341
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=671970 width=8) (actual time=28.083..8100.471 rows=669336 loops=1)
                                                         Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                                         Rows Removed by Filter: 14166384
                                                         Buffers: shared hit=2 read=161890
                                                   ->  Hash  (cost=564.45..564.45 rows=10379 width=10) (actual time=642.517..642.517 rows=324117 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Hash Join  (cost=0.05..564.45 rows=10379 width=10) (actual time=0.067..557.202 rows=324117 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=3 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1172842 width=14) (actual time=0.013..371.501 rows=1172832 loops=1)
                                                                     Filter: (info < '7.0'::text)
                                                                     Rows Removed by Filter: 207203
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.035..0.035 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.027..0.030 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.027..0.028 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.019 rows=1 loops=1)
                                                         Filter: ((info)::text = 'countries'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash Join  (cost=0.03..1551.70 rows=152391 width=21) (actual time=0.004..444.118 rows=481716 loops=16083)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=578919838 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=533370 width=25) (actual time=0.004..328.333 rows=533369 loops=16083)
                                       Filter: (production_year > 2009)
                                       Rows Removed by Filter: 1994943
                                       Buffers: shared hit=578919837 read=35997
                                 ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.033..0.033 rows=2 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.020..0.026 rows=2 loops=1)
                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                             Rows Removed by Filter: 5
                                             Buffers: shared hit=1
                     ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.005..485.739 rows=303271 loops=991)
                           Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                           Rows Removed by Filter: 2305858
                           Buffers: shared hit=18601113 read=18786
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=0.217..12.490 rows=38111 loops=39)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 32396
                     Buffers: shared hit=31995 read=2992
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=31)
               Buffers: shared hit=31
 Planning Time: 8994.097 ms
 Execution Time: 9048237.533 ms
(95 rows)


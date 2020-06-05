                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13496.98..13496.98 rows=1 width=96) (actual time=10257006.069..10257006.069 rows=1 loops=1)
   Buffers: shared hit=609696322 read=253514
   ->  Nested Loop  (cost=625.93..13496.98 rows=1 width=42) (actual time=59614.449..10257002.307 rows=2851 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Buffers: shared hit=609696322 read=253514
         ->  Nested Loop  (cost=625.93..13496.94 rows=1 width=46) (actual time=59614.437..10256995.164 rows=2851 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 106035543
               Buffers: shared hit=609693471 read=253514
               ->  Nested Loop  (cost=625.93..13350.01 rows=1 width=31) (actual time=59607.063..10220728.685 rows=3223 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Rows Removed by Join Filter: 457026174
                     Buffers: shared hit=607216089 read=250522
                     ->  Nested Loop  (cost=625.93..12154.08 rows=1 width=39) (actual time=59554.699..9452360.750 rows=1507 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Rows Removed by Join Filter: 9561406325
                           Buffers: shared hit=578919852 read=231736
                           ->  Nested Loop  (cost=625.90..10562.21 rows=1 width=18) (actual time=9182.668..757649.094 rows=16083 loops=1)
                                 Join Filter: (mk.movie_id = mi.movie_id)
                                 Rows Removed by Join Filter: 5461522394
                                 Buffers: shared hit=14 read=195739
                                 ->  Hash Join  (cost=59.88..1508.52 rows=135 width=4) (actual time=79.803..1539.020 rows=37091 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=8 read=25398
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..770.256 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=59.88..59.88 rows=4 width=4) (actual time=79.730..79.730 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2 read=947
                                             ->  Seq Scan on keyword k  (cost=0.00..59.88 rows=4 width=4) (actual time=19.222..79.708 rows=3 loops=1)
                                                   Filter: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                   Rows Removed by Filter: 134167
                                                   Buffers: shared hit=2 read=947
                                 ->  Materialize  (cost=566.02..9052.48 rows=40 width=14) (actual time=0.208..6.599 rows=147247 loops=37091)
                                       Buffers: shared hit=6 read=170341
                                       ->  Hash Join  (cost=566.02..9052.47 rows=40 width=14) (actual time=7724.167..8989.385 rows=147247 loops=1)
                                             Hash Cond: (mi.info_type_id = it1.id)
                                             Buffers: shared hit=6 read=170341
                                             ->  Hash Join  (cost=565.97..9052.06 rows=4465 width=18) (actual time=671.131..8948.137 rows=173221 loops=1)
                                                   Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=5 read=170341
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=671970 width=8) (actual time=27.803..8095.807 rows=669336 loops=1)
                                                         Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                                         Rows Removed by Filter: 14166384
                                                         Buffers: shared hit=2 read=161890
                                                   ->  Hash  (cost=564.45..564.45 rows=10379 width=10) (actual time=643.161..643.161 rows=324117 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Hash Join  (cost=0.05..564.45 rows=10379 width=10) (actual time=0.112..558.515 rows=324117 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=3 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1172842 width=14) (actual time=0.018..371.819 rows=1172832 loops=1)
                                                                     Filter: (info < '7.0'::text)
                                                                     Rows Removed by Filter: 207203
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.060..0.060 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.046..0.052 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.020 rows=1 loops=1)
                                                         Filter: ((info)::text = 'countries'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash Join  (cost=0.03..1564.11 rows=189162 width=21) (actual time=0.004..486.185 rows=594504 loops=16083)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=578919838 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=662066 width=25) (actual time=0.003..340.095 rows=662065 loops=16083)
                                       Filter: (production_year > 2008)
                                       Rows Removed by Filter: 1866247
                                       Buffers: shared hit=578919837 read=35997
                                 ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.032..0.032 rows=2 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.018..0.025 rows=2 loops=1)
                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                             Rows Removed by Filter: 5
                                             Buffers: shared hit=1
                     ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.005..484.808 rows=303271 loops=1507)
                           Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                           Rows Removed by Filter: 2305858
                           Buffers: shared hit=28296237 read=18786
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=0.003..8.654 rows=32901 loops=3223)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 27645
                     Buffers: shared hit=2477382 read=2992
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=2851)
               Buffers: shared hit=2851
 Planning Time: 9433.421 ms
 Execution Time: 10257014.103 ms
(95 rows)


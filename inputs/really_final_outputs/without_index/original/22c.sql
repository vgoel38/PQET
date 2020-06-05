                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17021.11..17021.11 rows=1 width=96) (actual time=16883383.428..16883383.428 rows=1 loops=1)
   Buffers: shared hit=847201150 read=253514
   ->  Nested Loop  (cost=640.23..17021.11 rows=1 width=42) (actual time=94504.903..16883343.686 rows=21489 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Buffers: shared hit=847201150 read=253514
         ->  Nested Loop  (cost=640.23..17021.08 rows=1 width=46) (actual time=94504.890..16883290.245 rows=21489 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 649292256
               Buffers: shared hit=847179661 read=253514
               ->  Nested Loop  (cost=640.23..16874.15 rows=1 width=31) (actual time=94469.643..16665606.212 rows=23216 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Rows Removed by Join Filter: 1247936949
                     Buffers: shared hit=832032033 read=250522
                     ->  Nested Loop  (cost=640.23..15678.22 rows=1 width=39) (actual time=15792.715..14555575.209 rows=4115 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Rows Removed by Join Filter: 18727908988
                           Buffers: shared hit=754734084 read=231736
                           ->  Nested Loop  (cost=640.19..14037.81 rows=1 width=18) (actual time=7902.354..1092695.549 rows=20967 loops=1)
                                 Join Filter: (mk.movie_id = mi.movie_id)
                                 Rows Removed by Join Filter: 7909226782
                                 Buffers: shared hit=14 read=195739
                                 ->  Hash Join  (cost=59.88..1508.52 rows=135 width=4) (actual time=80.149..1712.460 rows=37091 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=8 read=25398
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.014..861.176 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=59.88..59.88 rows=4 width=4) (actual time=80.015..80.016 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2 read=947
                                             ->  Seq Scan on keyword k  (cost=0.00..59.88 rows=4 width=4) (actual time=19.797..79.992 rows=3 loops=1)
                                                   Filter: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                   Rows Removed by Filter: 134167
                                                   Buffers: shared hit=2 read=947
                                 ->  Materialize  (cost=580.32..12527.84 rows=48 width=14) (actual time=0.211..9.455 rows=213239 loops=37091)
                                       Buffers: shared hit=6 read=170341
                                       ->  Hash Join  (cost=580.32..12527.83 rows=48 width=14) (actual time=7822.083..9474.307 rows=213239 loops=1)
                                             Hash Cond: (mi.info_type_id = it1.id)
                                             Buffers: shared hit=6 read=170341
                                             ->  Hash Join  (cost=580.27..12527.33 rows=5468 width=18) (actual time=740.296..9414.764 rows=256352 loops=1)
                                                   Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=5 read=170341
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=718252 width=8) (actual time=30.665..8441.353 rows=716210 loops=1)
                                                         Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                         Rows Removed by Filter: 14119510
                                                         Buffers: shared hit=2 read=161890
                                                   ->  Hash  (cost=578.52..578.52 rows=11890 width=10) (actual time=709.456..709.456 rows=454230 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Hash Join  (cost=0.05..578.52 rows=11890 width=10) (actual time=0.121..595.995 rows=454230 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=3 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.019..360.698 rows=1343555 loops=1)
                                                                     Filter: (info < '8.5'::text)
                                                                     Rows Removed by Filter: 36480
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.064..0.064 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.050..0.056 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.026 rows=1 loops=1)
                                                         Filter: ((info)::text = 'countries'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash Join  (cost=0.03..1597.93 rows=289406 width=21) (actual time=0.005..569.518 rows=893209 loops=20967)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=754734070 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=0.004..351.262 rows=1012920 loops=20967)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1515392
                                       Buffers: shared hit=754734069 read=35997
                                 ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.052..0.052 rows=2 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.017..0.024 rows=2 loops=1)
                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                             Rows Removed by Filter: 5
                                             Buffers: shared hit=1
                     ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.005..488.375 rows=303271 loops=4115)
                           Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                           Rows Removed by Filter: 2305858
                           Buffers: shared hit=77297949 read=18786
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=0.002..7.175 rows=27968 loops=23216)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 23394
                     Buffers: shared hit=15147628 read=2992
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=21489)
               Buffers: shared hit=21489
 Planning Time: 8977.120 ms
 Execution Time: 16883394.754 ms
(95 rows)


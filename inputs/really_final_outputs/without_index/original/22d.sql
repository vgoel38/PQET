                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16977.91..16977.91 rows=1 width=96) (actual time=17705897.816..17705897.816 rows=1 loops=1)
   Buffers: shared hit=911674296 read=253514
   ->  Nested Loop  (cost=640.23..16977.91 rows=1 width=42) (actual time=32205.008..17705830.686 rows=46281 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Rows Removed by Join Filter: 4783
         Buffers: shared hit=911674296 read=253514
         ->  Nested Loop  (cost=640.23..16977.88 rows=1 width=46) (actual time=32205.000..17705714.711 rows=46281 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 3379649757
               Buffers: shared hit=911628015 read=253514
               ->  Nested Loop  (cost=640.23..16830.95 rows=1 width=31) (actual time=16405.872..16539882.200 rows=64848 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Rows Removed by Join Filter: 10736500987
                     Buffers: shared hit=832032033 read=250522
                     ->  Nested Loop  (cost=640.23..15678.22 rows=1 width=39) (actual time=15852.078..14652465.625 rows=4115 loops=1)
                           Join Filter: (t.id = mi.movie_id)
                           Rows Removed by Join Filter: 18727908988
                           Buffers: shared hit=754734084 read=231736
                           ->  Nested Loop  (cost=640.19..14037.81 rows=1 width=18) (actual time=8021.724..1091597.784 rows=20967 loops=1)
                                 Join Filter: (mk.movie_id = mi.movie_id)
                                 Rows Removed by Join Filter: 7909226782
                                 Buffers: shared hit=14 read=195739
                                 ->  Hash Join  (cost=59.88..1508.52 rows=135 width=4) (actual time=95.122..1655.341 rows=37091 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=8 read=25398
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..834.052 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=59.88..59.88 rows=4 width=4) (actual time=95.000..95.000 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2 read=947
                                             ->  Seq Scan on keyword k  (cost=0.00..59.88 rows=4 width=4) (actual time=30.930..94.977 rows=3 loops=1)
                                                   Filter: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                   Rows Removed by Filter: 134167
                                                   Buffers: shared hit=2 read=947
                                 ->  Materialize  (cost=580.32..12527.84 rows=48 width=14) (actual time=0.214..9.421 rows=213239 loops=37091)
                                       Buffers: shared hit=6 read=170341
                                       ->  Hash Join  (cost=580.32..12527.83 rows=48 width=14) (actual time=7926.471..9548.277 rows=213239 loops=1)
                                             Hash Cond: (mi.info_type_id = it1.id)
                                             Buffers: shared hit=6 read=170341
                                             ->  Hash Join  (cost=580.27..12527.33 rows=5468 width=18) (actual time=707.400..9489.201 rows=256352 loops=1)
                                                   Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=5 read=170341
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=718252 width=8) (actual time=26.761..8549.376 rows=716210 loops=1)
                                                         Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                         Rows Removed by Filter: 14119510
                                                         Buffers: shared hit=2 read=161890
                                                   ->  Hash  (cost=578.52..578.52 rows=11890 width=10) (actual time=680.473..680.473 rows=454230 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Hash Join  (cost=0.05..578.52 rows=11890 width=10) (actual time=0.128..567.697 rows=454230 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=3 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.019..349.644 rows=1343555 loops=1)
                                                                     Filter: (info < '8.5'::text)
                                                                     Rows Removed by Filter: 36480
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.060..0.060 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.052 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.055..0.055 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.014..0.041 rows=1 loops=1)
                                                         Filter: ((info)::text = 'countries'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash Join  (cost=0.03..1597.93 rows=289406 width=21) (actual time=0.005..575.647 rows=893209 loops=20967)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=754734070 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=0.004..363.105 rows=1012920 loops=20967)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1515392
                                       Buffers: shared hit=754734069 read=35997
                                 ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.030..0.030 rows=2 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.017..0.023 rows=2 loops=1)
                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                             Rows Removed by Filter: 5
                                             Buffers: shared hit=1
                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.002..178.073 rows=2609129 loops=4115)
                           Buffers: shared hit=77297949 read=18786
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=0.002..13.804 rows=52117 loops=64848)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 44330
                     Buffers: shared hit=79595982 read=2992
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=46281)
               Buffers: shared hit=46281
 Planning Time: 9057.667 ms
 Execution Time: 17705908.716 ms
(94 rows)


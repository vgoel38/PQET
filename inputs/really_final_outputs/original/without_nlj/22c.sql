                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16933.39..16933.39 rows=1 width=96) (actual time=13486.504..13486.505 rows=1 loops=1)
   Buffers: shared hit=28 read=252577
   ->  Hash Join  (cost=5010.65..16933.39 rows=1 width=42) (actual time=12037.893..13457.835 rows=21489 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=28 read=252577
         ->  Hash Join  (cost=5010.62..16933.36 rows=1 width=46) (actual time=11985.599..13452.137 rows=23197 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=24 read=252577
               ->  Hash Join  (cost=5010.59..16933.32 rows=1 width=50) (actual time=11985.582..13446.230 rows=23197 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=23 read=252577
                     ->  Hash Join  (cost=4863.65..16786.39 rows=1 width=35) (actual time=11817.703..13269.043 rows=25309 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=21 read=249585
                           ->  Hash Join  (cost=0.05..11922.05 rows=6329 width=4) (actual time=7087.254..8447.472 rows=614251 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=11.699..8291.833 rows=716210 loops=1)
                                       Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14119510
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.062..0.062 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.054 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=4863.60..4863.60 rows=1 width=51) (actual time=4730.330..4730.330 rows=27833 loops=1)
                                 Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2464kB
                                 Buffers: shared hit=18 read=87695
                                 ->  Hash Join  (cost=3245.38..4863.60 rows=1 width=51) (actual time=3022.997..4712.984 rows=27833 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=18 read=87695
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=22.520..1430.017 rows=1012920 loops=1)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1515392
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=3245.38..3245.38 rows=1 width=26) (actual time=2982.134..2982.134 rows=83144 loops=1)
                                             Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5571kB
                                             Buffers: shared hit=17 read=51698
                                             ->  Hash Join  (cost=1796.72..3245.38 rows=1 width=26) (actual time=1696.732..2954.572 rows=83144 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=17 read=51698
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=59.655..1286.495 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=11 read=24461
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.015..611.385 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=59.494..59.494 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=34.547..59.472 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1771.96..1771.96 rows=1575 width=22) (actual time=1637.031..1637.031 rows=204359 loops=1)
                                                         Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 12426kB
                                                         Buffers: shared hit=6 read=27237
                                                         ->  Hash Join  (cost=580.27..1771.96 rows=1575 width=22) (actual time=678.856..1574.492 rows=204359 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=6 read=27237
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.023..778.861 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=578.52..578.52 rows=11890 width=10) (actual time=678.686..678.686 rows=454230 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..578.52 rows=11890 width=10) (actual time=0.081..565.333 rows=454230 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.024..347.310 rows=1343555 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 36480
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.036..0.036 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.028..0.032 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=167.565..167.565 rows=126230 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=19.135..120.246 rows=126230 loops=1)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 108767
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.006..0.006 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.002..0.004 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.016..0.016 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.008..0.009 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 5
                     Buffers: shared hit=1
 Planning Time: 9133.026 ms
 Execution Time: 13487.255 ms
(103 rows)


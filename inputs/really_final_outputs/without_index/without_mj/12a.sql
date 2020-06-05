                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10812.16..10812.16 rows=1 width=96) (actual time=2079714.692..2079714.693 rows=1 loops=1)
   Buffers: shared hit=85112719 read=228128
   ->  Nested Loop  (cost=475.66..10812.16 rows=1 width=42) (actual time=46914.526..2079713.120 rows=397 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Rows Removed by Join Filter: 544952869
         Buffers: shared hit=85112719 read=228128
         ->  Nested Loop  (cost=475.66..9050.16 rows=1 width=37) (actual time=8971.712..1622012.989 rows=1311 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 145443055
               Buffers: shared hit=41615374 read=192130
               ->  Nested Loop  (cost=475.66..8909.30 rows=1 width=22) (actual time=8957.391..1555071.020 rows=2518 loops=1)
                     Join Filter: (mc.movie_id = mi.movie_id)
                     Rows Removed by Join Filter: 2593675151
                     Buffers: shared hit=36488242 read=189136
                     ->  Hash Join  (cost=475.63..7763.18 rows=1 width=14) (actual time=8340.699..8896.670 rows=1943 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=4 read=170346
                           ->  Hash Join  (cost=475.58..7763.13 rows=82 width=18) (actual time=5583.759..8866.611 rows=2137 loops=1)
                                 Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=1 read=170345
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=273566 width=8) (actual time=4960.577..8155.771 rows=274644 loops=1)
                                       Filter: (info = ANY ('{Drama,Horror}'::text[]))
                                       Rows Removed by Filter: 14561076
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=475.52..475.52 rows=468 width=10) (actual time=623.142..623.143 rows=15849 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                                       Buffers: shared hit=1 read=8453
                                       ->  Nested Loop  (cost=0.00..475.52 rows=468 width=10) (actual time=23.272..615.189 rows=15849 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 37013
                                             Buffers: shared hit=1 read=8453
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.029..0.035 rows=1 loops=1)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=23.233..602.625 rows=52862 loops=1)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 1327173
                                                   Buffers: shared read=8453
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=27.082..27.082 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=27.030..27.070 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Hash Join  (cost=0.03..1050.38 rows=652282 width=8) (actual time=252.997..691.656 rows=1334883 loops=1943)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=36488238 read=18790
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.016..182.963 rows=2609129 loops=1943)
                                 Buffers: shared hit=36488238 read=18789
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=23.580..23.581 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=23.564..23.567 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=0.004..22.023 rows=57762 loops=2518)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 102223
                     Buffers: shared hit=5127132 read=2994
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=445860 width=21) (actual time=0.008..314.856 rows=415678 loops=1311)
               Filter: ((production_year >= 2005) AND (production_year <= 2008))
               Rows Removed by Filter: 1911539
               Buffers: shared hit=43497345 read=35998
 Planning Time: 4390.438 ms
 Execution Time: 2079715.218 ms
(68 rows)


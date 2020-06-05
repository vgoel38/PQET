                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10812.16..10812.16 rows=1 width=96) (actual time=2086576.959..2086576.959 rows=1 loops=1)
   Buffers: shared hit=85112731 read=228116
   ->  Nested Loop  (cost=475.66..10812.16 rows=1 width=42) (actual time=47231.447..2086575.107 rows=397 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Rows Removed by Join Filter: 544952869
         Buffers: shared hit=85112731 read=228116
         ->  Nested Loop  (cost=475.66..9050.16 rows=1 width=37) (actual time=8769.940..1623571.954 rows=1311 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 145443055
               Buffers: shared hit=41615385 read=192119
               ->  Nested Loop  (cost=475.66..8909.30 rows=1 width=22) (actual time=8756.039..1556042.819 rows=2518 loops=1)
                     Join Filter: (mc.movie_id = mi.movie_id)
                     Rows Removed by Join Filter: 2593675151
                     Buffers: shared hit=36488251 read=189127
                     ->  Hash Join  (cost=475.63..7763.18 rows=1 width=14) (actual time=8190.882..8760.192 rows=1943 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=9 read=170341
                           ->  Hash Join  (cost=475.58..7763.13 rows=82 width=18) (actual time=5465.718..8756.796 rows=2137 loops=1)
                                 Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=5 read=170341
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=273566 width=8) (actual time=4793.489..7994.447 rows=274644 loops=1)
                                       Filter: (info = ANY ('{Drama,Horror}'::text[]))
                                       Rows Removed by Filter: 14561076
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=475.52..475.52 rows=468 width=10) (actual time=672.202..672.202 rows=15849 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Nested Loop  (cost=0.00..475.52 rows=468 width=10) (actual time=0.047..664.964 rows=15849 loops=1)
                                             Join Filter: (it2.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 37013
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.023 rows=1 loops=1)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=0.023..652.881 rows=52862 loops=1)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 1327173
                                                   Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.021 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash Join  (cost=0.03..1050.38 rows=652282 width=8) (actual time=255.641..692.901 rows=1334883 loops=1943)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=36488242 read=18786
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.002..185.217 rows=2609129 loops=1943)
                                 Buffers: shared hit=36488241 read=18786
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=0.004..22.194 rows=57762 loops=2518)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 102223
                     Buffers: shared hit=5127134 read=2992
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=445860 width=21) (actual time=0.009..316.883 rows=415678 loops=1311)
               Filter: ((production_year >= 2005) AND (production_year <= 2008))
               Rows Removed by Filter: 1911539
               Buffers: shared hit=43497346 read=35997
 Planning Time: 4958.858 ms
 Execution Time: 2086577.459 ms
(68 rows)


                                                                                                                                QUERY PLAN                                                                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=200618.96..200618.96 rows=1 width=192) (actual time=29589.380..29589.380 rows=1 loops=1)
   Buffers: shared hit=8455671 read=85146
   ->  Hash Join  (cost=140563.74..200618.96 rows=1 width=84) (actual time=28047.989..29589.348 rows=4 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=8455671 read=85146
         ->  Hash Join  (cost=140557.61..200612.84 rows=1 width=88) (actual time=28025.841..29567.194 rows=4 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=8455668 read=85144
               ->  Hash Join  (cost=135944.17..195999.39 rows=1 width=73) (actual time=27251.375..28792.720 rows=4 loops=1)
                     Hash Cond: (mc.movie_id = t.id)
                     Buffers: shared hit=8223954 read=81304
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=18.503..1263.966 rows=2609129 loops=1)
                           Buffers: shared hit=1476114 read=4
                     ->  Hash  (cost=135944.15..135944.15 rows=1 width=81) (actual time=27199.334..27199.334 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=6747840 read=81300
                           ->  Hash Join  (cost=112607.67..135944.15 rows=1 width=81) (actual time=25504.393..27199.322 rows=1 loops=1)
                                 Hash Cond: (t.id = ml.movie_id)
                                 Buffers: shared hit=6747840 read=81300
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=46.862..1440.259 rows=2528312 loops=1)
                                       Buffers: shared hit=2532774 read=4
                                 ->  Hash  (cost=112607.66..112607.66 rows=1 width=72) (actual time=25439.088..25439.088 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=4215066 read=81296
                                       ->  Hash Join  (cost=89350.50..112607.66 rows=1 width=72) (actual time=16212.748..25439.076 rows=1 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=4215066 read=81296
                                             ->  Hash Join  (cost=89344.37..112601.53 rows=1 width=76) (actual time=16192.797..25419.124 rows=3 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it.id)
                                                   Buffers: shared hit=4215066 read=81294
                                                   ->  Hash Join  (cost=89338.25..112595.40 rows=1 width=80) (actual time=16192.724..25419.049 rows=6 loops=1)
                                                         Hash Cond: (t.id = mi_idx.movie_id)
                                                         Buffers: shared hit=4215064 read=81294
                                                         ->  Hash Join  (cost=77103.48..100360.64 rows=1 width=66) (actual time=14533.897..23760.220 rows=3 loops=1)
                                                               Hash Cond: (ml.link_type_id = lt.id)
                                                               Buffers: shared hit=4201499 read=69068
                                                               ->  Hash Join  (cost=77094.29..100351.45 rows=15 width=70) (actual time=14513.544..23746.581 rows=87 loops=1)
                                                                     Hash Cond: (t.id = ml.linked_movie_id)
                                                                     Buffers: shared hit=4201499 read=69066
                                                                     ->  Hash Join  (cost=6.14..23256.00 rows=17081 width=21) (actual time=402.416..10325.095 rows=4058 loops=1)
                                                                           Hash Cond: (t.kind_id = kt.id)
                                                                           Buffers: shared hit=2489876 read=42904
                                                                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=119565 width=25) (actual time=402.353..10306.811 rows=119565 loops=1)
                                                                                 Filter: (production_year = 2007)
                                                                                 Rows Removed by Filter: 2408747
                                                                                 Buffers: shared hit=2489874 read=42904
                                                                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.035..0.035 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                                                                       Index Cond: ((kind)::text = 'tv series'::text)
                                                                                       Buffers: shared hit=2
                                                                     ->  Hash  (cost=77087.84..77087.84 rows=2162 width=49) (actual time=13419.768..13419.768 rows=39612 loops=1)
                                                                           Buckets: 65536 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 4128kB
                                                                           Buffers: shared hit=1711623 read=26162
                                                                           ->  Hash Join  (cost=76808.40..77087.84 rows=2162 width=49) (actual time=13259.472..13389.600 rows=39612 loops=1)
                                                                                 Hash Cond: (ml.movie_id = mi_idx.movie_id)
                                                                                 Buffers: shared hit=1711623 read=26162
                                                                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=22.231..122.348 rows=29997 loops=1)
                                                                                       Buffers: shared hit=76 read=246
                                                                                 ->  Hash  (cost=76803.52..76803.52 rows=33151 width=37) (actual time=13236.768..13236.768 rows=131515 loops=1)
                                                                                       Buckets: 262144 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 11502kB
                                                                                       Buffers: shared hit=1711547 read=25916
                                                                                       ->  Hash Join  (cost=16831.12..76803.52 rows=33151 width=37) (actual time=4643.673..13176.160 rows=131515 loops=1)
                                                                                             Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                                                             Buffers: shared hit=1711547 read=25916
                                                                                             ->  Hash Join  (cost=4597.56..64561.62 rows=25981 width=23) (actual time=3861.983..12324.237 rows=56410 loops=1)
                                                                                                   Hash Cond: (mc.company_id = cn.id)
                                                                                                   Buffers: shared hit=1685756 read=25916
                                                                                                   ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.019..11663.069 rows=2609129 loops=1)
                                                                                                         Buffers: shared hit=1450202 read=25916
                                                                                                   ->  Hash  (cost=4597.20..4597.20 rows=2340 width=23) (actual time=164.692..164.692 rows=2340 loops=1)
                                                                                                         Buckets: 4096  Batches: 1  Memory Usage: 160kB
                                                                                                         Buffers: shared hit=235554
                                                                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=2340 width=23) (actual time=0.039..163.782 rows=2340 loops=1)
                                                                                                               Filter: ((country_code)::text = '[nl]'::text)
                                                                                                               Rows Removed by Filter: 232657
                                                                                                               Buffers: shared hit=235554
                                                                                             ->  Hash  (cost=12031.00..12031.00 rows=1380035 width=14) (actual time=767.503..767.504 rows=1380035 loops=1)
                                                                                                   Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                                                                   Buffers: shared hit=25791
                                                                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.063..418.981 rows=1380035 loops=1)
                                                                                                         Buffers: shared hit=25791
                                                               ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=13.601..13.601 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=2
                                                                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=4) (actual time=13.567..13.589 rows=2 loops=1)
                                                                           Filter: ((link)::text ~~ '%follow%'::text)
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared read=2
                                                         ->  Hash  (cost=12138.14..12138.14 rows=658313 width=14) (actual time=1650.976..1650.976 rows=658295 loops=1)
                                                               Buckets: 1048576  Batches: 1  Memory Usage: 39793kB
                                                               Buffers: shared hit=13565 read=12226
                                                               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=658313 width=14) (actual time=42.939..1361.950 rows=658295 loops=1)
                                                                     Filter: (info < '3.0'::text)
                                                                     Rows Removed by Filter: 721740
                                                                     Buffers: shared hit=13565 read=12226
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=2
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=19.905..19.905 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=19.889..19.892 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared read=2
               ->  Hash  (cost=4578.95..4578.95 rows=234997 width=23) (actual time=773.262..773.262 rows=234997 loops=1)
                     Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                     Buffers: shared hit=231714 read=3840
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4578.95 rows=234997 width=23) (actual time=37.215..699.907 rows=234997 loops=1)
                           Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=22.126..22.126 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=22.097..22.100 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'tv series'::text)
                     Buffers: shared read=2
 Planning Time: 5826.875 ms
 Execution Time: 29593.194 ms
(122 rows)


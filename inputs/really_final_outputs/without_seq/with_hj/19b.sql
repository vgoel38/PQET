                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1115956.83..1115956.83 rows=1 width=64) (actual time=71565.702..71565.703 rows=1 loops=1)
   Buffers: shared hit=8232221 read=711533
   ->  Hash Join  (cost=499511.76..1115956.83 rows=1 width=32) (actual time=66421.138..71565.681 rows=15 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=8232221 read=711533
         ->  Hash Join  (cost=494902.11..1111347.18 rows=1 width=36) (actual time=65713.762..70858.299 rows=15 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=8000504 read=707693
               ->  Hash Join  (cost=459810.54..1076255.62 rows=1 width=40) (actual time=63922.857..69067.387 rows=15 loops=1)
                     Hash Cond: (n.id = an.person_id)
                     Buffers: shared hit=7972920 read=696520
                     ->  Hash Join  (cost=452009.46..1068454.53 rows=1 width=48) (actual time=63518.082..68662.606 rows=3 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=7972920 read=694054
                           ->  Hash Join  (cost=6.14..616451.14 rows=619 width=4) (actual time=12314.072..19140.096 rows=69478 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=94252 read=202852
                                 ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=69999 width=8) (actual time=12292.484..19090.357 rows=69478 loops=1)
                                       Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                       Rows Removed by Filter: 14766242
                                       Buffers: shared hit=94252 read=202850
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.561..21.562 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=21.543..21.546 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'release dates'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=452003.32..452003.32 rows=1 width=60) (actual time=49509.000..49509.000 rows=3 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=7878668 read=491202
                                 ->  Hash Join  (cost=133140.38..452003.32 rows=1 width=60) (actual time=35981.401..49508.969 rows=3 loops=1)
                                       Hash Cond: (ci.movie_id = t.id)
                                       Buffers: shared hit=7878668 read=491202
                                       ->  Hash Join  (cost=49142.48..368005.42 rows=39 width=31) (actual time=12384.709..27910.847 rows=453 loops=1)
                                             Hash Cond: (ci.role_id = rt.id)
                                             Buffers: shared hit=3938600 read=422374
                                             ->  Hash Join  (cost=49136.35..367999.25 rows=472 width=35) (actual time=12380.493..27906.169 rows=453 loops=1)
                                                   Hash Cond: (ci.person_id = n.id)
                                                   Buffers: shared hit=3938600 read=422372
                                                   ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..318804.85 rows=712274 width=16) (actual time=44.787..23376.877 rows=713828 loops=1)
                                                         Filter: (note = '(voice)'::text)
                                                         Rows Removed by Filter: 35530516
                                                         Buffers: shared hit=2 read=351686
                                                   ->  Hash  (cost=49135.93..49135.93 rows=2762 width=19) (actual time=4368.128..4368.128 rows=5409 loops=1)
                                                         Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                                         Buffers: shared hit=3938598 read=70686
                                                         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=2762 width=19) (actual time=1955.597..4365.856 rows=5409 loops=1)
                                                               Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 4162082
                                                               Buffers: shared hit=3938598 read=70686
                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=4.172..4.173 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=4.160..4.163 rows=1 loops=1)
                                                         Index Cond: ((role)::text = 'actress'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=83997.90..83997.90 rows=1 width=29) (actual time=21597.894..21597.894 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=3940068 read=68828
                                             ->  Hash Join  (cost=23630.96..83997.90 rows=1 width=29) (actual time=20174.020..21597.879 rows=4 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=3940068 read=68828
                                                   ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..60359.09 rows=96436 width=8) (actual time=29.792..11947.794 rows=198519 loops=1)
                                                         Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                         Rows Removed by Filter: 2410610
                                                         Buffers: shared hit=1450198 read=25920
                                                   ->  Hash  (cost=23630.94..23630.94 rows=18 width=21) (actual time=9617.107..9617.108 rows=7 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2489870 read=42908
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=18 width=21) (actual time=770.501..9617.076 rows=7 loops=1)
                                                               Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                               Rows Removed by Filter: 2528305
                                                               Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=402.385..402.385 rows=901343 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                           Buffers: shared read=2466
                           ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=44.997..194.500 rows=901343 loops=1)
                                 Heap Fetches: 0
                                 Buffers: shared read=2466
               ->  Hash  (cost=34630.62..34630.62 rows=3140339 width=4) (actual time=1781.380..1781.380 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
                     Buffers: shared hit=27584 read=11173
                     ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..34630.62 rows=3140339 width=4) (actual time=52.957..955.406 rows=3140339 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=27584 read=11173
         ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=707.044..707.044 rows=84843 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
               Buffers: shared hit=231714 read=3840
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=29.501..682.283 rows=84843 loops=1)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 150154
                     Buffers: shared hit=231714 read=3840
 Planning Time: 6607.618 ms
 Execution Time: 71570.617 ms
(94 rows)


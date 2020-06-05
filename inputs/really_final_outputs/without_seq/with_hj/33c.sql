                                                                                                                                 QUERY PLAN                                                                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=200987.36..200987.36 rows=1 width=192) (actual time=29305.982..29305.982 rows=1 loops=1)
   Buffers: shared hit=8455671 read=85146
   ->  Hash Join  (cost=140932.13..200987.36 rows=1 width=84) (actual time=27764.025..29305.855 rows=114 loops=1)
         Hash Cond: (mc.company_id = cn2.id)
         Buffers: shared hit=8455671 read=85146
         ->  Hash Join  (cost=136318.69..196373.91 rows=1 width=69) (actual time=26945.199..28486.969 rows=114 loops=1)
               Hash Cond: (mi_idx.info_type_id = it.id)
               Buffers: shared hit=8223954 read=81306
               ->  Hash Join  (cost=136312.56..196367.78 rows=1 width=73) (actual time=26926.944..28468.639 rows=342 loops=1)
                     Hash Cond: (mc.movie_id = t.id)
                     Buffers: shared hit=8223954 read=81304
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=24.838..1265.316 rows=2609129 loops=1)
                           Buffers: shared hit=1476114 read=4
                     ->  Hash  (cost=136312.55..136312.55 rows=1 width=81) (actual time=26869.468..26869.468 rows=138 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 25kB
                           Buffers: shared hit=6747840 read=81300
                           ->  Hash Join  (cost=76257.33..136312.55 rows=1 width=81) (actual time=23038.598..26869.324 rows=138 loops=1)
                                 Hash Cond: (mc.company_id = cn1.id)
                                 Buffers: shared hit=6747840 read=81300
                                 ->  Hash Join  (cost=71641.60..131696.82 rows=1 width=66) (actual time=19656.264..26658.349 rows=153 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=6512286 read=81300
                                       ->  Hash Join  (cost=71632.41..131687.63 rows=1 width=70) (actual time=19635.145..26637.127 rows=153 loops=1)
                                             Hash Cond: (t.id = mi_idx.movie_id)
                                             Buffers: shared hit=6512286 read=81298
                                             ->  Hash Join  (cost=59398.85..119454.07 rows=2 width=72) (actual time=18128.868..25130.714 rows=54 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=6498721 read=69072
                                                   ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.014..11968.086 rows=2609129 loops=1)
                                                         Buffers: shared hit=1450202 read=25916
                                                   ->  Hash  (cost=59398.84..59398.84 rows=2 width=64) (actual time=12697.744..12697.744 rows=21 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 11kB
                                                         Buffers: shared hit=5048519 read=43156
                                                         ->  Hash Join  (cost=36062.35..59398.84 rows=2 width=64) (actual time=10968.295..12697.711 rows=21 loops=1)
                                                               Hash Cond: (ml.link_type_id = lt.id)
                                                               Buffers: shared hit=5048519 read=43156
                                                               ->  Hash Join  (cost=36053.16..59389.65 rows=9 width=68) (actual time=10942.165..12688.166 rows=870 loops=1)
                                                                     Hash Cond: (t.id = ml.movie_id)
                                                                     Buffers: shared hit=5048519 read=43154
                                                                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=32.407..1439.059 rows=2528312 loops=1)
                                                                           Buffers: shared hit=2532774 read=4
                                                                     ->  Hash  (cost=36053.15..36053.15 rows=9 width=43) (actual time=10907.563..10907.563 rows=870 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 73kB
                                                                           Buffers: shared hit=2515745 read=43150
                                                                           ->  Hash Join  (cost=12492.84..36053.15 rows=9 width=43) (actual time=1165.041..10907.033 rows=870 loops=1)
                                                                                 Hash Cond: (t.id = ml.linked_movie_id)
                                                                                 Buffers: shared hit=2515745 read=43150
                                                                                 ->  Hash Join  (cost=12212.64..35769.14 rows=737 width=31) (actual time=721.269..10783.273 rows=6494 loops=1)
                                                                                       Hash Cond: (t.kind_id = kt.id)
                                                                                       Buffers: shared hit=2515669 read=42904
                                                                                       ->  Hash Join  (cost=12203.45..35759.70 rows=2579 width=35) (actual time=721.213..10778.572 rows=19818 loops=1)
                                                                                             Hash Cond: (t.id = mi_idx.movie_id)
                                                                                             Buffers: shared hit=2515667 read=42904
                                                                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=25) (actual time=23.602..10019.557 rows=1042800 loops=1)
                                                                                                   Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                   Rows Removed by Filter: 1485512
                                                                                                   Buffers: shared hit=2489874 read=42904
                                                                                             ->  Hash  (cost=12202.52..12202.52 rows=6253 width=10) (actual time=498.470..498.470 rows=36749 loops=1)
                                                                                                   Buckets: 65536 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 1948kB
                                                                                                   Buffers: shared hit=25793
                                                                                                   ->  Hash Join  (cost=6.14..12202.52 rows=6253 width=10) (actual time=0.136..489.164 rows=36749 loops=1)
                                                                                                         Hash Cond: (mi_idx.info_type_id = it.id)
                                                                                                         Buffers: shared hit=25793
                                                                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=706570 width=14) (actual time=0.048..407.775 rows=706560 loops=1)
                                                                                                               Filter: (info < '3.5'::text)
                                                                                                               Rows Removed by Filter: 673475
                                                                                                               Buffers: shared hit=25791
                                                                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.042..0.042 rows=1 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared hit=2
                                                                                                               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.031..0.033 rows=1 loops=1)
                                                                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                                                                     Buffers: shared hit=2
                                                                                       ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=0.026..0.026 rows=2 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=2
                                                                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.017..0.020 rows=2 loops=1)
                                                                                                   Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                                                                   Rows Removed by Filter: 5
                                                                                                   Buffers: shared hit=2
                                                                                 ->  Hash  (cost=275.80..275.80 rows=29997 width=12) (actual time=120.082..120.082 rows=29997 loops=1)
                                                                                       Buckets: 32768  Batches: 1  Memory Usage: 1545kB
                                                                                       Buffers: shared hit=76 read=246
                                                                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=16.966..100.419 rows=29997 loops=1)
                                                                                             Buffers: shared hit=76 read=246
                                                               ->  Hash  (cost=9.19..9.19 rows=3 width=4) (actual time=9.423..9.423 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=2
                                                                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=3 width=4) (actual time=9.388..9.410 rows=2 loops=1)
                                                                           Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared read=2
                                             ->  Hash  (cost=12031.00..12031.00 rows=1380035 width=14) (actual time=1491.616..1491.616 rows=1380035 loops=1)
                                                   Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                   Buffers: shared hit=13565 read=12226
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=37.735..993.450 rows=1380035 loops=1)
                                                         Buffers: shared hit=13565 read=12226
                                       ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=21.096..21.096 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=21.075..21.083 rows=2 loops=1)
                                                   Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                   Rows Removed by Filter: 5
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=209.924..209.925 rows=126230 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                       Buffers: shared hit=235554
                                       ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..4597.20 rows=126230 width=23) (actual time=0.038..172.581 rows=126230 loops=1)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 108767
                                             Buffers: shared hit=235554
               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=18.234..18.234 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=18.219..18.222 rows=1 loops=1)
                           Index Cond: ((info)::text = 'rating'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=4578.95..4578.95 rows=234997 width=23) (actual time=818.185..818.185 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 15097kB
               Buffers: shared hit=231714 read=3840
               ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..4578.95 rows=234997 width=23) (actual time=40.054..745.319 rows=234997 loops=1)
                     Buffers: shared hit=231714 read=3840
 Planning Time: 5805.350 ms
 Execution Time: 29308.638 ms
(124 rows)


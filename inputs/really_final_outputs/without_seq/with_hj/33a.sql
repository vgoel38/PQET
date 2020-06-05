                                                                                                                                 QUERY PLAN                                                                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=200898.29..200898.29 rows=1 width=192) (actual time=28725.324..28725.324 rows=1 loops=1)
   Buffers: shared hit=8455671 read=85146
   ->  Hash Join  (cost=140843.07..200898.29 rows=1 width=84) (actual time=27199.501..28725.284 rows=8 loops=1)
         Hash Cond: (mc2.company_id = cn2.id)
         Buffers: shared hit=8455671 read=85146
         ->  Hash Join  (cost=136229.62..196284.84 rows=1 width=69) (actual time=26330.094..27855.866 rows=8 loops=1)
               Hash Cond: (mi_idx1.info_type_id = it1.id)
               Buffers: shared hit=8223954 read=81306
               ->  Hash Join  (cost=136223.50..196278.72 rows=1 width=73) (actual time=26303.680..27829.444 rows=24 loops=1)
                     Hash Cond: (mc2.movie_id = t2.id)
                     Buffers: shared hit=8223954 read=81304
                     ->  Index Scan using company_id_movie_companies on movie_companies mc2  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=24.776..1259.132 rows=2609129 loops=1)
                           Buffers: shared hit=1476114 read=4
                     ->  Hash  (cost=136223.48..136223.48 rows=1 width=81) (actual time=26243.496..26243.496 rows=6 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=6747840 read=81300
                           ->  Hash Join  (cost=76168.26..136223.48 rows=1 width=81) (actual time=21032.584..26243.470 rows=6 loops=1)
                                 Hash Cond: (mc1.company_id = cn1.id)
                                 Buffers: shared hit=6747840 read=81300
                                 ->  Hash Join  (cost=71558.61..131613.83 rows=1 width=66) (actual time=20838.470..26049.329 rows=42 loops=1)
                                       Hash Cond: (t1.kind_id = kt1.id)
                                       Buffers: shared hit=6512286 read=81300
                                       ->  Hash Join  (cost=71552.48..131607.70 rows=1 width=70) (actual time=20817.302..26028.114 rows=42 loops=1)
                                             Hash Cond: (t1.id = mi_idx1.movie_id)
                                             Buffers: shared hit=6512286 read=81298
                                             ->  Hash Join  (cost=59318.92..119374.15 rows=1 width=72) (actual time=19260.542..24471.297 rows=15 loops=1)
                                                   Hash Cond: (mc1.movie_id = t1.id)
                                                   Buffers: shared hit=6498721 read=69072
                                                   ->  Index Scan using company_id_movie_companies on movie_companies mc1  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.013..11754.587 rows=2609129 loops=1)
                                                         Buffers: shared hit=1450202 read=25916
                                                   ->  Hash  (cost=59318.91..59318.91 rows=1 width=64) (actual time=12259.205..12259.205 rows=6 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=5048519 read=43156
                                                         ->  Hash Join  (cost=35982.43..59318.91 rows=1 width=64) (actual time=10566.912..12259.187 rows=6 loops=1)
                                                               Hash Cond: (ml.link_type_id = lt.id)
                                                               Buffers: shared hit=5048519 read=43156
                                                               ->  Hash Join  (cost=35973.24..59309.72 rows=2 width=68) (actual time=10541.727..12250.181 rows=254 loops=1)
                                                                     Hash Cond: (t1.id = ml.movie_id)
                                                                     Buffers: shared hit=5048519 read=43154
                                                                     ->  Index Scan using title_idx_id on title t1  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=32.412..1415.521 rows=2528312 loops=1)
                                                                           Buffers: shared hit=2532774 read=4
                                                                     ->  Hash  (cost=35973.22..35973.22 rows=2 width=43) (actual time=10507.018..10507.018 rows=254 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 28kB
                                                                           Buffers: shared hit=2515745 read=43150
                                                                           ->  Hash Join  (cost=12485.74..35973.22 rows=2 width=43) (actual time=1181.765..10506.792 rows=254 loops=1)
                                                                                 Hash Cond: (t2.id = ml.linked_movie_id)
                                                                                 Buffers: shared hit=2515745 read=43150
                                                                                 ->  Hash Join  (cost=12205.53..35692.26 rows=147 width=31) (actual time=1039.472..10385.265 rows=1182 loops=1)
                                                                                       Hash Cond: (t2.kind_id = kt2.id)
                                                                                       Buffers: shared hit=2515669 read=42904
                                                                                       ->  Hash Join  (cost=12199.41..35686.04 rows=1027 width=35) (actual time=1019.339..10383.518 rows=6419 loops=1)
                                                                                             Hash Cond: (t2.id = mi_idx2.movie_id)
                                                                                             Buffers: shared hit=2515667 read=42904
                                                                                             ->  Index Scan using title_idx_id on title t2  (cost=0.01..23434.65 rows=445860 width=25) (actual time=23.308..9768.735 rows=445860 loops=1)
                                                                                                   Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                                                                                   Rows Removed by Filter: 2082452
                                                                                                   Buffers: shared hit=2489874 read=42904
                                                                                             ->  Hash  (cost=12198.54..12198.54 rows=5826 width=10) (actual time=486.432..486.432 rows=25591 loops=1)
                                                                                                   Buckets: 32768 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 1256kB
                                                                                                   Buffers: shared hit=25793
                                                                                                   ->  Hash Join  (cost=6.14..12198.54 rows=5826 width=10) (actual time=0.209..479.996 rows=25591 loops=1)
                                                                                                         Hash Cond: (mi_idx2.info_type_id = it2.id)
                                                                                                         Buffers: shared hit=25793
                                                                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx2  (cost=0.01..12138.14 rows=658313 width=14) (actual time=0.046..405.708 rows=658295 loops=1)
                                                                                                               Filter: (info < '3.0'::text)
                                                                                                               Rows Removed by Filter: 721740
                                                                                                               Buffers: shared hit=25791
                                                                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.035..0.035 rows=1 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared hit=2
                                                                                                               ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.022..0.024 rows=1 loops=1)
                                                                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                                                                     Buffers: shared hit=2
                                                                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=2
                                                                                             ->  Index Scan using kind_type_kind_key on kind_type kt2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                                                                                   Index Cond: ((kind)::text = 'tv series'::text)
                                                                                                   Buffers: shared hit=2
                                                                                 ->  Hash  (cost=275.80..275.80 rows=29997 width=12) (actual time=120.420..120.420 rows=29997 loops=1)
                                                                                       Buckets: 32768  Batches: 1  Memory Usage: 1545kB
                                                                                       Buffers: shared hit=76 read=246
                                                                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=16.998..102.681 rows=29997 loops=1)
                                                                                             Buffers: shared hit=76 read=246
                                                               ->  Hash  (cost=9.19..9.19 rows=3 width=4) (actual time=8.957..8.957 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=2
                                                                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=3 width=4) (actual time=8.922..8.944 rows=2 loops=1)
                                                                           Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared read=2
                                             ->  Hash  (cost=12031.00..12031.00 rows=1380035 width=14) (actual time=1542.516..1542.517 rows=1380035 loops=1)
                                                   Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                   Buffers: shared hit=13565 read=12226
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx1  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=38.170..1043.704 rows=1380035 loops=1)
                                                         Buffers: shared hit=13565 read=12226
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=21.146..21.146 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using kind_type_kind_key on kind_type kt1  (cost=0.00..6.12 rows=1 width=4) (actual time=21.132..21.135 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'tv series'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=4597.20..4597.20 rows=84843 width=23) (actual time=193.109..193.109 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                       Buffers: shared hit=235554
                                       ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..4597.20 rows=84843 width=23) (actual time=0.050..167.120 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=235554
               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=26.393..26.393 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=26.378..26.381 rows=1 loops=1)
                           Index Cond: ((info)::text = 'rating'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=4578.95..4578.95 rows=234997 width=23) (actual time=868.776..868.776 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 15097kB
               Buffers: shared hit=231714 read=3840
               ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..4578.95 rows=234997 width=23) (actual time=73.737..794.365 rows=234997 loops=1)
                     Buffers: shared hit=231714 read=3840
 Planning Time: 6004.971 ms
 Execution Time: 28727.935 ms
(122 rows)


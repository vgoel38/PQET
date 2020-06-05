                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1515609.56..1515609.56 rows=1 width=128) (actual time=109610.403..109610.403 rows=1 loops=1)
   Buffers: shared hit=10084939 read=746531
   ->  Hash Join  (cost=804596.72..1515609.56 rows=1 width=80) (actual time=55022.412..109610.204 rows=84 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=10084939 read=746531
         ->  Hash Join  (cost=755529.03..1466541.87 rows=1 width=69) (actual time=49861.199..104448.909 rows=84 loops=1)
               Hash Cond: (t.id = mc.movie_id)
               Buffers: shared hit=6146338 read=675845
               ->  Hash Join  (cost=690977.23..1401990.07 rows=1 width=89) (actual time=37320.508..91908.116 rows=108 loops=1)
                     Hash Cond: (t.id = mi.movie_id)
                     Buffers: shared hit=4464426 read=646085
                     ->  Hash Join  (cost=23827.33..734840.14 rows=254 width=29) (actual time=10909.622..69142.604 rows=637 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=4341627 read=394594
                           ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=64.640..58501.317 rows=1244716 loops=1)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 34999628
                                 Buffers: shared hit=1851757 read=351686
                           ->  Hash  (cost=23827.24..23827.24 rows=516 width=21) (actual time=10280.103..10280.103 rows=533 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 43kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23827.24 rows=516 width=21) (actual time=800.952..10279.427 rows=533 loops=1)
                                       Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                       Rows Removed by Filter: 2527779
                                       Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=667149.90..667149.90 rows=1 width=60) (actual time=22764.728..22764.728 rows=31514 loops=1)
                           Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2107kB
                           Buffers: shared hit=122799 read=251491
                           ->  Hash Join  (cost=51856.38..667149.90 rows=1 width=60) (actual time=6561.612..22744.672 rows=31514 loops=1)
                                 Hash Cond: (mi.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=122799 read=251491
                                 ->  Hash Join  (cost=6.14..615299.58 rows=650 width=46) (actual time=2074.196..18208.572 rows=72258 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=87582 read=202431
                                       ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=73417 width=50) (actual time=2062.582..18159.686 rows=73047 loops=1)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 14762673
                                             Buffers: shared hit=87582 read=202429
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.559..11.559 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=11.535..11.539 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'genres'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=51850.24..51850.24 rows=6 width=14) (actual time=4487.372..4487.373 rows=63701 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3335kB
                                       Buffers: shared hit=35217 read=49060
                                       ->  Hash Join  (cost=12195.63..51850.24 rows=6 width=14) (actual time=1705.227..4458.126 rows=63701 loops=1)
                                             Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=35217 read=49060
                                             ->  Hash Join  (cost=42.94..39697.53 rows=236 width=4) (actual time=119.460..2824.073 rows=76714 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=21650 read=36834
                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.813..1920.897 rows=4523930 loops=1)
                                                         Buffers: shared hit=21636 read=36817
                                                   ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=79.175..79.175 rows=7 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=14 read=17
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=38.523..79.133 rows=7 loops=1)
                                                               Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                               Buffers: shared hit=14 read=17
                                             ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1585.677..1585.678 rows=459925 loops=1)
                                                   Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                   Buffers: shared hit=13567 read=12226
                                                   ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=39.660..1403.063 rows=459925 loops=1)
                                                         Hash Cond: (mi_idx.info_type_id = it.id)
                                                         Buffers: shared hit=13567 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=39.560..973.703 rows=1380035 loops=1)
                                                               Buffers: shared hit=13565 read=12226
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.046 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=2
                                                               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.034..0.036 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'votes'::text)
                                                                     Buffers: shared hit=2
               ->  Hash  (cost=64551.80..64551.80 rows=1 width=4) (actual time=12540.635..12540.635 rows=135 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 13kB
                     Buffers: shared hit=1681912 read=29760
                     ->  Hash Join  (cost=4597.22..64551.80 rows=1 width=4) (actual time=11505.624..12540.576 rows=135 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=1681912 read=29760
                           ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59953.95 rows=7977 width=8) (actual time=7537.688..11799.373 rows=7963 loops=1)
                                 Filter: (note ~~ '%(Blu-ray)%'::text)
                                 Rows Removed by Filter: 2601166
                                 Buffers: shared hit=1450198 read=25920
                           ->  Hash  (cost=4597.20..4597.20 rows=30 width=4) (actual time=739.654..739.654 rows=10 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=231714 read=3840
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=30 width=4) (actual time=272.306..739.608 rows=10 loops=1)
                                       Filter: (name ~~ 'Lionsgate%'::text)
                                       Rows Removed by Filter: 234987
                                       Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=5156.399..5156.399 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=63.121..4535.154 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 14137.891 ms
 Execution Time: 109613.200 ms
(101 rows)


                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1454123.13..1454123.13 rows=1 width=128) (actual time=98460.104..98460.105 rows=1 loops=1)
   Buffers: shared hit=8489948 read=717877
   ->  Hash Join  (cost=743066.79..1454123.13 rows=1 width=80) (actual time=39939.669..98457.883 rows=757 loops=1)
         Hash Cond: (cc.subject_id = cct.id)
         Buffers: shared hit=8489948 read=717877
         ->  Hash Join  (cost=743057.61..1454113.94 rows=1 width=84) (actual time=39939.364..98456.703 rows=757 loops=1)
               Hash Cond: (cc.status_id = cct.id)
               Buffers: shared hit=8489945 read=717875
               ->  Hash Join  (cost=743051.48..1454107.82 rows=1 width=88) (actual time=39939.274..98455.012 rows=2492 loops=1)
                     Hash Cond: (t.id = cc.movie_id)
                     Buffers: shared hit=8489944 read=717874
                     ->  Hash Join  (cost=739748.15..1450804.48 rows=1 width=100) (actual time=39459.995..98082.886 rows=6214 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=8403024 read=716771
                           ->  Hash Join  (cost=690680.46..1401736.80 rows=1 width=89) (actual time=34382.911..92995.426 rows=9688 loops=1)
                                 Hash Cond: (ci.movie_id = t.id)
                                 Buffers: shared hit=4464426 read=646085
                                 ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=138.460..58349.173 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851757 read=351686
                                 ->  Hash  (cost=690680.45..690680.45 rows=1 width=81) (actual time=34115.697..34115.697 rows=14411 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1274kB
                                       Buffers: shared hit=2612669 read=294399
                                       ->  Hash Join  (cost=75384.51..690680.45 rows=1 width=81) (actual time=16996.866..34104.531 rows=14411 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=2612669 read=294399
                                             ->  Hash Join  (cost=75378.38..690674.32 rows=1 width=85) (actual time=16976.958..34070.543 rows=43312 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=2612669 read=294397
                                                   ->  Hash Join  (cost=63144.82..678440.76 rows=1 width=71) (actual time=15342.872..32412.629 rows=16404 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared hit=2599104 read=282171
                                                         ->  Hash Join  (cost=63138.70..678434.63 rows=4 width=75) (actual time=15342.836..32404.088 rows=16404 loops=1)
                                                               Hash Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=2599102 read=282171
                                                               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=73417 width=50) (actual time=2312.394..19337.840 rows=73047 loops=1)
                                                                     Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                                     Rows Removed by Filter: 14762673
                                                                     Buffers: shared hit=87582 read=202429
                                                               ->  Hash  (cost=63138.67..63138.67 rows=129 width=25) (actual time=13030.372..13030.372 rows=32779 loops=1)
                                                                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2390kB
                                                                     Buffers: shared hit=2511520 read=79742
                                                                     ->  Hash Join  (cost=23484.06..63138.67 rows=129 width=25) (actual time=10128.538..13013.447 rows=32779 loops=1)
                                                                           Hash Cond: (mk.movie_id = t.id)
                                                                           Buffers: shared hit=2511520 read=79742
                                                                           ->  Hash Join  (cost=42.94..39697.53 rows=236 width=4) (actual time=122.761..2969.632 rows=76714 loops=1)
                                                                                 Hash Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=21650 read=36834
                                                                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.727..2053.787 rows=4523930 loops=1)
                                                                                       Buffers: shared hit=21636 read=36817
                                                                                 ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=87.524..87.524 rows=7 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=14 read=17
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=38.546..87.482 rows=7 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                             Buffers: shared hit=14 read=17
                                                                           ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=21) (actual time=9992.879..9992.879 rows=1381453 loops=1)
                                                                                 Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                                                                 Buffers: shared hit=2489870 read=42908
                                                                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=41.589..9423.457 rows=1381453 loops=1)
                                                                                       Filter: (production_year > 2000)
                                                                                       Rows Removed by Filter: 1146859
                                                                                       Buffers: shared hit=2489870 read=42908
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=2
                                                               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'genres'::text)
                                                                     Buffers: shared hit=2
                                                   ->  Hash  (cost=12031.00..12031.00 rows=1380035 width=14) (actual time=1619.275..1619.276 rows=1380035 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                         Buffers: shared hit=13565 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=44.348..1078.156 rows=1380035 loops=1)
                                                               Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=19.876..19.876 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=19.849..19.852 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'votes'::text)
                                                         Buffers: shared read=2
                           ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=5071.804..5071.804 rows=1739579 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
                                 Buffers: shared hit=3938598 read=70686
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=69.279..4439.736 rows=1739579 loops=1)
                                       Filter: ((gender)::text = 'm'::text)
                                       Rows Removed by Filter: 2427912
                                       Buffers: shared hit=3938598 read=70686
                     ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=364.655..364.655 rows=135086 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                           Buffers: shared hit=86920 read=1103
                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=51.441..304.268 rows=135086 loops=1)
                                 Buffers: shared hit=86920 read=1103
               ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.061..0.061 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1 read=1
                     ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'complete+verified'::text)
                           Buffers: shared hit=1 read=1
         ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=0.238..0.238 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=2 width=4) (actual time=0.207..0.214 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                     Rows Removed by Filter: 2
                     Buffers: shared read=2
 Planning Time: 14685.428 ms
 Execution Time: 98486.419 ms
(108 rows)


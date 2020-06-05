                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1456409.28..1456409.28 rows=1 width=128) (actual time=96506.968..96506.968 rows=1 loops=1)
   Buffers: shared hit=8489949 read=717876
   ->  Hash Join  (cost=745352.95..1456409.28 rows=1 width=80) (actual time=39010.237..96476.043 rows=8024 loops=1)
         Hash Cond: (mi_idx.info_type_id = it.id)
         Buffers: shared hit=8489949 read=717876
         ->  Hash Join  (cost=745346.82..1456403.16 rows=1 width=84) (actual time=38993.367..96447.223 rows=24392 loops=1)
               Hash Cond: (t.id = mi_idx.movie_id)
               Buffers: shared hit=8489946 read=717874
               ->  Hash Join  (cost=733113.26..1444169.60 rows=1 width=94) (actual time=37405.935..94842.148 rows=8024 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=8476381 read=705648
                     ->  Hash Join  (cost=684045.58..1395101.91 rows=1 width=83) (actual time=32392.423..89818.085 rows=11866 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=4537783 read=634962
                           ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=137.095..57253.259 rows=1244716 loops=1)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 34999628
                                 Buffers: shared hit=1851757 read=351686
                           ->  Hash  (cost=684045.56..684045.56 rows=1 width=75) (actual time=32072.577..32072.577 rows=14666 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1197kB
                                 Buffers: shared hit=2686026 read=283276
                                 ->  Hash Join  (cost=66432.46..684045.56 rows=1 width=75) (actual time=16179.335..32064.143 rows=14666 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=2686026 read=283276
                                       ->  Hash Join  (cost=43019.30..660632.40 rows=1 width=54) (actual time=5324.079..21199.783 rows=14666 loops=1)
                                             Hash Cond: (mi.info_type_id = it.id)
                                             Buffers: shared hit=196156 read=240368
                                             ->  Hash Join  (cost=43013.18..660626.28 rows=2 width=58) (actual time=5324.037..21193.073 rows=18344 loops=1)
                                                   Hash Cond: (mi.movie_id = mk.movie_id)
                                                   Buffers: shared hit=196154 read=240368
                                                   ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..617591.08 rows=189170 width=50) (actual time=1835.614..17679.228 rows=188971 loops=1)
                                                         Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                                         Rows Removed by Filter: 14646749
                                                         Buffers: shared hit=87582 read=202429
                                                   ->  Hash  (cost=43013.16..43013.16 rows=4 width=8) (actual time=3459.312..3459.313 rows=12521 loops=1)
                                                         Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 618kB
                                                         Buffers: shared hit=108572 read=37939
                                                         ->  Hash Join  (cost=3358.53..43013.16 rows=4 width=8) (actual time=586.614..3453.557 rows=12521 loops=1)
                                                               Hash Cond: (cc.status_id = cct.id)
                                                               Buffers: shared hit=108572 read=37939
                                                               ->  Hash Join  (cost=3352.40..43007.04 rows=18 width=12) (actual time=562.240..3435.383 rows=25331 loops=1)
                                                                     Hash Cond: (cc.subject_id = cct.id)
                                                                     Buffers: shared hit=108572 read=37937
                                                                     ->  Hash Join  (cost=3346.28..43000.90 rows=71 width=16) (actual time=562.167..3423.248 rows=36010 loops=1)
                                                                           Hash Cond: (mk.movie_id = cc.movie_id)
                                                                           Buffers: shared hit=108570 read=37937
                                                                           ->  Hash Join  (cost=42.94..39697.53 rows=236 width=4) (actual time=128.762..2987.997 rows=76714 loops=1)
                                                                                 Hash Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=21650 read=36834
                                                                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=40.720..2082.987 rows=4523930 loops=1)
                                                                                       Buffers: shared hit=21636 read=36817
                                                                                 ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=87.536..87.537 rows=7 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=14 read=17
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=38.550..87.495 rows=7 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                             Buffers: shared hit=14 read=17
                                                                           ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=400.406..400.406 rows=135086 loops=1)
                                                                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                 Buffers: shared hit=86920 read=1103
                                                                                 ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=46.582..328.834 rows=135086 loops=1)
                                                                                       Buffers: shared hit=86920 read=1103
                                                                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.034..0.034 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=2
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.027..0.028 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'cast'::text)
                                                                                 Buffers: shared hit=2
                                                               ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=10.591..10.591 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=2
                                                                     ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=10.572..10.576 rows=1 loops=1)
                                                                           Index Cond: ((kind)::text = 'complete+verified'::text)
                                                                           Buffers: shared read=2
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'genres'::text)
                                                         Buffers: shared hit=2
                                       ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10828.495..10828.495 rows=2528312 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                                             Buffers: shared hit=2489870 read=42908
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=48.166..9810.235 rows=2528312 loops=1)
                                                   Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=5008.707..5008.707 rows=1739579 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=71.470..4375.600 rows=1739579 loops=1)
                                 Filter: ((gender)::text = 'm'::text)
                                 Rows Removed by Filter: 2427912
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=12031.00..12031.00 rows=1380035 width=14) (actual time=1572.517..1572.517 rows=1380035 loops=1)
                     Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                     Buffers: shared hit=13565 read=12226
                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=44.249..1029.004 rows=1380035 loops=1)
                           Buffers: shared hit=13565 read=12226
         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=16.837..16.837 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=16.814..16.818 rows=1 loops=1)
                     Index Cond: ((info)::text = 'votes'::text)
                     Buffers: shared read=2
 Planning Time: 14666.814 ms
 Execution Time: 96514.310 ms
(105 rows)


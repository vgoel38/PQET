                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=713443.27..713443.27 rows=1 width=64) (actual time=35523.061..35523.061 rows=1 loops=1)
   Buffers: shared hit=2917725 read=313515
   ->  Hash Join  (cost=95852.17..713443.27 rows=5 width=27) (actual time=29835.208..35522.533 rows=628 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=2917725 read=313515
         ->  Hash Join  (cost=94315.33..711906.43 rows=5 width=31) (actual time=29736.861..35423.543 rows=628 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=2917722 read=313025
               ->  Hash Join  (cost=94309.21..711900.30 rows=5 width=35) (actual time=29736.682..35422.805 rows=628 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=2917722 read=313023
                     ->  Hash Join  (cost=6.14..617597.23 rows=3 width=4) (actual time=11776.766..19243.820 rows=1783 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=87582 read=202431
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..617591.08 rows=328 width=8) (actual time=11745.550..19211.062 rows=1783 loops=1)
                                 Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                 Rows Removed by Filter: 14833937
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=31.184..31.184 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=31.163..31.164 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'release dates'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=94286.76..94286.76 rows=111092 width=51) (actual time=16176.952..16176.952 rows=1877764 loops=1)
                           Buckets: 2097152 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 162025kB
                           Buffers: shared hit=2830140 read=110592
                           ->  Hash Join  (cost=54472.70..94286.76 rows=111092 width=51) (actual time=13294.676..15505.089 rows=1877764 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2830140 read=110592
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.403..1593.965 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=54471.00..54471.00 rows=11478 width=43) (actual time=12724.311..12724.311 rows=21851 loops=1)
                                       Buckets: 32768 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 1795kB
                                       Buffers: shared hit=2808504 read=73775
                                       ->  Hash Join  (cost=31025.65..54471.00 rows=11478 width=43) (actual time=9399.495..12715.922 rows=21851 loops=1)
                                             Hash Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=2808504 read=73775
                                             ->  Hash Join  (cost=31016.47..54459.88 rows=20087 width=37) (actual time=3477.002..12682.809 rows=23689 loops=1)
                                                   Hash Cond: (t.id = mc.movie_id)
                                                   Buffers: shared hit=2808504 read=73773
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=25) (actual time=39.888..9262.587 rows=1749032 loops=1)
                                                         Filter: (production_year > 1990)
                                                         Rows Removed by Filter: 779280
                                                         Buffers: shared hit=2489870 read=42908
                                                   ->  Hash  (cost=31012.19..31012.19 rows=29037 width=12) (actual time=3018.355..3018.355 rows=105289 loops=1)
                                                         Buckets: 131072 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 5549kB
                                                         Buffers: shared hit=318634 read=30865
                                                         ->  Hash Join  (cost=7918.78..31012.19 rows=29037 width=12) (actual time=1254.565..2978.686 rows=105289 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=318634 read=30865
                                                               ->  Hash Join  (cost=3309.13..26395.98 rows=80426 width=16) (actual time=446.702..2098.448 rows=227682 loops=1)
                                                                     Hash Cond: (mc.movie_id = cc.movie_id)
                                                                     Buffers: shared hit=86920 read=27025
                                                                     ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=26.705..1087.381 rows=2609129 loops=1)
                                                                           Buffers: shared read=25920
                                                                     ->  Hash  (cost=3304.16..3304.16 rows=33772 width=4) (actual time=419.437..419.437 rows=24592 loops=1)
                                                                           Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                                           Buffers: shared hit=86920 read=1105
                                                                           ->  Hash Join  (cost=6.14..3304.16 rows=33772 width=4) (actual time=63.253..409.926 rows=24592 loops=1)
                                                                                 Hash Cond: (cc.status_id = cct.id)
                                                                                 Buffers: shared hit=86920 read=1105
                                                                                 ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=43.565..359.838 rows=135086 loops=1)
                                                                                       Buffers: shared hit=86920 read=1103
                                                                                 ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=6.391..6.391 rows=1 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared read=2
                                                                                       ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=6.373..6.377 rows=1 loops=1)
                                                                                             Index Cond: ((kind)::text = 'complete+verified'::text)
                                                                                             Buffers: shared read=2
                                                               ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=807.484..807.484 rows=84843 loops=1)
                                                                     Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                     Buffers: shared hit=231714 read=3840
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=34.508..781.907 rows=84843 loops=1)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 150154
                                                                           Buffers: shared hit=231714 read=3840
                                             ->  Hash  (cost=9.19..9.19 rows=4 width=14) (actual time=25.085..25.085 rows=4 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=4 width=14) (actual time=25.053..25.066 rows=4 loops=1)
                                                         Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=2
               ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=0.158..0.159 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=0.154..0.155 rows=4 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2
         ->  Hash  (cost=1517.14..1517.14 rows=134170 width=4) (actual time=97.712..97.712 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=490
               ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..1517.14 rows=134170 width=4) (actual time=28.085..69.708 rows=134170 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=490
 Planning Time: 8591.406 ms
 Execution Time: 35526.064 ms
(98 rows)


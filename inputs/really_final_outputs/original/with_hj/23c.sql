                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14223.93..14223.93 rows=1 width=64) (actual time=13585.620..13585.620 rows=1 loops=1)
   Buffers: shared hit=3 read=245811
   ->  Hash Join  (cost=4664.54..14223.93 rows=5 width=27) (actual time=7460.597..13585.430 rows=628 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3 read=245811
         ->  Hash Join  (cost=4605.80..14165.19 rows=5 width=31) (actual time=7373.013..13497.637 rows=628 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared read=244862
               ->  Hash Join  (cost=4605.77..14165.16 rows=5 width=35) (actual time=7364.571..13489.044 rows=628 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared read=244861
                     ->  Hash Join  (cost=0.05..9559.43 rows=3 width=4) (actual time=1544.416..8443.057 rows=1783 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared read=161893
                           ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=328 width=8) (actual time=1523.242..8420.604 rows=1783 loops=1)
                                 Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                 Rows Removed by Filter: 14833937
                                 Buffers: shared read=161892
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=21.115..21.115 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=21.068..21.102 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Hash  (cost=4589.41..4589.41 rows=111092 width=51) (actual time=5043.856..5043.856 rows=1877764 loops=1)
                           Buckets: 2097152 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 162025kB
                           Buffers: shared read=82968
                           ->  Hash Join  (cost=2981.30..4589.41 rows=111092 width=51) (actual time=3154.752..4450.945 rows=1877764 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared read=82968
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=22.084..512.860 rows=4523930 loops=1)
                                       Buffers: shared read=24454
                                 ->  Hash  (cost=2979.61..2979.61 rows=11478 width=43) (actual time=2914.796..2914.796 rows=21851 loops=1)
                                       Buckets: 32768 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 1795kB
                                       Buffers: shared read=58514
                                       ->  Hash Join  (cost=1902.46..2979.61 rows=11478 width=43) (actual time=2200.410..2905.234 rows=21851 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared read=58514
                                             ->  Hash Join  (cost=1761.60..2836.16 rows=31793 width=47) (actual time=2060.689..2745.121 rows=72524 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared read=55520
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=2.346..422.236 rows=2609129 loops=1)
                                                         Buffers: shared read=18789
                                                   ->  Hash  (cost=1759.64..1759.64 rows=13350 width=35) (actual time=1878.327..1878.327 rows=5053 loops=1)
                                                         Buckets: 16384  Batches: 1  Memory Usage: 448kB
                                                         Buffers: shared read=36731
                                                         ->  Hash Join  (cost=51.82..1759.64 rows=13350 width=35) (actual time=1153.268..1874.931 rows=5053 loops=1)
                                                               Hash Cond: (t.kind_id = kt.id)
                                                               Buffers: shared read=36731
                                                               ->  Hash Join  (cost=51.79..1757.35 rows=23363 width=29) (actual time=122.001..1846.917 rows=6424 loops=1)
                                                                     Hash Cond: (t.id = cc.movie_id)
                                                                     Buffers: shared read=36730
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=25) (actual time=20.362..1316.527 rows=1749032 loops=1)
                                                                           Filter: (production_year > 1990)
                                                                           Rows Removed by Filter: 779280
                                                                           Buffers: shared read=35998
                                                                     ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=100.977..100.977 rows=24592 loops=1)
                                                                           Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                                           Buffers: shared read=732
                                                                           ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=29.947..92.999 rows=24592 loops=1)
                                                                                 Hash Cond: (cc.status_id = cct.id)
                                                                                 Buffers: shared read=732
                                                                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=22.677..52.554 rows=135086 loops=1)
                                                                                       Buffers: shared read=731
                                                                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=7.227..7.227 rows=1 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared read=1
                                                                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=7.214..7.216 rows=1 loops=1)
                                                                                             Filter: ((kind)::text = 'complete+verified'::text)
                                                                                             Rows Removed by Filter: 3
                                                                                             Buffers: shared read=1
                                                               ->  Hash  (cost=0.03..0.03 rows=4 width=14) (actual time=24.628..24.628 rows=4 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=1
                                                                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=4 width=14) (actual time=24.604..24.613 rows=4 loops=1)
                                                                           Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                                           Rows Removed by Filter: 3
                                                                           Buffers: shared read=1
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.575..138.575 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.508..109.307 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared read=2994
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=8.422..8.422 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=8.403..8.407 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=86.919..86.919 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=949
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=14.922..48.228 rows=134170 loops=1)
                     Buffers: shared read=949
 Planning Time: 8568.519 ms
 Execution Time: 13589.186 ms
(98 rows)


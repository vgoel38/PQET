                                                                                                           QUERY PLAN                                                                                                            
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15922.73..15922.73 rows=1 width=96) (actual time=13008.729..13008.729 rows=1 loops=1)
   Buffers: shared hit=5 read=245027
   ->  Hash Join  (cost=4526.48..15922.73 rows=1 width=48) (actual time=11642.322..12984.740 rows=743 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=5 read=245027
         ->  Hash Join  (cost=4526.44..15922.70 rows=1 width=40) (actual time=11633.646..12975.740 rows=743 loops=1)
               Hash Cond: (t.id = ml.movie_id)
               Buffers: shared hit=2 read=245026
               ->  Hash Join  (cost=4514.85..15911.08 rows=1 width=56) (actual time=4228.734..12945.251 rows=939 loops=1)
                     Hash Cond: (cc.subject_id = cct1.id)
                     Buffers: shared hit=2 read=244863
                     ->  Hash Join  (cost=4514.82..15911.05 rows=1 width=60) (actual time=4228.705..12944.798 rows=1403 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=1 read=244863
                           ->  Seq Scan on movie_info mi  (cost=0.00..11287.12 rows=936891 width=4) (actual time=19.547..8658.910 rows=936223 loops=1)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                 Rows Removed by Filter: 13899497
                                 Buffers: shared read=161892
                           ->  Hash  (cost=4514.82..4514.82 rows=1 width=56) (actual time=4171.064..4171.064 rows=960 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 101kB
                                 Buffers: shared hit=1 read=82971
                                 ->  Hash Join  (cost=2596.95..4514.82 rows=1 width=56) (actual time=2387.803..4170.133 rows=960 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=1 read=82971
                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1900368 width=21) (actual time=4.952..1449.949 rows=1900368 loops=1)
                                             Filter: ((production_year >= 1950) AND (production_year <= 2010))
                                             Rows Removed by Filter: 627944
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=2596.95..2596.95 rows=1 width=35) (actual time=2352.201..2352.201 rows=1054 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 88kB
                                             Buffers: shared hit=1 read=46973
                                             ->  Hash Join  (cost=1679.06..2596.95 rows=1 width=35) (actual time=2005.207..2351.742 rows=1054 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared hit=1 read=46973
                                                   ->  Hash Join  (cost=1679.03..2596.92 rows=1 width=39) (actual time=1455.385..2351.164 rows=1216 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=1 read=46972
                                                         ->  Hash Join  (cost=1506.91..2424.80 rows=5 width=24) (actual time=1303.821..2206.228 rows=5382 loops=1)
                                                               Hash Cond: (mc.movie_id = mk.movie_id)
                                                               Buffers: shared hit=1 read=43978
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=2.929..764.378 rows=1271989 loops=1)
                                                                     Filter: (note IS NULL)
                                                                     Rows Removed by Filter: 1337140
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=1506.91..1506.91 rows=2 width=12) (actual time=1285.611..1285.611 rows=3266 loops=1)
                                                                     Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 173kB
                                                                     Buffers: shared hit=1 read=25189
                                                                     ->  Hash Join  (cost=58.26..1506.91 rows=2 width=12) (actual time=155.071..1284.410 rows=3266 loops=1)
                                                                           Hash Cond: (cc.status_id = cct2.id)
                                                                           Buffers: shared hit=1 read=25189
                                                                           ->  Hash Join  (cost=58.23..1506.88 rows=10 width=16) (actual time=155.046..1283.212 rows=3266 loops=1)
                                                                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                 Buffers: shared read=25189
                                                                                 ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=55.750..1206.433 rows=10544 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared read=24458
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.961..564.219 rows=4523930 loops=1)
                                                                                             Buffers: shared read=24454
                                                                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.339..47.340 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared read=4
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.325..47.328 rows=1 loops=1)
                                                                                                   Index Cond: (keyword = 'sequel'::text)
                                                                                                   Buffers: shared read=4
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=71.663..71.663 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared read=731
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=3.335..34.398 rows=135086 loops=1)
                                                                                             Buffers: shared read=731
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.011 rows=2 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.006 rows=2 loops=1)
                                                                                       Filter: ((kind)::text ~~ 'complete%'::text)
                                                                                       Rows Removed by Filter: 2
                                                                                       Buffers: shared hit=1
                                                         ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=142.702..142.702 rows=48302 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=7.334..125.474 rows=48302 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                     Rows Removed by Filter: 186695
                                                                     Buffers: shared read=2994
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.139..0.139 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.127..0.130 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'production companies'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.009 rows=1 loops=1)
                                 Filter: ((kind)::text = 'cast'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash  (cost=7.19..7.19 rows=29997 width=8) (actual time=29.760..29.760 rows=29997 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                     Buffers: shared read=163
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.190..14.477 rows=29997 loops=1)
                           Buffers: shared read=163
         ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=8.605..8.605 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=8.568..8.583 rows=2 loops=1)
                     Filter: ((link)::text ~~ '%follow%'::text)
                     Rows Removed by Filter: 16
                     Buffers: shared read=1
 Planning Time: 10910.781 ms
 Execution Time: 13029.877 ms
(111 rows)


                                                                                                   QUERY PLAN                                                                                                    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13307.76..13307.76 rows=1 width=64) (actual time=12761.652..12761.652 rows=1 loops=1)
   Buffers: shared hit=3 read=248280
   ->  Hash Join  (cost=4900.22..13307.76 rows=4 width=59) (actual time=6955.849..12761.597 rows=37 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3 read=248280
         ->  Hash Join  (cost=4841.48..13249.02 rows=4 width=63) (actual time=6858.932..12664.633 rows=37 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared read=247331
               ->  Hash Join  (cost=0.05..8407.59 rows=2 width=46) (actual time=1537.991..8382.423 rows=1771 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared read=161893
                     ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=260 width=50) (actual time=1516.702..8359.839 rows=1771 loops=1)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 14833949
                           Buffers: shared read=161892
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=21.249..21.249 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=21.202..21.237 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
               ->  Hash  (cost=4841.43..4841.43 rows=4 width=37) (actual time=4281.505..4281.505 rows=292 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 28kB
                     Buffers: shared read=85438
                     ->  Hash Join  (cost=3061.46..4841.43 rows=4 width=37) (actual time=2744.883..4281.300 rows=292 loops=1)
                           Hash Cond: (t.id = at.movie_id)
                           Buffers: shared read=85438
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=716259 width=21) (actual time=18.722..1670.262 rows=716259 loops=1)
                                 Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                 Rows Removed by Filter: 1812053
                                 Buffers: shared read=35998
                           ->  Hash  (cost=3061.46..3061.46 rows=14 width=16) (actual time=2455.283..2455.283 rows=292 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 22kB
                                 Buffers: shared read=49440
                                 ->  Hash Join  (cost=1454.76..3061.46 rows=14 width=16) (actual time=1367.837..2455.175 rows=292 loops=1)
                                       Hash Cond: (mk.movie_id = at.movie_id)
                                       Buffers: shared read=49440
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.332..582.417 rows=4523930 loops=1)
                                             Buffers: shared read=24454
                                       ->  Hash  (cost=1454.76..1454.76 rows=1 width=8) (actual time=1313.337..1313.337 rows=27 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                             Buffers: shared read=24986
                                             ->  Hash Join  (cost=278.44..1454.76 rows=1 width=8) (actual time=455.907..1313.294 rows=27 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared read=24986
                                                   ->  Hash Join  (cost=278.41..1454.73 rows=1 width=12) (actual time=431.916..1289.266 rows=27 loops=1)
                                                         Hash Cond: (mc.movie_id = at.movie_id)
                                                         Buffers: shared read=24985
                                                         ->  Hash Join  (cost=6.13..1182.45 rows=1 width=8) (actual time=86.282..985.060 rows=278 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared read=18793
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=17389 width=12) (actual time=26.396..918.820 rows=61664 loops=1)
                                                                     Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                                     Rows Removed by Filter: 2547465
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=56.403..56.403 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=4
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=56.378..56.382 rows=1 loops=1)
                                                                           Index Cond: (name = 'YouTube'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                                         ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=299.742..299.742 rows=361472 loops=1)
                                                               Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                               Buffers: shared read=6192
                                                               ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=4.683..177.442 rows=361472 loops=1)
                                                                     Buffers: shared read=6192
                                                   ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=23.957..23.957 rows=4 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=23.937..23.942 rows=4 loops=1)
                                                               Buffers: shared read=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=96.206..96.206 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=949
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=17.592..57.693 rows=134170 loops=1)
                     Buffers: shared read=949
 Planning Time: 8473.702 ms
 Execution Time: 12762.928 ms
(80 rows)


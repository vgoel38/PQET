                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=5621.60..5621.60 rows=1 width=64) (actual time=388082.011..388082.012 rows=1 loops=1)
   Buffers: shared hit=529430 read=100438
   ->  Nested Loop  (cost=192.78..5621.60 rows=5 width=27) (actual time=106184.198..388081.260 rows=628 loops=1)
         Buffers: shared hit=529430 read=100438
         ->  Nested Loop  (cost=192.77..5621.53 rows=5 width=31) (actual time=106153.162..387679.760 rows=628 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=527141 read=100211
               ->  Nested Loop  (cost=192.76..5621.47 rows=1 width=43) (actual time=106095.122..387517.267 rows=7 loops=1)
                     Buffers: shared hit=527115 read=100201
                     ->  Hash Join  (cost=192.75..5621.46 rows=1 width=47) (actual time=106095.081..387517.149 rows=7 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=527101 read=100201
                           ->  Nested Loop  (cost=192.71..5621.42 rows=5 width=51) (actual time=106095.021..387517.062 rows=7 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=527097 read=100201
                                 ->  Hash Join  (cost=192.69..2694.24 rows=11478 width=43) (actual time=1302.247..91114.669 rows=21851 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=17074 read=48304
                                       ->  Nested Loop  (cost=51.83..2550.78 rows=31793 width=47) (actual time=1156.782..90870.671 rows=72524 loops=1)
                                             Buffers: shared hit=17072 read=45312
                                             ->  Hash Join  (cost=51.82..1759.64 rows=13350 width=35) (actual time=1108.825..2140.794 rows=5053 loops=1)
                                                   Hash Cond: (t.kind_id = kt.id)
                                                   Buffers: shared hit=6 read=36725
                                                   ->  Hash Join  (cost=51.79..1757.35 rows=23363 width=29) (actual time=102.164..2130.395 rows=6424 loops=1)
                                                         Hash Cond: (t.id = cc.movie_id)
                                                         Buffers: shared hit=5 read=36725
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=25) (actual time=16.840..1458.821 rows=1749032 loops=1)
                                                               Filter: (production_year > 1990)
                                                               Rows Removed by Filter: 779280
                                                               Buffers: shared hit=2 read=35996
                                                         ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=84.500..84.500 rows=24592 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                               Buffers: shared hit=3 read=729
                                                               ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=0.250..76.256 rows=24592 loops=1)
                                                                     Hash Cond: (cc.status_id = cct.id)
                                                                     Buffers: shared hit=3 read=729
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=0.192..41.557 rows=135086 loops=1)
                                                                           Buffers: shared hit=2 read=729
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=4 width=14) (actual time=0.011..0.012 rows=4 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=4 width=14) (actual time=0.004..0.007 rows=4 loops=1)
                                                               Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=12.025..17.544 rows=14 loops=5053)
                                                   Index Cond: (movie_id = t.id)
                                                   Buffers: shared hit=17066 read=8587
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.431..144.431 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.697..111.340 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=13.556..13.562 rows=0 loops=21851)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                       Rows Removed by Filter: 183
                                       Buffers: shared hit=510023 read=51897
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.021 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=7)
                           Index Cond: (id = mc.company_type_id)
                           Buffers: shared hit=14
               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=23.065..23.146 rows=90 loops=7)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=26 read=10
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.638..0.638 rows=1 loops=628)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=2289 read=227
 Planning Time: 9127.503 ms
 Execution Time: 388082.628 ms
(85 rows)


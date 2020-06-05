                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=5621.60..5621.60 rows=1 width=64) (actual time=346239.698..346239.699 rows=1 loops=1)
   Buffers: shared hit=529409 read=100459
   ->  Nested Loop  (cost=192.78..5621.60 rows=5 width=27) (actual time=95057.640..346238.771 rows=628 loops=1)
         Buffers: shared hit=529409 read=100459
         ->  Nested Loop  (cost=192.77..5621.53 rows=5 width=31) (actual time=95018.259..345844.017 rows=628 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=527124 read=100228
               ->  Nested Loop  (cost=192.76..5621.47 rows=1 width=43) (actual time=94979.428..345741.983 rows=7 loops=1)
                     Buffers: shared hit=527099 read=100217
                     ->  Hash Join  (cost=192.75..5621.46 rows=1 width=47) (actual time=94960.150..345722.630 rows=7 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=527087 read=100215
                           ->  Nested Loop  (cost=192.71..5621.42 rows=5 width=51) (actual time=94939.164..345701.619 rows=7 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=527084 read=100214
                                 ->  Hash Join  (cost=192.69..2694.24 rows=11478 width=43) (actual time=1305.225..81433.882 rows=21851 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=17063 read=48315
                                       ->  Nested Loop  (cost=51.83..2550.78 rows=31793 width=47) (actual time=1158.688..81190.471 rows=72524 loops=1)
                                             Buffers: shared hit=17063 read=45321
                                             ->  Hash Join  (cost=51.82..1759.64 rows=13350 width=35) (actual time=1118.526..2185.228 rows=5053 loops=1)
                                                   Hash Cond: (t.kind_id = kt.id)
                                                   Buffers: shared read=36731
                                                   ->  Hash Join  (cost=51.79..1757.35 rows=23363 width=29) (actual time=103.450..2168.417 rows=6424 loops=1)
                                                         Hash Cond: (t.id = cc.movie_id)
                                                         Buffers: shared read=36730
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=25) (actual time=20.382..1503.054 rows=1749032 loops=1)
                                                               Filter: (production_year > 1990)
                                                               Rows Removed by Filter: 779280
                                                               Buffers: shared read=35998
                                                         ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=82.233..82.233 rows=24592 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                               Buffers: shared read=732
                                                               ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=22.655..74.352 rows=24592 loops=1)
                                                                     Hash Cond: (cc.status_id = cct.id)
                                                                     Buffers: shared read=732
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=22.479..41.912 rows=135086 loops=1)
                                                                           Buffers: shared read=731
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.138..0.138 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.127..0.129 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared read=1
                                                   ->  Hash  (cost=0.03..0.03 rows=4 width=14) (actual time=6.689..6.689 rows=4 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=4 width=14) (actual time=6.658..6.667 rows=4 loops=1)
                                                               Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=10.222..15.619 rows=14 loops=5053)
                                                   Index Cond: (movie_id = t.id)
                                                   Buffers: shared hit=17063 read=8590
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.887..145.887 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=9.095..112.488 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=12.085..12.092 rows=0 loops=21851)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                       Rows Removed by Filter: 183
                                       Buffers: shared hit=510021 read=51899
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.954..20.954 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.902..20.937 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=2.759..2.759 rows=1 loops=7)
                           Index Cond: (id = mc.company_type_id)
                           Buffers: shared hit=12 read=2
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=14.373..14.483 rows=90 loops=7)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=25 read=11
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.626..0.626 rows=1 loops=628)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=2285 read=231
 Planning Time: 8529.763 ms
 Execution Time: 346240.281 ms
(85 rows)


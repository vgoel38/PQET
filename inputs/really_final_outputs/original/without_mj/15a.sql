                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3343.85..3343.85 rows=1 width=64) (actual time=81259.416..81259.416 rows=1 loops=1)
   Buffers: shared hit=108524 read=62983
   ->  Nested Loop  (cost=413.19..3343.84 rows=8 width=59) (actual time=2443.984..81258.634 rows=328 loops=1)
         Buffers: shared hit=108524 read=62983
         ->  Nested Loop  (cost=413.18..3343.73 rows=8 width=63) (actual time=2409.382..80605.442 rows=328 loops=1)
               Buffers: shared hit=107398 read=62797
               ->  Nested Loop  (cost=413.17..3343.63 rows=1 width=75) (actual time=1769.410..79848.229 rows=57 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Buffers: shared hit=107258 read=62729
                     ->  Nested Loop  (cost=413.17..3343.58 rows=1 width=79) (actual time=1766.608..79844.286 rows=57 loops=1)
                           Buffers: shared hit=107202 read=62728
                           ->  Nested Loop  (cost=413.16..3343.58 rows=1 width=83) (actual time=1744.872..79821.831 rows=57 loops=1)
                                 Buffers: shared hit=107090 read=62726
                                 ->  Nested Loop  (cost=413.15..2646.41 rows=1498 width=33) (actual time=530.123..23534.604 rows=5134 loops=1)
                                       Buffers: shared hit=48556 read=34253
                                       ->  Hash Join  (cost=413.13..1612.79 rows=2741 width=12) (actual time=485.723..2243.123 rows=13699 loops=1)
                                             Hash Cond: (mc.movie_id = at.movie_id)
                                             Buffers: shared hit=3 read=27975
                                             ->  Hash Join  (cost=140.86..1317.18 rows=6278 width=8) (actual time=170.019..1889.784 rows=43837 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=3 read=21783
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=17389 width=12) (actual time=26.414..1681.827 rows=61664 loops=1)
                                                         Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                         Rows Removed by Filter: 2547465
                                                         Buffers: shared read=18789
                                                   ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=142.548..142.548 rows=84843 loops=1)
                                                         Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                         Buffers: shared read=2994
                                                         ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.197..111.229 rows=84843 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 150154
                                                               Buffers: shared read=2994
                                             ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=302.278..302.278 rows=361472 loops=1)
                                                   Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                   Buffers: shared read=6192
                                                   ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=6.779..179.118 rows=361472 loops=1)
                                                         Buffers: shared read=6192
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.38 rows=1 width=21) (actual time=1.552..1.552 rows=0 loops=13699)
                                             Index Cond: (id = at.movie_id)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=48553 read=6278
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.47 rows=1 width=50) (actual time=10.873..10.961 rows=0 loops=5134)
                                       Index Cond: (movie_id = t.id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 72
                                       Buffers: shared hit=58534 read=28473
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.389..0.389 rows=1 loops=57)
                                 Index Cond: (id = mc.company_type_id)
                                 Buffers: shared hit=112 read=2
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.062..0.062 rows=1 loops=57)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 15
                           Buffers: shared hit=56 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=13.262..13.276 rows=6 loops=57)
                     Index Cond: (movie_id = t.id)
                     Buffers: shared hit=140 read=68
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.988..1.988 rows=1 loops=328)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=1126 read=186
 Planning Time: 7675.207 ms
 Execution Time: 81274.757 ms
(62 rows)


                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13357.06..13357.06 rows=1 width=64) (actual time=62093.479..62093.479 rows=1 loops=1)
   Buffers: shared hit=3 read=251270
   ->  Hash Join  (cost=3333.43..13357.06 rows=8 width=59) (actual time=12158.860..62093.294 rows=328 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3 read=251270
         ->  Hash Join  (cost=3274.69..13298.32 rows=8 width=63) (actual time=12059.132..61993.389 rows=328 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared read=250321
               ->  Nested Loop  (cost=3274.66..13298.29 rows=8 width=67) (actual time=12048.591..61982.736 rows=328 loops=1)
                     Join Filter: (mi.movie_id = t.id)
                     Rows Removed by Join Filter: 340230024
                     Buffers: shared read=250320
                     ->  Hash Join  (cost=3274.66..4881.54 rows=20370 width=41) (actual time=3127.268..4230.340 rows=192112 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared read=88427
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=25.958..542.879 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=3274.44..3274.44 rows=1498 width=33) (actual time=3095.196..3095.196 rows=5134 loops=1)
                                 Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 408kB
                                 Buffers: shared read=63973
                                 ->  Hash Join  (cost=1613.19..3274.44 rows=1498 width=33) (actual time=1364.930..3091.205 rows=5134 loops=1)
                                       Hash Cond: (t.id = at.movie_id)
                                       Buffers: shared read=63973
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=3.948..1398.583 rows=1381453 loops=1)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1146859
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=1612.79..1612.79 rows=2741 width=12) (actual time=1350.776..1350.776 rows=13699 loops=1)
                                             Buckets: 16384 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 717kB
                                             Buffers: shared read=27975
                                             ->  Hash Join  (cost=413.13..1612.79 rows=2741 width=12) (actual time=464.084..1345.950 rows=13699 loops=1)
                                                   Hash Cond: (mc.movie_id = at.movie_id)
                                                   Buffers: shared read=27975
                                                   ->  Hash Join  (cost=140.86..1317.18 rows=6278 width=8) (actual time=144.948..1017.870 rows=43837 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=17389 width=12) (actual time=4.727..854.757 rows=61664 loops=1)
                                                               Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                               Rows Removed by Filter: 2547465
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=139.531..139.531 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.544..109.316 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared read=2994
                                                   ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=307.267..307.267 rows=361472 loops=1)
                                                         Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                         Buffers: shared read=6192
                                                         ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=9.745..180.735 rows=361472 loops=1)
                                                               Buffers: shared read=6192
                     ->  Materialize  (cost=0.00..8407.60 rows=2 width=46) (actual time=0.008..0.124 rows=1771 loops=192112)
                           Buffers: shared read=161893
                           ->  Nested Loop  (cost=0.00..8407.60 rows=2 width=46) (actual time=1554.007..8667.167 rows=1771 loops=1)
                                 Join Filter: (it.id = mi.info_type_id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=25.339..25.352 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=251 width=50) (actual time=1528.660..8641.018 rows=1771 loops=1)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 14833949
                                       Buffers: shared read=161892
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=10.523..10.523 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=10.504..10.508 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=99.085..99.085 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=949
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=29.195..61.582 rows=134170 loops=1)
                     Buffers: shared read=949
 Planning Time: 8187.342 ms
 Execution Time: 62095.049 ms
(77 rows)


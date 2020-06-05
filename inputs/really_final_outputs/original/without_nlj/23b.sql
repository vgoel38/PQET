                                                                                                QUERY PLAN                                                                                                
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12803.66..12803.66 rows=1 width=64) (actual time=12729.339..12729.340 rows=1 loops=1)
   Buffers: shared hit=29 read=244855
   ->  Hash Join  (cost=4396.12..12803.66 rows=1 width=27) (actual time=6777.965..12729.312 rows=16 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=29 read=244855
         ->  Hash Join  (cost=4396.09..12803.63 rows=1 width=31) (actual time=6777.926..12729.267 rows=16 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=25 read=244855
               ->  Hash Join  (cost=0.05..8407.59 rows=2 width=4) (actual time=1523.159..8572.667 rows=1771 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared hit=3 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=260 width=8) (actual time=1523.089..8571.305 rows=1771 loops=1)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 14833949
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.014..0.027 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=4396.04..4396.04 rows=1 width=47) (actual time=4155.907..4155.908 rows=315 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=22 read=82965
                     ->  Hash Join  (cost=2739.64..4396.04 rows=1 width=47) (actual time=3567.767..4155.660 rows=315 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=22 read=82965
                           ->  Hash Join  (cost=2687.85..4344.25 rows=21 width=43) (actual time=3471.426..4084.069 rows=1075 loops=1)
                                 Hash Cond: (t.id = mk.movie_id)
                                 Buffers: shared hit=19 read=82236
                                 ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=31) (actual time=80.141..1765.894 rows=274015 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=3 read=35996
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=18.836..1442.039 rows=1381453 loops=1)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1146859
                                             Buffers: shared hit=2 read=35996
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=14) (actual time=0.038..0.039 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=0.016..0.022 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=2687.78..2687.78 rows=272 width=12) (actual time=2265.456..2265.456 rows=3338 loops=1)
                                       Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 176kB
                                       Buffers: shared hit=16 read=46240
                                       ->  Hash Join  (cost=1614.05..2687.78 rows=272 width=12) (actual time=1376.876..2264.028 rows=3338 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=16 read=46240
                                             ->  Hash Join  (cost=1473.19..2546.86 rows=754 width=16) (actual time=1236.160..2119.273 rows=9894 loops=1)
                                                   Hash Cond: (mc.movie_id = mk.movie_id)
                                                   Buffers: shared hit=14 read=43248
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.007..449.965 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=1473.17..1473.17 rows=135 width=4) (actual time=1233.173..1233.173 rows=1133 loops=1)
                                                         Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 56kB
                                                         Buffers: shared hit=11 read=24462
                                                         ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=94.125..1232.617 rows=1133 loops=1)
                                                               Hash Cond: (mk.keyword_id = k.id)
                                                               Buffers: shared hit=11 read=24462
                                                               ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.005..542.152 rows=4523930 loops=1)
                                                                     Buffers: shared hit=3 read=24451
                                                               ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=72.298..72.298 rows=4 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=8 read=11
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=33.945..72.274 rows=4 loops=1)
                                                                           Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                           Buffers: shared hit=8 read=11
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=140.267..140.267 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=4.591..112.240 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=70.932..70.932 rows=24592 loops=1)
                                 Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                 Buffers: shared hit=3 read=729
                                 ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=21.186..64.855 rows=24592 loops=1)
                                       Hash Cond: (cc.status_id = cct1.id)
                                       Buffers: shared hit=3 read=729
                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=21.109..40.998 rows=135086 loops=1)
                                             Buffers: shared hit=2 read=729
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.022..0.023 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'complete+verified'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.013..0.013 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.005..0.007 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 9214.554 ms
 Execution Time: 12729.813 ms
(99 rows)


                                                                                                QUERY PLAN                                                                                                
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12803.66..12803.66 rows=1 width=64) (actual time=12867.346..12867.346 rows=1 loops=1)
   Buffers: shared hit=11 read=244873
   ->  Hash Join  (cost=4396.12..12803.66 rows=1 width=27) (actual time=6931.602..12867.322 rows=16 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=11 read=244873
         ->  Hash Join  (cost=4396.09..12803.63 rows=1 width=31) (actual time=6910.981..12846.697 rows=16 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=8 read=244872
               ->  Hash Join  (cost=0.05..8407.59 rows=2 width=4) (actual time=1544.451..8578.205 rows=1771 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared read=161893
                     ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=260 width=8) (actual time=1523.541..8556.026 rows=1771 loops=1)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 14833949
                           Buffers: shared read=161892
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.880..20.880 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=20.821..20.856 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
               ->  Hash  (cost=4396.04..4396.04 rows=1 width=47) (actual time=4267.775..4267.776 rows=315 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=8 read=82979
                     ->  Hash Join  (cost=2739.64..4396.04 rows=1 width=47) (actual time=3569.639..4267.529 rows=315 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=8 read=82979
                           ->  Hash Join  (cost=2687.85..4344.25 rows=21 width=43) (actual time=3468.620..4178.165 rows=1075 loops=1)
                                 Hash Cond: (t.id = mk.movie_id)
                                 Buffers: shared hit=8 read=82247
                                 ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=31) (actual time=124.360..1833.952 rows=274015 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared read=35999
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=21.464..1493.587 rows=1381453 loops=1)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1146859
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=14) (actual time=21.259..21.260 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=21.226..21.232 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=2687.78..2687.78 rows=272 width=12) (actual time=2291.025..2291.025 rows=3338 loops=1)
                                       Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 176kB
                                       Buffers: shared hit=8 read=46248
                                       ->  Hash Join  (cost=1614.05..2687.78 rows=272 width=12) (actual time=1393.678..2289.514 rows=3338 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=8 read=46248
                                             ->  Hash Join  (cost=1473.19..2546.86 rows=754 width=16) (actual time=1252.905..2144.441 rows=9894 loops=1)
                                                   Hash Cond: (mc.movie_id = mk.movie_id)
                                                   Buffers: shared hit=8 read=43254
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=2.670..459.749 rows=2609129 loops=1)
                                                         Buffers: shared read=18789
                                                   ->  Hash  (cost=1473.17..1473.17 rows=135 width=4) (actual time=1241.396..1241.396 rows=1133 loops=1)
                                                         Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 56kB
                                                         Buffers: shared hit=8 read=24465
                                                         ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=86.644..1240.845 rows=1133 loops=1)
                                                               Hash Cond: (mk.keyword_id = k.id)
                                                               Buffers: shared hit=8 read=24465
                                                               ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.965..554.693 rows=4523930 loops=1)
                                                                     Buffers: shared read=24454
                                                               ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=78.311..78.311 rows=4 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=8 read=11
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=39.953..78.283 rows=4 loops=1)
                                                                           Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                           Buffers: shared hit=8 read=11
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=140.376..140.376 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=4.697..110.592 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared read=2994
                           ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=88.376..88.376 rows=24592 loops=1)
                                 Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                 Buffers: shared read=732
                                 ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=15.118..79.442 rows=24592 loops=1)
                                       Hash Cond: (cc.status_id = cct1.id)
                                       Buffers: shared read=732
                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=7.865..35.607 rows=135086 loops=1)
                                             Buffers: shared read=731
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=7.214..7.214 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=7.199..7.201 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'complete+verified'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=20.594..20.594 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=20.565..20.569 rows=4 loops=1)
                     Buffers: shared read=1
 Planning Time: 8693.913 ms
 Execution Time: 12867.946 ms
(99 rows)


                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13350.89..13350.89 rows=1 width=64) (actual time=12879.349..12879.349 rows=1 loops=1)
   Buffers: shared hit=20 read=251253
   ->  Hash Join  (cost=4943.35..13350.89 rows=8 width=59) (actual time=6059.541..12879.075 rows=328 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=20 read=251253
         ->  Hash Join  (cost=4884.61..13292.15 rows=8 width=63) (actual time=5983.278..12802.590 rows=328 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=15 read=250306
               ->  Hash Join  (cost=4884.58..13292.12 rows=8 width=67) (actual time=5983.246..12802.407 rows=328 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=14 read=250306
                     ->  Hash Join  (cost=0.05..8407.59 rows=2 width=46) (actual time=1563.677..8443.370 rows=1771 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=3 read=161890
                           ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=260 width=50) (actual time=1563.561..8441.840 rows=1771 loops=1)
                                 Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                 Rows Removed by Filter: 14833949
                                 Buffers: shared hit=2 read=161890
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.069..0.069 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.025..0.060 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=4881.54..4881.54 rows=20379 width=41) (actual time=4357.746..4357.746 rows=192112 loops=1)
                           Buckets: 262144 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 16217kB
                           Buffers: shared hit=11 read=88416
                           ->  Hash Join  (cost=3274.66..4881.54 rows=20379 width=41) (actual time=3070.353..4295.850 rows=192112 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=11 read=88416
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.019..594.267 rows=4523930 loops=1)
                                       Buffers: shared hit=3 read=24451
                                 ->  Hash  (cost=3274.44..3274.44 rows=1498 width=33) (actual time=3064.124..3064.124 rows=5134 loops=1)
                                       Buckets: 8192 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 408kB
                                       Buffers: shared hit=8 read=63965
                                       ->  Hash Join  (cost=1613.19..3274.44 rows=1498 width=33) (actual time=1359.064..3060.239 rows=5134 loops=1)
                                             Hash Cond: (t.id = at.movie_id)
                                             Buffers: shared hit=8 read=63965
                                             ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=6.251..1372.819 rows=1381453 loops=1)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1146859
                                                   Buffers: shared hit=1 read=35997
                                             ->  Hash  (cost=1612.79..1612.79 rows=2741 width=12) (actual time=1342.547..1342.547 rows=13699 loops=1)
                                                   Buckets: 16384 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 717kB
                                                   Buffers: shared hit=7 read=27968
                                                   ->  Hash Join  (cost=413.13..1612.79 rows=2741 width=12) (actual time=455.699..1337.945 rows=13699 loops=1)
                                                         Hash Cond: (mc.movie_id = at.movie_id)
                                                         Buffers: shared hit=7 read=27968
                                                         ->  Hash Join  (cost=140.86..1317.18 rows=6278 width=8) (actual time=143.376..1019.532 rows=43837 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=5 read=21778
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=17389 width=12) (actual time=0.023..854.497 rows=61664 loops=1)
                                                                     Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                                     Rows Removed by Filter: 2547465
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=142.633..142.633 rows=84843 loops=1)
                                                                     Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                     Buffers: shared hit=2 read=2992
                                                                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=7.248..109.195 rows=84843 loops=1)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 150154
                                                                           Buffers: shared hit=2 read=2992
                                                         ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=299.236..299.236 rows=361472 loops=1)
                                                               Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                               Buffers: shared hit=2 read=6190
                                                               ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=3.818..179.745 rows=361472 loops=1)
                                                                     Buffers: shared hit=2 read=6190
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.010..0.010 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.006 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=74.238..74.238 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.184..42.425 rows=134170 loops=1)
                     Buffers: shared hit=2 read=947
 Planning Time: 9121.984 ms
 Execution Time: 12950.159 ms
(80 rows)


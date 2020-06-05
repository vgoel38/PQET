                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14291.64..14291.64 rows=1 width=64) (actual time=474379.809..474379.809 rows=1 loops=1)
   Buffers: shared hit=23 read=245791
   ->  Hash Join  (cost=3040.07..14291.64 rows=5 width=27) (actual time=114081.182..474379.622 rows=628 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=23 read=245791
         ->  Nested Loop  (cost=3040.04..14291.61 rows=5 width=31) (actual time=114081.083..474379.361 rows=628 loops=1)
               Join Filter: (mi.movie_id = t.id)
               Rows Removed by Join Filter: 3348052584
               Buffers: shared hit=19 read=245791
               ->  Hash Join  (cost=3040.04..4657.23 rows=111293 width=47) (actual time=3186.117..5098.668 rows=1877764 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=16 read=83901
                     ->  Hash Join  (cost=2981.30..4589.41 rows=111293 width=51) (actual time=3090.694..4391.193 rows=1877764 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=14 read=82954
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.009..477.780 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=2979.61..2979.61 rows=11478 width=43) (actual time=2873.226..2873.226 rows=21851 loops=1)
                                 Buckets: 32768 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 1795kB
                                 Buffers: shared hit=11 read=58503
                                 ->  Hash Join  (cost=1902.46..2979.61 rows=11478 width=43) (actual time=2158.172..2863.533 rows=21851 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=11 read=58503
                                       ->  Hash Join  (cost=1761.60..2836.16 rows=31793 width=47) (actual time=2001.216..2686.085 rows=72524 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=9 read=55511
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.006..427.575 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=1759.64..1759.64 rows=13350 width=35) (actual time=1822.160..1822.160 rows=5053 loops=1)
                                                   Buckets: 16384  Batches: 1  Memory Usage: 448kB
                                                   Buffers: shared hit=6 read=36725
                                                   ->  Hash Join  (cost=51.82..1759.64 rows=13350 width=35) (actual time=1098.494..1818.462 rows=5053 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=6 read=36725
                                                         ->  Hash Join  (cost=51.79..1757.35 rows=23363 width=29) (actual time=90.000..1814.901 rows=6424 loops=1)
                                                               Hash Cond: (t.id = cc.movie_id)
                                                               Buffers: shared hit=5 read=36725
                                                               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=25) (actual time=6.214..1300.922 rows=1749032 loops=1)
                                                                     Filter: (production_year > 1990)
                                                                     Rows Removed by Filter: 779280
                                                                     Buffers: shared hit=2 read=35996
                                                               ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=83.234..83.234 rows=24592 loops=1)
                                                                     Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                                     Buffers: shared hit=3 read=729
                                                                     ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=22.832..75.452 rows=24592 loops=1)
                                                                           Hash Cond: (cc.status_id = cct1.id)
                                                                           Buffers: shared hit=3 read=729
                                                                           ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=22.759..42.668 rows=135086 loops=1)
                                                                                 Buffers: shared hit=2 read=729
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.029..0.029 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.018..0.020 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete+verified'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=4 width=14) (actual time=0.016..0.016 rows=4 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=4 width=14) (actual time=0.009..0.011 rows=4 loops=1)
                                                                     Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=156.458..156.459 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=20.810..127.337 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=94.164..94.164 rows=134170 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 6765kB
                           Buffers: shared hit=2 read=947
                           ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.146..55.937 rows=134170 loops=1)
                                 Buffers: shared hit=2 read=947
               ->  Materialize  (cost=0.00..9559.45 rows=3 width=4) (actual time=0.001..0.084 rows=1783 loops=1877764)
                     Buffers: shared hit=3 read=161890
                     ->  Nested Loop  (cost=0.00..9559.45 rows=3 width=4) (actual time=1507.450..8479.396 rows=1783 loops=1)
                           Join Filter: (it1.id = mi.info_type_id)
                           Buffers: shared hit=3 read=161890
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.031 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
                           ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=314 width=8) (actual time=1507.431..8478.639 rows=1783 loops=1)
                                 Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                 Rows Removed by Filter: 14833937
                                 Buffers: shared hit=2 read=161890
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.040..0.040 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.010..0.014 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 9152.308 ms
 Execution Time: 474380.836 ms
(95 rows)


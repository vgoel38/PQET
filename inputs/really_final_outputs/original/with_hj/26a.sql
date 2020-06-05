                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22122.95..22122.95 rows=1 width=128) (actual time=21103.159..21103.159 rows=1 loops=1)
   Buffers: shared hit=23 read=414377
   ->  Hash Join  (cost=8576.10..22122.95 rows=1 width=54) (actual time=8962.625..21090.992 rows=1728 loops=1)
         Hash Cond: (cc.status_id = cct.id)
         Buffers: shared hit=23 read=414377
         ->  Hash Join  (cost=8576.07..22122.92 rows=1 width=58) (actual time=8962.503..21089.929 rows=1728 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=20 read=414376
               ->  Hash Join  (cost=5931.80..19478.65 rows=1 width=47) (actual time=6308.535..18434.400 rows=1728 loops=1)
                     Hash Cond: (cc.subject_id = cct.id)
                     Buffers: shared hit=20 read=358763
                     ->  Hash Join  (cost=5931.77..19478.61 rows=1 width=51) (actual time=6308.503..18433.265 rows=2199 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=19 read=358763
                           ->  Hash Join  (cost=5879.67..19426.52 rows=1 width=59) (actual time=6189.592..18329.500 rows=2929 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=19 read=358032
                                 ->  Hash Join  (cost=5818.34..19365.18 rows=98 width=63) (actual time=6131.079..18221.397 rows=561866 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared read=358008
                                       ->  Hash Join  (cost=4074.47..17620.07 rows=55 width=55) (actual time=4299.303..16274.875 rows=8886 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared read=333554
                                             ->  Hash Join  (cost=4074.42..17619.51 rows=6215 width=59) (actual time=4275.631..16246.806 rows=17509 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared read=333553
                                                   ->  Hash Join  (cost=3578.39..17104.08 rows=81430 width=45) (actual time=3509.561..15448.331 rows=98725 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared read=325100
                                                         ->  Hash Join  (cost=3578.36..17049.11 rows=570007 width=49) (actual time=3502.176..15388.937 rows=296510 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared read=325099
                                                               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=24) (actual time=1765.356..13351.611 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared read=289101
                                                                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=47.030..6157.185 rows=36244344 loops=1)
                                                                           Buffers: shared read=252654
                                                                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=20) (actual time=1717.080..1717.080 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared read=36447
                                                                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=20) (actual time=5.407..1630.720 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared read=36447
                                                               ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=25) (actual time=1727.542..1727.542 rows=1381453 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                     Buffers: shared read=35998
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=19.450..1128.133 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared read=35998
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=7.367..7.367 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=7.349..7.355 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=467.71..467.71 rows=192955 width=14) (actual time=755.623..755.623 rows=192967 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 10369kB
                                                         Buffers: shared read=8453
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=7.183..673.735 rows=192967 loops=1)
                                                               Filter: (info > '7.0'::text)
                                                               Rows Removed by Filter: 1187068
                                                               Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.649..23.649 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.618..23.624 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                       ->  Hash  (cost=1079.84..1079.84 rows=4523930 width=8) (actual time=1806.781..1806.781 rows=4523930 loops=1)
                                             Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                                             Buffers: shared read=24454
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=20.357..853.248 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                 ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=49.559..49.559 rows=10 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=19 read=24
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=12.353..49.520 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=19 read=24
                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=100.948..100.948 rows=135086 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                 Buffers: shared read=731
                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=22.830..57.893 rows=135086 loops=1)
                                       Buffers: shared read=731
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=1 loops=1)
                                 Filter: ((kind)::text = 'cast'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2643.658..2643.658 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=37.816..1271.630 rows=4167491 loops=1)
                           Buffers: shared read=55613
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.096..0.096 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.089..0.090 rows=2 loops=1)
                     Filter: ((kind)::text ~~ '%complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared read=1
 Planning Time: 9448.097 ms
 Execution Time: 21115.273 ms
(109 rows)


                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14172.29..14172.29 rows=1 width=64) (actual time=198182.554..198182.554 rows=1 loops=1)
   Buffers: shared hit=23 read=245791
   ->  Nested Loop  (cost=2983.82..14172.29 rows=1 width=27) (actual time=144969.287..198182.348 rows=618 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Rows Removed by Join Filter: 1355879949
         Buffers: shared hit=23 read=245791
         ->  Hash Join  (cost=2983.82..4598.04 rows=21976 width=43) (actual time=3217.893..5506.063 rows=760449 loops=1)
               Hash Cond: (mk.keyword_id = k.id)
               Buffers: shared hit=20 read=83901
               ->  Hash Join  (cost=2925.08..4537.51 rows=21976 width=47) (actual time=3134.184..5181.909 rows=760449 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=15 read=82954
                     ->  Hash Join  (cost=2784.22..4391.69 rows=60868 width=51) (actual time=2927.305..4454.558 rows=3282823 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=13 read=79962
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..476.816 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=2783.30..2783.30 rows=6278 width=43) (actual time=2711.668..2711.668 rows=23883 loops=1)
                                 Buckets: 32768 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 1934kB
                                 Buffers: shared hit=10 read=55511
                                 ->  Hash Join  (cost=1708.82..2783.30 rows=6278 width=43) (actual time=1996.109..2701.538 rows=23883 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=10 read=55511
                                       ->  Hash Join  (cost=1708.79..2782.59 rows=6278 width=47) (actual time=1996.087..2692.284 rows=23883 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=9 read=55511
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.004..447.323 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=1708.40..1708.40 rows=2636 width=35) (actual time=1813.412..1813.412 rows=1033 loops=1)
                                                   Buckets: 4096  Batches: 1  Memory Usage: 97kB
                                                   Buffers: shared hit=6 read=36725
                                                   ->  Hash Join  (cost=51.82..1708.40 rows=2636 width=35) (actual time=1210.286..1812.629 rows=1033 loops=1)
                                                         Hash Cond: (t.id = cc.movie_id)
                                                         Buffers: shared hit=6 read=36725
                                                         ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=31) (actual time=67.105..1664.438 rows=274015 loops=1)
                                                               Hash Cond: (t.kind_id = kt.id)
                                                               Buffers: shared hit=3 read=35996
                                                               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=5.921..1347.897 rows=1381453 loops=1)
                                                                     Filter: (production_year > 2000)
                                                                     Rows Removed by Filter: 1146859
                                                                     Buffers: shared hit=2 read=35996
                                                               ->  Hash  (cost=0.03..0.03 rows=1 width=14) (actual time=0.034..0.034 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=0.015..0.021 rows=1 loops=1)
                                                                           Filter: ((kind)::text = 'movie'::text)
                                                                           Rows Removed by Filter: 6
                                                                           Buffers: shared hit=1
                                                         ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=80.890..80.890 rows=24592 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                               Buffers: shared hit=3 read=729
                                                               ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=20.032..73.312 rows=24592 loops=1)
                                                                     Hash Cond: (cc.status_id = cct1.id)
                                                                     Buffers: shared hit=3 read=729
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=19.960..40.664 rows=135086 loops=1)
                                                                           Buffers: shared hit=2 read=729
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.030..0.030 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared hit=1
                                       ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.009..0.009 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.003..0.005 rows=4 loops=1)
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=206.513..206.513 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=20.618..176.556 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=81.643..81.643 rows=134170 loops=1)
                     Buckets: 262144  Batches: 1  Memory Usage: 6765kB
                     Buffers: shared hit=2 read=947
                     ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.188..42.662 rows=134170 loops=1)
                           Buffers: shared hit=2 read=947
         ->  Materialize  (cost=0.00..9559.45 rows=3 width=4) (actual time=0.002..0.087 rows=1783 loops=760449)
               Buffers: shared hit=3 read=161890
               ->  Nested Loop  (cost=0.00..9559.45 rows=3 width=4) (actual time=1505.113..8460.309 rows=1783 loops=1)
                     Join Filter: (it1.id = mi.info_type_id)
                     Buffers: shared hit=3 read=161890
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.036 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
                     ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=314 width=8) (actual time=1505.095..8459.483 rows=1783 loops=1)
                           Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                           Rows Removed by Filter: 14833937
                           Buffers: shared hit=2 read=161890
 Planning Time: 9378.615 ms
 Execution Time: 198202.625 ms
(95 rows)


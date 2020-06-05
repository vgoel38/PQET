                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21299.33..21299.33 rows=1 width=64) (actual time=9986947.941..9986947.941 rows=1 loops=1)
   Buffers: shared hit=405840060 read=387406
   ->  Nested Loop  (cost=3465.86..21299.33 rows=1 width=32) (actual time=6376.823..9986901.986 rows=5406 loops=1)
         Join Filter: (ci.person_id = n.id)
         Rows Removed by Join Filter: 6414506247
         Buffers: shared hit=405840060 read=387406
         ->  Nested Loop  (cost=3465.86..18655.05 rows=1 width=21) (actual time=5890.027..8858789.537 rows=5406 loops=1)
               Join Filter: (ci.movie_id = t.id)
               Rows Removed by Join Filter: 790078056
               Buffers: shared hit=319859986 read=351217
               ->  Hash Join  (cost=1591.58..3247.98 rows=1 width=29) (actual time=2450.913..2983.645 rows=1267 loops=1)
                     Hash Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=15 read=62123
                     ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=21) (actual time=84.046..1591.346 rows=274015 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=6 read=35996
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=22.284..1314.151 rows=1381453 loops=1)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1146859
                                 Buffers: shared hit=2 read=35996
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.036..0.036 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.021 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1591.55..1591.55 rows=6 width=8) (actual time=1317.745..1317.745 rows=6396 loops=1)
                           Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 314kB
                           Buffers: shared hit=9 read=26127
                           ->  Hash Join  (cost=142.86..1591.55 rows=6 width=8) (actual time=189.933..1315.655 rows=6396 loops=1)
                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                 Buffers: shared hit=9 read=26127
                                 ->  Hash Join  (cost=91.13..1539.77 rows=337 width=4) (actual time=80.671..1203.202 rows=24091 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=5 read=25398
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..539.173 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=91.13..91.13 rows=10 width=4) (actual time=55.544..55.544 rows=10 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2 read=947
                                             ->  Seq Scan on keyword k  (cost=0.00..91.13 rows=10 width=4) (actual time=0.337..55.539 rows=10 loops=1)
                                                   Filter: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                   Rows Removed by Filter: 134160
                                                   Buffers: shared hit=2 read=947
                                 ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=103.604..103.604 rows=85941 loops=1)
                                       Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                       Buffers: shared hit=4 read=729
                                       ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=19.457..86.218 rows=85941 loops=1)
                                             Hash Cond: (cc.status_id = cct2.id)
                                             Buffers: shared hit=4 read=729
                                             ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=19.398..64.440 rows=85941 loops=1)
                                                   Hash Cond: (cc.subject_id = cct1.id)
                                                   Buffers: shared hit=3 read=729
                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=19.323..33.948 rows=135086 loops=1)
                                                         Buffers: shared hit=2 read=729
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.019 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.029..0.029 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.020 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=1
               ->  Hash Join  (cost=1874.28..15259.98 rows=1002116 width=8) (actual time=1.381..6933.285 rows=623586 loops=1267)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=319859971 read=289094
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=12) (actual time=0.003..2471.603 rows=36244344 loops=1267)
                           Buffers: shared hit=319859969 read=252649
                     ->  Hash  (cost=1847.99..1847.99 rows=179128 width=4) (actual time=1719.928..1719.928 rows=180152 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 8382kB
                           Buffers: shared hit=2 read=36445
                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=179128 width=4) (actual time=6.332..1645.486 rows=180152 loops=1)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 2960187
                                 Buffers: shared hit=2 read=36445
         ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=0.004..86.499 rows=1186554 loops=5406)
               Buffers: shared hit=85980074 read=36189
 Planning Time: 5864.071 ms
 Execution Time: 9986948.759 ms
(86 rows)


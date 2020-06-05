                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21078.85..21078.85 rows=1 width=32) (actual time=48395.916..48395.916 rows=1 loops=1)
   Buffers: shared hit=2081031 read=406829
   ->  Nested Loop  (cost=2224.38..21078.85 rows=1 width=17) (actual time=19341.382..48395.842 rows=17 loops=1)
         Join Filter: (ci.person_id = n.id)
         Rows Removed by Join Filter: 49
         Buffers: shared hit=2081031 read=406829
         ->  Nested Loop  (cost=2224.38..18722.67 rows=1 width=21) (actual time=15588.801..34816.069 rows=33 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Rows Removed by Join Filter: 9042462
               Buffers: shared hit=1151958 read=351217
               ->  Nested Loop  (cost=2224.34..17060.25 rows=1 width=16) (actual time=14244.526..15036.466 rows=33 loops=1)
                     Join Filter: (mk.movie_id = ci.movie_id)
                     Rows Removed by Join Filter: 853119
                     Buffers: shared hit=19 read=315221
                     ->  Hash Join  (cost=80.71..1529.36 rows=270 width=4) (actual time=85.946..1163.117 rows=35548 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=8 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..474.952 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=80.71..80.71 rows=8 width=4) (actual time=85.556..85.556 rows=8 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..80.71 rows=8 width=4) (actual time=16.840..85.527 rows=8 loops=1)
                                       Filter: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                       Rows Removed by Filter: 134162
                                       Buffers: shared hit=2 read=947
                     ->  Materialize  (cost=2143.63..15529.74 rows=19 width=12) (actual time=0.057..0.388 rows=24 loops=35548)
                           Buffers: shared hit=11 read=289823
                           ->  Hash Join  (cost=2143.63..15529.74 rows=19 width=12) (actual time=2040.493..13731.896 rows=24 loops=1)
                                 Hash Cond: (ci.movie_id = cc.movie_id)
                                 Buffers: shared hit=11 read=289823
                                 ->  Hash Join  (cost=2091.90..15477.60 rows=3513 width=8) (actual time=1750.889..13629.131 rows=556 loops=1)
                                       Hash Cond: (ci.person_role_id = chn.id)
                                       Buffers: shared hit=7 read=289094
                                       ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=12) (actual time=0.007..6872.098 rows=36244344 loops=1)
                                             Buffers: shared hit=5 read=252649
                                       ->  Hash  (cost=2091.81..2091.81 rows=628 width=4) (actual time=1736.805..1736.805 rows=30 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                             Buffers: shared hit=2 read=36445
                                             ->  Seq Scan on char_name chn  (cost=0.00..2091.81 rows=628 width=4) (actual time=76.866..1736.680 rows=30 loops=1)
                                                   Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                                                   Rows Removed by Filter: 3140309
                                                   Buffers: shared hit=2 read=36445
                                 ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=102.415..102.415 rows=85941 loops=1)
                                       Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                       Buffers: shared hit=4 read=729
                                       ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=5.397..82.307 rows=85941 loops=1)
                                             Hash Cond: (cc.status_id = cct2.id)
                                             Buffers: shared hit=4 read=729
                                             ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=5.363..56.609 rows=85941 loops=1)
                                                   Hash Cond: (cc.subject_id = cct1.id)
                                                   Buffers: shared hit=3 read=729
                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=5.287..21.832 rows=135086 loops=1)
                                                         Buffers: shared hit=2 read=729
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.019 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.016..0.016 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.011 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=1
               ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=21) (actual time=23.432..576.129 rows=274015 loops=33)
                     Hash Cond: (t.kind_id = kt.id)
                     Buffers: shared hit=1151939 read=35996
                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=0.196..396.641 rows=1381453 loops=33)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1146859
                           Buffers: shared hit=1151938 read=35996
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.020 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared hit=1
         ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=4) (actual time=72.473..411.504 rows=2 loops=33)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 2234774
               Buffers: shared hit=929073 read=55612
 Planning Time: 5984.187 ms
 Execution Time: 48396.841 ms
(88 rows)


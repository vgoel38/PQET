                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21473.24..21473.24 rows=1 width=32) (actual time=45867.979..45867.980 rows=1 loops=1)
   Buffers: shared hit=1552786 read=376154
   ->  Nested Loop  (cost=2224.38..21473.24 rows=1 width=17) (actual time=15962.875..45867.837 rows=33 loops=1)
         Join Filter: (ci.person_id = n.id)
         Rows Removed by Join Filter: 31742185
         Buffers: shared hit=1552786 read=376154
         ->  Nested Loop  (cost=2224.38..18828.97 rows=1 width=21) (actual time=15655.548..39535.009 rows=33 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Rows Removed by Join Filter: 16251906
               Buffers: shared hit=1151958 read=351217
               ->  Nested Loop  (cost=2224.34..17060.25 rows=1 width=16) (actual time=14410.788..15239.589 rows=33 loops=1)
                     Join Filter: (mk.movie_id = ci.movie_id)
                     Rows Removed by Join Filter: 853119
                     Buffers: shared hit=19 read=315221
                     ->  Hash Join  (cost=80.71..1529.36 rows=270 width=4) (actual time=81.867..1362.271 rows=35548 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=8 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.021..655.785 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=80.71..80.71 rows=8 width=4) (actual time=81.577..81.577 rows=8 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..80.71 rows=8 width=4) (actual time=17.188..81.550 rows=8 loops=1)
                                       Filter: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                       Rows Removed by Filter: 134162
                                       Buffers: shared hit=2 read=947
                     ->  Materialize  (cost=2143.63..15529.74 rows=19 width=12) (actual time=0.058..0.388 rows=24 loops=35548)
                           Buffers: shared hit=11 read=289823
                           ->  Hash Join  (cost=2143.63..15529.74 rows=19 width=12) (actual time=2044.353..13735.648 rows=24 loops=1)
                                 Hash Cond: (ci.movie_id = cc.movie_id)
                                 Buffers: shared hit=11 read=289823
                                 ->  Hash Join  (cost=2091.90..15477.60 rows=3513 width=8) (actual time=1753.210..13629.729 rows=556 loops=1)
                                       Hash Cond: (ci.person_role_id = chn.id)
                                       Buffers: shared hit=7 read=289094
                                       ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=12) (actual time=0.007..6958.831 rows=36244344 loops=1)
                                             Buffers: shared hit=5 read=252649
                                       ->  Hash  (cost=2091.81..2091.81 rows=628 width=4) (actual time=1738.097..1738.098 rows=30 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                             Buffers: shared hit=2 read=36445
                                             ->  Seq Scan on char_name chn  (cost=0.00..2091.81 rows=628 width=4) (actual time=78.254..1738.012 rows=30 loops=1)
                                                   Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                                                   Rows Removed by Filter: 3140309
                                                   Buffers: shared hit=2 read=36445
                                 ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=105.593..105.594 rows=85941 loops=1)
                                       Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                       Buffers: shared hit=4 read=729
                                       ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=9.968..85.644 rows=85941 loops=1)
                                             Hash Cond: (cc.status_id = cct.id)
                                             Buffers: shared hit=4 read=729
                                             ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=9.944..60.971 rows=85941 loops=1)
                                                   Hash Cond: (cc.subject_id = cct.id)
                                                   Buffers: shared hit=3 read=729
                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=9.860..26.203 rows=135086 loops=1)
                                                         Buffers: shared hit=2 read=729
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.019 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.011 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.008 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=1
               ->  Hash Join  (cost=0.03..1720.76 rows=326753 width=21) (actual time=22.427..696.358 rows=492483 loops=33)
                     Hash Cond: (t.kind_id = kt.id)
                     Buffers: shared hit=1151939 read=35996
                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=2287272 width=25) (actual time=0.220..410.488 rows=2287271 loops=33)
                           Filter: (production_year > 1950)
                           Rows Removed by Filter: 241041
                           Buffers: shared hit=1151938 read=35996
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.021 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared hit=1
         ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=0.181..88.122 rows=961885 loops=33)
               Buffers: shared hit=400828 read=24937
 Planning Time: 5775.409 ms
 Execution Time: 45868.926 ms
(86 rows)


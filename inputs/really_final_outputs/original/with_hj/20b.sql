                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21039.97..21039.97 rows=1 width=32) (actual time=19718.244..19718.244 rows=1 loops=1)
   Buffers: shared hit=19 read=405919
   ->  Hash Join  (cost=7653.98..21039.97 rows=1 width=17) (actual time=8597.040..19718.220 rows=17 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=19 read=405919
         ->  Hash Join  (cost=4448.08..17834.07 rows=1 width=4) (actual time=5469.865..16591.036 rows=16 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared read=344714
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=8) (actual time=3747.407..14868.549 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=49.741..6475.761 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=4) (actual time=2726.477..2726.477 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=4) (actual time=316.031..2726.466 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared read=55613
               ->  Hash  (cost=2091.81..2091.81 rows=628 width=4) (actual time=1722.402..1722.402 rows=30 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared read=36447
                     ->  Seq Scan on char_name chn  (cost=0.00..2091.81 rows=628 width=4) (actual time=54.112..1722.300 rows=30 loops=1)
                           Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                           Rows Removed by Filter: 3140309
                           Buffers: shared read=36447
         ->  Hash  (cost=3205.90..3205.90 rows=1 width=29) (actual time=3127.147..3127.147 rows=1472 loops=1)
               Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 106kB
               Buffers: shared hit=16 read=61205
               ->  Hash Join  (cost=1549.50..3205.90 rows=1 width=29) (actual time=2522.514..3126.215 rows=1472 loops=1)
                     Hash Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=16 read=61205
                     ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=21) (actual time=122.315..1713.585 rows=274015 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared read=35999
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=19.346..1365.620 rows=1381453 loops=1)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1146859
                                 Buffers: shared read=35998
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.248..21.248 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.230..21.236 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared read=1
                     ->  Hash  (cost=1549.47..1549.47 rows=5 width=8) (actual time=1352.595..1352.595 rows=8765 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 471kB
                           Buffers: shared hit=16 read=25206
                           ->  Hash Join  (cost=100.79..1549.47 rows=5 width=8) (actual time=223.452..1349.888 rows=8765 loops=1)
                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                 Buffers: shared hit=16 read=25206
                                 ->  Hash Join  (cost=49.06..1497.70 rows=270 width=4) (actual time=106.161..1244.962 rows=35548 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=15 read=24474
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=9.715..537.836 rows=4523930 loops=1)
                                             Buffers: shared read=24454
                                       ->  Hash  (cost=49.06..49.06 rows=8 width=4) (actual time=95.862..95.862 rows=8 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=15 read=20
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=43.594..95.818 rows=8 loops=1)
                                                   Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                   Buffers: shared hit=15 read=20
                                 ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=92.701..92.701 rows=85941 loops=1)
                                       Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                       Buffers: shared hit=1 read=732
                                       ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=5.435..74.281 rows=85941 loops=1)
                                             Hash Cond: (cc.status_id = cct.id)
                                             Buffers: shared hit=1 read=732
                                             ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=5.337..51.908 rows=85941 loops=1)
                                                   Hash Cond: (cc.subject_id = cct.id)
                                                   Buffers: shared hit=1 read=731
                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=5.253..20.920 rows=135086 loops=1)
                                                         Buffers: shared read=731
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.034..0.034 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.021..0.025 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.083..0.083 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=1
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.078..0.079 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared read=1
 Planning Time: 5349.793 ms
 Execution Time: 19719.273 ms
(91 rows)


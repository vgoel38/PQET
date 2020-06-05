                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21039.97..21039.97 rows=1 width=32) (actual time=22411.335..22411.335 rows=1 loops=1)
   Buffers: shared hit=36 read=405902
   ->  Hash Join  (cost=7653.98..21039.97 rows=1 width=17) (actual time=10377.669..22411.298 rows=17 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=36 read=405902
         ->  Hash Join  (cost=4448.08..17834.07 rows=1 width=4) (actual time=7115.777..19149.385 rows=16 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=8 read=344706
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=8) (actual time=5399.299..17432.835 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6 read=308261
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=0.006..7483.071 rows=36244344 loops=1)
                           Buffers: shared hit=5 read=252649
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=4) (actual time=4265.917..4265.917 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=4) (actual time=280.045..4265.907 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=2091.81..2091.81 rows=628 width=4) (actual time=1716.344..1716.344 rows=30 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=2 read=36445
                     ->  Seq Scan on char_name chn  (cost=0.00..2091.81 rows=628 width=4) (actual time=53.737..1716.246 rows=30 loops=1)
                           Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                           Rows Removed by Filter: 3140309
                           Buffers: shared hit=2 read=36445
         ->  Hash  (cost=3205.90..3205.90 rows=1 width=29) (actual time=3261.866..3261.866 rows=1472 loops=1)
               Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 106kB
               Buffers: shared hit=25 read=61196
               ->  Hash Join  (cost=1549.50..3205.90 rows=1 width=29) (actual time=2657.539..3260.874 rows=1472 loops=1)
                     Hash Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=25 read=61196
                     ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=21) (actual time=74.062..1824.647 rows=274015 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=3 read=35996
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=12.764..1524.259 rows=1381453 loops=1)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1146859
                                 Buffers: shared hit=2 read=35996
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.030..0.030 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.017 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1549.47..1549.47 rows=5 width=8) (actual time=1376.545..1376.545 rows=8765 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 471kB
                           Buffers: shared hit=22 read=25200
                           ->  Hash Join  (cost=100.79..1549.47 rows=5 width=8) (actual time=223.008..1373.886 rows=8765 loops=1)
                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                 Buffers: shared hit=22 read=25200
                                 ->  Hash Join  (cost=49.06..1497.70 rows=270 width=4) (actual time=110.032..1250.534 rows=35548 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=18 read=24471
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..556.420 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=49.06..49.06 rows=8 width=4) (actual time=88.935..88.935 rows=8 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=15 read=20
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=36.662..88.896 rows=8 loops=1)
                                                   Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                   Buffers: shared hit=15 read=20
                                 ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=111.489..111.489 rows=85941 loops=1)
                                       Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                       Buffers: shared hit=4 read=729
                                       ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=26.646..93.762 rows=85941 loops=1)
                                             Hash Cond: (cc.status_id = cct.id)
                                             Buffers: shared hit=4 read=729
                                             ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=26.619..71.980 rows=85941 loops=1)
                                                   Hash Cond: (cc.subject_id = cct.id)
                                                   Buffers: shared hit=3 read=729
                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=26.550..41.336 rows=135086 loops=1)
                                                         Buffers: shared hit=2 read=729
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.029..0.029 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.020 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=1
 Planning Time: 5981.938 ms
 Execution Time: 22411.798 ms
(91 rows)


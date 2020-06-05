                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21430.57..21430.57 rows=1 width=32) (actual time=19758.878..19758.878 rows=1 loops=1)
   Buffers: shared hit=19 read=405919
   ->  Hash Join  (cost=8044.46..21430.57 rows=1 width=17) (actual time=8642.938..19758.833 rows=33 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=19 read=405919
         ->  Hash Join  (cost=5400.18..18786.29 rows=1 width=21) (actual time=5997.041..17112.915 rows=33 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=16 read=350306
               ->  Hash Join  (cost=2091.90..15477.60 rows=3518 width=8) (actual time=1894.384..13973.384 rows=556 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared read=289101
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=47.985..7180.233 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2091.81..2091.81 rows=628 width=4) (actual time=1828.156..1828.156 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared read=36447
                           ->  Seq Scan on char_name chn  (cost=0.00..2091.81 rows=628 width=4) (actual time=57.701..1828.049 rows=30 loops=1)
                                 Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                                 Rows Removed by Filter: 3140309
                                 Buffers: shared read=36447
               ->  Hash  (cost=3308.29..3308.29 rows=1 width=29) (actual time=3139.287..3139.287 rows=6016 loops=1)
                     Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 438kB
                     Buffers: shared hit=16 read=61205
                     ->  Hash Join  (cost=1549.50..3308.29 rows=1 width=29) (actual time=2414.593..3136.177 rows=6016 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared hit=16 read=61205
                           ->  Hash Join  (cost=0.03..1720.76 rows=326753 width=21) (actual time=109.823..1675.156 rows=492483 loops=1)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared read=35999
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=2287272 width=25) (actual time=6.575..1194.078 rows=2287271 loops=1)
                                       Filter: (production_year > 1950)
                                       Rows Removed by Filter: 241041
                                       Buffers: shared read=35998
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.249..21.250 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.217..21.223 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared read=1
                           ->  Hash  (cost=1549.47..1549.47 rows=5 width=8) (actual time=1376.381..1376.381 rows=8765 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 471kB
                                 Buffers: shared hit=16 read=25206
                                 ->  Hash Join  (cost=100.79..1549.47 rows=5 width=8) (actual time=248.072..1373.441 rows=8765 loops=1)
                                       Hash Cond: (mk.movie_id = cc.movie_id)
                                       Buffers: shared hit=16 read=25206
                                       ->  Hash Join  (cost=49.06..1497.70 rows=270 width=4) (actual time=105.845..1245.179 rows=35548 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=15 read=24474
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=9.425..534.464 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=49.06..49.06 rows=8 width=4) (actual time=95.858..95.858 rows=8 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=15 read=20
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=43.619..95.815 rows=8 loops=1)
                                                         Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                         Buffers: shared hit=15 read=20
                                       ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=115.783..115.783 rows=85941 loops=1)
                                             Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                             Buffers: shared hit=1 read=732
                                             ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=13.805..94.182 rows=85941 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=1 read=732
                                                   ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=9.555..63.133 rows=85941 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=1 read=731
                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=9.484..26.590 rows=135086 loops=1)
                                                               Buffers: shared read=731
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.029..0.029 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.020 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=4.221..4.221 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=4.210..4.212 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared read=1
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2635.713..2635.713 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=38.847..1344.575 rows=4167491 loops=1)
                     Buffers: shared read=55613
 Planning Time: 5355.906 ms
 Execution Time: 19763.546 ms
(89 rows)


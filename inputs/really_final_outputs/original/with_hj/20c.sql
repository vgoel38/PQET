                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21244.97..21244.97 rows=1 width=64) (actual time=19705.239..19705.239 rows=1 loops=1)
   Buffers: shared hit=23 read=405923
   ->  Hash Join  (cost=7737.78..21244.97 rows=1 width=32) (actual time=7634.706..19689.708 rows=5406 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=23 read=405923
         ->  Hash Join  (cost=5093.51..18600.70 rows=1 width=21) (actual time=5012.467..17063.397 rows=5406 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=20 read=350310
               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=8) (actual time=1724.416..13691.957 rows=623586 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared read=289101
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=5.694..6412.797 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=4) (actual time=1717.996..1717.997 rows=180152 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 8382kB
                           Buffers: shared read=36447
                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=4) (actual time=5.997..1641.830 rows=180152 loops=1)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 2960187
                                 Buffers: shared read=36447
               ->  Hash  (cost=3218.18..3218.18 rows=1 width=29) (actual time=3275.133..3275.133 rows=1267 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 92kB
                     Buffers: shared hit=20 read=61209
                     ->  Hash Join  (cost=1561.77..3218.18 rows=1 width=29) (actual time=2673.987..3274.239 rows=1267 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared hit=20 read=61209
                           ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=21) (actual time=112.246..1837.881 rows=274015 loops=1)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared read=35999
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=9.330..1497.021 rows=1381453 loops=1)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1146859
                                       Buffers: shared read=35998
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.256..21.256 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.235..21.241 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared read=1
                           ->  Hash  (cost=1561.74..1561.74 rows=6 width=8) (actual time=1375.565..1375.565 rows=6396 loops=1)
                                 Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 314kB
                                 Buffers: shared hit=20 read=25210
                                 ->  Hash Join  (cost=113.06..1561.74 rows=6 width=8) (actual time=248.766..1373.500 rows=6396 loops=1)
                                       Hash Cond: (mk.movie_id = cc.movie_id)
                                       Buffers: shared hit=20 read=25210
                                       ->  Hash Join  (cost=61.33..1509.97 rows=337 width=4) (actual time=82.071..1232.077 rows=24091 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=19 read=24478
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=18.721..539.938 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=62.964..62.964 rows=10 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=19 read=24
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=34.098..62.922 rows=10 loops=1)
                                                         Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                         Buffers: shared hit=19 read=24
                                       ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=132.662..132.662 rows=85941 loops=1)
                                             Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                             Buffers: shared hit=1 read=732
                                             ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=28.422..110.750 rows=85941 loops=1)
                                                   Hash Cond: (cc.status_id = cct.id)
                                                   Buffers: shared hit=1 read=732
                                                   ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=9.465..63.772 rows=85941 loops=1)
                                                         Hash Cond: (cc.subject_id = cct.id)
                                                         Buffers: shared hit=1 read=731
                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=9.392..26.459 rows=135086 loops=1)
                                                               Buffers: shared read=731
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.028..0.029 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.020 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=18.941..18.941 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=18.925..18.929 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared read=1
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2612.159..2612.159 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=14.664..1235.545 rows=4167491 loops=1)
                     Buffers: shared read=55613
 Planning Time: 5305.196 ms
 Execution Time: 19710.305 ms
(89 rows)


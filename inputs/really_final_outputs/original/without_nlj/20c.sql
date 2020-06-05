                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21244.97..21244.97 rows=1 width=64) (actual time=19622.637..19622.638 rows=1 loops=1)
   Buffers: shared hit=41 read=405905
   ->  Hash Join  (cost=7737.78..21244.97 rows=1 width=32) (actual time=7527.157..19610.053 rows=5406 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=41 read=405905
         ->  Hash Join  (cost=5093.51..18600.70 rows=1 width=21) (actual time=4814.270..16892.965 rows=5406 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=37 read=350293
               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=8) (actual time=1757.241..13754.112 rows=623586 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=7 read=289094
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=0.011..6477.740 rows=36244344 loops=1)
                           Buffers: shared hit=5 read=252649
                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=4) (actual time=1755.848..1755.849 rows=180152 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 8382kB
                           Buffers: shared hit=2 read=36445
                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=4) (actual time=10.724..1679.878 rows=180152 loops=1)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 2960187
                                 Buffers: shared hit=2 read=36445
               ->  Hash  (cost=3218.18..3218.18 rows=1 width=29) (actual time=3042.120..3042.120 rows=1267 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 92kB
                     Buffers: shared hit=30 read=61199
                     ->  Hash Join  (cost=1561.77..3218.18 rows=1 width=29) (actual time=2437.752..3041.148 rows=1267 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared hit=30 read=61199
                           ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=21) (actual time=71.303..1660.954 rows=274015 loops=1)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=3 read=35996
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=9.564..1341.799 rows=1381453 loops=1)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1146859
                                       Buffers: shared hit=2 read=35996
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.027..0.028 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.019 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared hit=1
                           ->  Hash  (cost=1561.74..1561.74 rows=6 width=8) (actual time=1317.688..1317.688 rows=6396 loops=1)
                                 Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 314kB
                                 Buffers: shared hit=27 read=25203
                                 ->  Hash Join  (cost=113.06..1561.74 rows=6 width=8) (actual time=198.767..1315.416 rows=6396 loops=1)
                                       Hash Cond: (mk.movie_id = cc.movie_id)
                                       Buffers: shared hit=27 read=25203
                                       ->  Hash Join  (cost=61.33..1509.97 rows=337 width=4) (actual time=63.989..1186.353 rows=24091 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=23 read=24474
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..539.021 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=43.453..43.453 rows=10 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=20 read=23
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=14.574..43.413 rows=10 loops=1)
                                                         Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                         Buffers: shared hit=20 read=23
                                       ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=120.335..120.335 rows=85941 loops=1)
                                             Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                             Buffers: shared hit=4 read=729
                                             ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=19.517..99.222 rows=85941 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=4 read=729
                                                   ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=19.492..71.865 rows=85941 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=3 read=729
                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=19.418..35.814 rows=135086 loops=1)
                                                               Buffers: shared hit=2 read=729
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.019 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2687.234..2687.234 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=22.856..1277.424 rows=4167491 loops=1)
                     Buffers: shared hit=1 read=55612
 Planning Time: 6438.272 ms
 Execution Time: 19662.106 ms
(89 rows)


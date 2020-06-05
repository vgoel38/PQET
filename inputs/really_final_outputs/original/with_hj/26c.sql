                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22203.52..22203.52 rows=1 width=96) (actual time=21665.511..21665.511 rows=1 loops=1)
   Buffers: shared hit=23 read=414377
   ->  Hash Join  (cost=8643.20..22203.52 rows=1 width=39) (actual time=9040.294..21646.118 rows=5400 loops=1)
         Hash Cond: (cc.status_id = cct2.id)
         Buffers: shared hit=23 read=414377
         ->  Hash Join  (cost=8643.17..22203.48 rows=1 width=43) (actual time=9017.236..21621.036 rows=5400 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=20 read=414376
               ->  Hash Join  (cost=5998.90..19559.21 rows=1 width=47) (actual time=6368.504..18968.367 rows=5400 loops=1)
                     Hash Cond: (cc.subject_id = cct1.id)
                     Buffers: shared hit=20 read=358763
                     ->  Hash Join  (cost=5998.86..19559.18 rows=1 width=51) (actual time=6368.463..18965.950 rows=6359 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=19 read=358763
                           ->  Hash Join  (cost=5946.77..19507.08 rows=1 width=59) (actual time=6260.264..18859.272 rows=10634 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=19 read=358032
                                 ->  Hash Join  (cost=5885.44..19445.70 rows=703 width=63) (actual time=6204.396..18592.260 rows=2161343 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared read=358008
                                       ->  Hash Join  (cost=4141.57..17692.96 rows=393 width=55) (actual time=4277.495..16206.533 rows=60388 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared read=333554
                                             ->  Hash Join  (cost=4141.52..17689.25 rows=44447 width=59) (actual time=4257.290..16154.070 rows=181500 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared read=333553
                                                   ->  Hash Join  (cost=3578.39..17104.08 rows=81430 width=45) (actual time=3486.536..15295.128 rows=98725 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared read=325100
                                                         ->  Hash Join  (cost=3578.36..17049.11 rows=570007 width=49) (actual time=3477.324..15234.381 rows=296510 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared read=325099
                                                               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=24) (actual time=1723.909..13174.224 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared read=289101
                                                                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=5.448..5998.756 rows=36244344 loops=1)
                                                                           Buffers: shared read=252654
                                                                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=20) (actual time=1717.335..1717.336 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared read=36447
                                                                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=20) (actual time=5.509..1631.304 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared read=36447
                                                               ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=25) (actual time=1738.441..1738.441 rows=1381453 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                     Buffers: shared read=35998
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=22.074..1131.195 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared read=35998
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=9.191..9.191 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=9.167..9.173 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=360.56..360.56 rows=1380035 width=14) (actual time=748.652..748.652 rows=1380035 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                         Buffers: shared read=8453
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=10.296..366.062 rows=1380035 loops=1)
                                                               Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.180..20.180 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=20.159..20.166 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                       ->  Hash  (cost=1079.84..1079.84 rows=4523930 width=8) (actual time=1888.327..1888.327 rows=4523930 loops=1)
                                             Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                                             Buffers: shared read=24454
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=23.434..932.867 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                 ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=50.748..50.748 rows=10 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=19 read=24
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=13.541..50.703 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=19 read=24
                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=99.351..99.351 rows=135086 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                 Buffers: shared read=731
                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=22.421..57.034 rows=135086 loops=1)
                                       Buffers: shared read=731
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.011 rows=1 loops=1)
                                 Filter: ((kind)::text = 'cast'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2623.313..2623.313 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=26.037..1331.922 rows=4167491 loops=1)
                           Buffers: shared read=55613
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=22.997..22.997 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=22.964..22.968 rows=2 loops=1)
                     Filter: ((kind)::text ~~ '%complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared read=1
 Planning Time: 9471.549 ms
 Execution Time: 21680.661 ms
(107 rows)


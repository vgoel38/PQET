                                                                                              QUERY PLAN                                                                                               
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22122.95..22122.95 rows=1 width=128) (actual time=21155.693..21155.694 rows=1 loops=1)
   Buffers: shared hit=44 read=414356
   ->  Hash Join  (cost=8576.10..22122.95 rows=1 width=54) (actual time=8926.354..21144.415 rows=1728 loops=1)
         Hash Cond: (cc.status_id = cct2.id)
         Buffers: shared hit=44 read=414356
         ->  Hash Join  (cost=8576.07..22122.92 rows=1 width=58) (actual time=8926.315..21143.492 rows=1728 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=40 read=414356
               ->  Hash Join  (cost=5931.80..19478.65 rows=1 width=47) (actual time=6296.243..18511.902 rows=1728 loops=1)
                     Hash Cond: (cc.subject_id = cct1.id)
                     Buffers: shared hit=39 read=358744
                     ->  Hash Join  (cost=5931.77..19478.61 rows=1 width=51) (actual time=6296.210..18510.817 rows=2199 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=38 read=358744
                           ->  Hash Join  (cost=5879.67..19426.52 rows=1 width=59) (actual time=6187.916..18410.202 rows=2929 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=36 read=358015
                                 ->  Hash Join  (cost=5818.34..19365.18 rows=98 width=63) (actual time=6130.914..18299.671 rows=561866 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=16 read=357992
                                       ->  Hash Join  (cost=4074.47..17620.07 rows=55 width=55) (actual time=4200.014..16254.229 rows=8886 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=13 read=333541
                                             ->  Hash Join  (cost=4074.42..17619.51 rows=6215 width=59) (actual time=4199.971..16249.678 rows=17509 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=12 read=333541
                                                   ->  Hash Join  (cost=3578.39..17104.08 rows=81430 width=45) (actual time=3570.517..15586.301 rows=98725 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=10 read=325090
                                                         ->  Hash Join  (cost=3578.36..17049.11 rows=570007 width=49) (actual time=3570.488..15534.895 rows=296510 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared hit=9 read=325090
                                                               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=24) (actual time=1729.342..13400.522 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=7 read=289094
                                                                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=0.007..6263.448 rows=36244344 loops=1)
                                                                           Buffers: shared hit=5 read=252649
                                                                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=20) (actual time=1728.632..1728.632 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared hit=2 read=36445
                                                                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=20) (actual time=14.659..1645.136 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared hit=2 read=36445
                                                               ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=25) (actual time=1833.461..1833.461 rows=1381453 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                     Buffers: shared hit=2 read=35996
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=20.367..1215.442 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared hit=2 read=35996
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.008 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=467.71..467.71 rows=192955 width=14) (actual time=622.813..622.813 rows=192967 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 10369kB
                                                         Buffers: shared hit=2 read=8451
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=0.023..540.398 rows=192967 loops=1)
                                                               Filter: (info > '7.0'::text)
                                                               Rows Removed by Filter: 1187068
                                                               Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.022 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=1079.84..1079.84 rows=4523930 width=8) (actual time=1893.221..1893.222 rows=4523930 loops=1)
                                             Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                                             Buffers: shared hit=3 read=24451
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..916.439 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                 ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=52.754..52.754 rows=10 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=20 read=23
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=15.500..52.710 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=20 read=23
                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=97.907..97.907 rows=135086 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                 Buffers: shared hit=2 read=729
                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=22.938..56.940 rows=135086 loops=1)
                                       Buffers: shared hit=2 read=729
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                                 Filter: ((kind)::text = 'cast'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2620.516..2620.517 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=14.793..1228.681 rows=4167491 loops=1)
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.009 rows=2 loops=1)
                     Filter: ((kind)::text ~~ '%complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared hit=1
 Planning Time: 10363.582 ms
 Execution Time: 21167.478 ms
(109 rows)


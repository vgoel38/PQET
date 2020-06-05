                                                                                              QUERY PLAN                                                                                               
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22115.49..22115.49 rows=1 width=128) (actual time=20816.869..20816.869 rows=1 loops=1)
   Buffers: shared hit=44 read=414356
   ->  Hash Join  (cost=8575.06..22115.48 rows=1 width=54) (actual time=8806.472..20805.588 rows=1728 loops=1)
         Hash Cond: (cc.status_id = cct.id)
         Buffers: shared hit=44 read=414356
         ->  Hash Join  (cost=8575.03..22115.45 rows=1 width=58) (actual time=8806.438..20804.636 rows=1728 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=40 read=414356
               ->  Hash Join  (cost=5930.75..19471.18 rows=1 width=47) (actual time=6189.647..18186.248 rows=1728 loops=1)
                     Hash Cond: (cc.subject_id = cct.id)
                     Buffers: shared hit=39 read=358744
                     ->  Hash Join  (cost=5930.72..19471.15 rows=1 width=51) (actual time=6189.614..18185.187 rows=2199 loops=1)
                           Hash Cond: (t.id = cc.movie_id)
                           Buffers: shared hit=38 read=358744
                           ->  Hash Join  (cost=5878.62..19419.05 rows=1 width=59) (actual time=6071.479..18083.070 rows=2929 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=36 read=358015
                                 ->  Hash Join  (cost=5817.30..19357.72 rows=95 width=63) (actual time=6014.368..17973.774 rows=561866 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=16 read=357992
                                       ->  Hash Join  (cost=4073.43..17612.72 rows=53 width=55) (actual time=4101.034..15946.660 rows=8886 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=13 read=333541
                                             ->  Hash Join  (cost=4073.38..17612.18 rows=5970 width=59) (actual time=4100.989..15942.289 rows=17509 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=12 read=333541
                                                   ->  Hash Join  (cost=3577.35..17097.52 rows=78221 width=45) (actual time=3466.161..15276.046 rows=98725 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=10 read=325090
                                                         ->  Hash Join  (cost=3577.32..17044.71 rows=547550 width=49) (actual time=3466.105..15224.302 rows=296510 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared hit=9 read=325090
                                                               ->  Hash Join  (cost=1874.28..15259.98 rows=1002116 width=24) (actual time=1731.352..13194.818 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=7 read=289094
                                                                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=12) (actual time=0.006..6062.902 rows=36244344 loops=1)
                                                                           Buffers: shared hit=5 read=252649
                                                                     ->  Hash  (cost=1847.99..1847.99 rows=179128 width=20) (actual time=1730.707..1730.708 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared hit=2 read=36445
                                                                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=179128 width=20) (actual time=11.461..1644.608 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared hit=2 read=36445
                                                               ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=25) (actual time=1726.913..1726.913 rows=1381453 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                     Buffers: shared hit=2 read=35996
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=18.888..1132.372 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared hit=2 read=35996
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.027 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.015 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=467.71..467.71 rows=192955 width=14) (actual time=625.023..625.023 rows=192967 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 10369kB
                                                         Buffers: shared hit=2 read=8451
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=0.023..541.978 rows=192967 loops=1)
                                                               Filter: (info > '7.0'::text)
                                                               Rows Removed by Filter: 1187068
                                                               Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.024 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=1079.84..1079.84 rows=4523930 width=8) (actual time=1879.451..1879.451 rows=4523930 loops=1)
                                             Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                                             Buffers: shared hit=3 read=24451
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.019..906.613 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                 ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=51.241..51.241 rows=10 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=20 read=23
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=13.976..51.190 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=20 read=23
                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=99.384..99.384 rows=135086 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                 Buffers: shared hit=2 read=729
                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=22.909..57.105 rows=135086 loops=1)
                                       Buffers: shared hit=2 read=729
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.011 rows=1 loops=1)
                                 Filter: ((kind)::text = 'cast'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2607.188..2607.188 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=9.771..1225.735 rows=4167491 loops=1)
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.008 rows=2 loops=1)
                     Filter: ((kind)::text ~~ '%complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared hit=1
 Planning Time: 9993.940 ms
 Execution Time: 20826.794 ms
(109 rows)


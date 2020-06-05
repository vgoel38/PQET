                                                                                              QUERY PLAN                                                                                               
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21985.67..21985.67 rows=1 width=96) (actual time=20977.581..20977.581 rows=1 loops=1)
   Buffers: shared hit=31 read=414345
   ->  Hash Join  (cost=8464.65..21985.67 rows=1 width=39) (actual time=9014.808..20977.309 rows=93 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=31 read=414345
         ->  Hash Join  (cost=8440.12..21961.14 rows=2 width=43) (actual time=8903.845..20919.638 rows=32038 loops=1)
               Hash Cond: (t.id = mk.movie_id)
               Buffers: shared hit=21 read=414333
               ->  Hash Join  (cost=6696.25..20217.25 rows=1 width=55) (actual time=7073.655..19083.802 rows=124 loops=1)
                     Hash Cond: (mi_idx.info_type_id = it.id)
                     Buffers: shared hit=18 read=389882
                     ->  Hash Join  (cost=6696.20..20217.20 rows=4 width=59) (actual time=7062.924..19083.421 rows=525 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=17 read=389882
                           ->  Hash Join  (cost=4051.93..17572.93 rows=4 width=63) (actual time=4215.137..16234.824 rows=525 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=16 read=334270
                                 ->  Hash Join  (cost=3576.46..17097.41 rows=200 width=49) (actual time=3558.500..15610.096 rows=5037 loops=1)
                                       Hash Cond: (cc.status_id = cct.id)
                                       Buffers: shared hit=14 read=325819
                                       ->  Hash Join  (cost=3576.43..17097.30 rows=798 width=53) (actual time=3558.463..15607.854 rows=5037 loops=1)
                                             Hash Cond: (cc.subject_id = cct.id)
                                             Buffers: shared hit=13 read=325819
                                             ->  Hash Join  (cost=3576.40..17096.92 rows=3190 width=57) (actual time=3558.440..15605.558 rows=6118 loops=1)
                                                   Hash Cond: (t.id = cc.movie_id)
                                                   Buffers: shared hit=12 read=325819
                                                   ->  Hash Join  (cost=3524.30..17035.33 rows=59706 width=45) (actual time=3460.058..15491.284 rows=74119 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=10 read=325090
                                                         ->  Hash Join  (cost=3524.27..16995.01 rows=417945 width=49) (actual time=3460.025..15452.662 rows=215804 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared hit=9 read=325090
                                                               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=24) (actual time=1728.874..13437.197 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=7 read=289094
                                                                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=0.007..6224.357 rows=36244344 loops=1)
                                                                           Buffers: shared hit=5 read=252649
                                                                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=20) (actual time=1728.164..1728.165 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared hit=2 read=36445
                                                                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=20) (actual time=11.618..1642.407 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared hit=2 read=36445
                                                               ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=25) (actual time=1728.597..1728.597 rows=1012920 loops=1)
                                                                     Buckets: 1048576  Batches: 1  Memory Usage: 66484kB
                                                                     Buffers: shared hit=2 read=35996
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=20.802..1232.222 rows=1012920 loops=1)
                                                                           Filter: (production_year > 2005)
                                                                           Rows Removed by Filter: 1515392
                                                                           Buffers: shared hit=2 read=35996
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.010 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=87.484..87.484 rows=135086 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                         Buffers: shared hit=2 read=729
                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=8.849..44.290 rows=135086 loops=1)
                                                               Buffers: shared hit=2 read=729
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.005 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.017..0.017 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.011 rows=2 loops=1)
                                                   Filter: ((kind)::text ~~ '%complete%'::text)
                                                   Rows Removed by Filter: 2
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=467.71..467.71 rows=52860 width=14) (actual time=621.684..621.684 rows=52862 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 2800kB
                                       Buffers: shared hit=2 read=8451
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=0.047..593.565 rows=52862 loops=1)
                                             Filter: (info > '8.0'::text)
                                             Rows Removed by Filter: 1327173
                                             Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2838.329..2838.329 rows=4167491 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                 Buffers: shared hit=1 read=55612
                                 ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=7.306..1536.903 rows=4167491 loops=1)
                                       Buffers: shared hit=1 read=55612
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=1079.84..1079.84 rows=4523930 width=8) (actual time=1793.270..1793.270 rows=4523930 loops=1)
                     Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                     Buffers: shared hit=3 read=24451
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.019..851.599 rows=4523930 loops=1)
                           Buffers: shared hit=3 read=24451
         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=53.881..53.881 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=7 read=12
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=29.266..53.860 rows=4 loops=1)
                     Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                     Buffers: shared hit=7 read=12
 Planning Time: 10395.340 ms
 Execution Time: 20986.411 ms
(109 rows)


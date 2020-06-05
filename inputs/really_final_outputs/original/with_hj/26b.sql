                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21985.67..21985.67 rows=1 width=96) (actual time=20886.996..20886.997 rows=1 loops=1)
   Buffers: shared hit=11 read=414365
   ->  Hash Join  (cost=8464.65..21985.67 rows=1 width=39) (actual time=9027.877..20886.734 rows=93 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=11 read=414365
         ->  Hash Join  (cost=8440.12..21961.14 rows=2 width=43) (actual time=8924.456..20834.889 rows=32038 loops=1)
               Hash Cond: (t.id = mk.movie_id)
               Buffers: shared hit=1 read=414353
               ->  Hash Join  (cost=6696.25..20217.25 rows=1 width=55) (actual time=7065.161..18969.756 rows=124 loops=1)
                     Hash Cond: (mi_idx.info_type_id = it.id)
                     Buffers: shared hit=1 read=389899
                     ->  Hash Join  (cost=6696.20..20217.20 rows=4 width=59) (actual time=7028.909..18943.975 rows=525 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=1 read=389898
                           ->  Hash Join  (cost=4051.93..17572.93 rows=4 width=63) (actual time=4256.523..16170.760 rows=525 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=1 read=334285
                                 ->  Hash Join  (cost=3576.46..17097.41 rows=200 width=49) (actual time=3608.293..15549.862 rows=5037 loops=1)
                                       Hash Cond: (cc.status_id = cct.id)
                                       Buffers: shared hit=1 read=325832
                                       ->  Hash Join  (cost=3576.43..17097.30 rows=798 width=53) (actual time=3599.985..15539.415 rows=5037 loops=1)
                                             Hash Cond: (cc.subject_id = cct.id)
                                             Buffers: shared hit=1 read=325831
                                             ->  Hash Join  (cost=3576.40..17096.92 rows=3190 width=57) (actual time=3599.929..15536.964 rows=6118 loops=1)
                                                   Hash Cond: (t.id = cc.movie_id)
                                                   Buffers: shared read=325831
                                                   ->  Hash Join  (cost=3524.30..17035.33 rows=59706 width=45) (actual time=3506.354..15423.965 rows=74119 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared read=325100
                                                         ->  Hash Join  (cost=3524.27..16995.01 rows=417945 width=49) (actual time=3502.138..15380.939 rows=215804 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared read=325099
                                                               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=24) (actual time=1764.039..13359.186 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared read=289101
                                                                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=45.734..6198.165 rows=36244344 loops=1)
                                                                           Buffers: shared read=252654
                                                                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=20) (actual time=1716.277..1716.278 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared read=36447
                                                                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=20) (actual time=4.617..1631.689 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared read=36447
                                                               ->  Hash  (cost=1500.26..1500.26 rows=1012920 width=25) (actual time=1730.831..1730.831 rows=1012920 loops=1)
                                                                     Buckets: 1048576  Batches: 1  Memory Usage: 66484kB
                                                                     Buffers: shared read=35998
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=21.432..1244.042 rows=1012920 loops=1)
                                                                           Filter: (production_year > 2005)
                                                                           Rows Removed by Filter: 1515392
                                                                           Buffers: shared read=35998
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=4.195..4.195 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=4.167..4.173 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=84.775..84.775 rows=135086 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                         Buffers: shared read=731
                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=7.355..42.254 rows=135086 loops=1)
                                                               Buffers: shared read=731
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=8.279..8.279 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=8.263..8.266 rows=2 loops=1)
                                                   Filter: ((kind)::text ~~ '%complete%'::text)
                                                   Rows Removed by Filter: 2
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=467.71..467.71 rows=52860 width=14) (actual time=617.950..617.950 rows=52862 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 2800kB
                                       Buffers: shared read=8453
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=19.768..590.422 rows=52862 loops=1)
                                             Filter: (info > '8.0'::text)
                                             Rows Removed by Filter: 1327173
                                             Buffers: shared read=8453
                           ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2747.028..2747.028 rows=4167491 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                 Buffers: shared read=55613
                                 ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=28.612..1466.367 rows=4167491 loops=1)
                                       Buffers: shared read=55613
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=25.368..25.368 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=25.351..25.357 rows=1 loops=1)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
               ->  Hash  (cost=1079.84..1079.84 rows=4523930 width=8) (actual time=1819.339..1819.339 rows=4523930 loops=1)
                     Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                     Buffers: shared read=24454
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=26.299..867.896 rows=4523930 loops=1)
                           Buffers: shared read=24454
         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=47.908..47.908 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=7 read=12
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=24.471..47.876 rows=4 loops=1)
                     Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                     Buffers: shared hit=7 read=12
 Planning Time: 9484.684 ms
 Execution Time: 20899.499 ms
(109 rows)


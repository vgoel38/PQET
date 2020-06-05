                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32556.28..32556.28 rows=1 width=64) (actual time=29646.894..29646.894 rows=1 loops=1)
   Buffers: shared hit=6694 read=576184
   ->  Hash Join  (cost=16410.78..32556.28 rows=1 width=32) (actual time=21455.374..29631.690 rows=3575 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6694 read=576184
         ->  Hash Join  (cost=14589.47..30734.97 rows=1 width=36) (actual time=19582.858..27757.760 rows=3744 loops=1)
               Hash Cond: (t.id = mc.movie_id)
               Buffers: shared hit=6689 read=539739
               ->  Hash Join  (cost=13327.89..29473.39 rows=1 width=48) (actual time=18192.929..26365.837 rows=3715 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6684 read=517961
                     ->  Hash Join  (cost=10148.25..26293.73 rows=127 width=37) (actual time=14977.336..23189.114 rows=134654 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6680 read=450957
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=4112.703..12193.692 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=6 read=252649
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.015..11974.997 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared hit=5 read=252649
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.007 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Hash  (cost=10147.89..10147.89 rows=2169 width=25) (actual time=10864.432..10864.433 rows=424568 loops=1)
                                 Buckets: 524288 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 28911kB
                                 Buffers: shared hit=6674 read=198308
                                 ->  Hash Join  (cost=1703.08..10147.89 rows=2169 width=25) (actual time=3350.600..10737.459 rows=424568 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=6674 read=198308
                                       ->  Hash Join  (cost=0.05..8444.54 rows=3969 width=4) (actual time=1501.781..8662.323 rows=451039 loops=1)
                                             Hash Cond: (mi.info_type_id = it.id)
                                             Buffers: shared hit=6673 read=162311
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=669.704..8554.159 rows=451104 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                   Rows Removed by Filter: 14384616
                                                   Buffers: shared hit=6672 read=162311
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.021 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1844.068..1844.068 rows=1381453 loops=1)
                                             Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                             Buffers: shared hit=1 read=35997
                                             ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=11.003..1256.029 rows=1381453 loops=1)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1146859
                                                   Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=3178.45..3178.45 rows=8155 width=23) (actual time=3154.810..3154.810 rows=10525 loops=1)
                           Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 724kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=23) (actual time=2606.163..3149.550 rows=10525 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.012..301.944 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2601.563..2601.563 rows=50011 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1092.284..2575.264 rows=50011 loops=1)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4117480
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=1123.32..1123.32 rows=941996 width=4) (actual time=1387.542..1387.542 rows=1153798 loops=1)
                     Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                     Buffers: shared hit=5 read=21778
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=141.568..1060.892 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..294.554 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.246..141.246 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=5.955..110.157 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1862.973..1862.973 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=17.201..947.796 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 7471.354 ms
 Execution Time: 29654.308 ms
(92 rows)


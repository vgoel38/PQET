                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24083.65..24083.66 rows=1 width=128) (actual time=21124.112..21124.112 rows=1 loops=1)
   Buffers: shared hit=21 read=413873
   ->  Hash Join  (cost=7937.64..24083.60 rows=191 width=64) (actual time=13097.361..21106.160 rows=8144 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=21 read=413873
         ->  Hash Join  (cost=6262.57..22408.51 rows=191 width=55) (actual time=11227.787..19233.175 rows=8144 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared hit=17 read=377876
               ->  Hash Join  (cost=5000.98..21146.52 rows=275 width=51) (actual time=9819.776..17826.938 rows=7726 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=12 read=356098
                     ->  Hash Join  (cost=3179.68..19325.17 rows=568 width=39) (actual time=7332.688..15335.691 rows=8204 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=10 read=319653
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=4155.312..12130.874 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=6 read=252649
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.015..11905.280 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared hit=5 read=252649
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Hash  (cost=3178.45..3178.45 rows=8155 width=39) (actual time=3154.494..3154.494 rows=10525 loops=1)
                                 Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 909kB
                                 Buffers: shared hit=4 read=67004
                                 ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=39) (actual time=2606.193..3147.824 rows=10525 loops=1)
                                       Hash Cond: (an.person_id = n.id)
                                       Buffers: shared hit=4 read=67004
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.006..287.533 rows=901343 loops=1)
                                             Buffers: shared hit=2 read=11393
                                       ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2601.575..2601.575 rows=50011 loops=1)
                                             Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                             Buffers: shared hit=2 read=55611
                                             ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1092.319..2572.837 rows=50011 loops=1)
                                                   Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                   Rows Removed by Filter: 4117480
                                                   Buffers: shared hit=2 read=55611
                     ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=2477.647..2477.647 rows=3140339 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                           Buffers: shared hit=2 read=36445
                           ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=5.834..1467.239 rows=3140339 loops=1)
                                 Buffers: shared hit=2 read=36445
               ->  Hash  (cost=1123.32..1123.32 rows=941996 width=4) (actual time=1396.418..1396.418 rows=1153798 loops=1)
                     Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                     Buffers: shared hit=5 read=21778
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=145.713..1073.226 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.011..298.301 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.156..145.156 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=7.409..115.662 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1860.026..1860.026 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=1 read=35997
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=15.407..998.469 rows=2528312 loops=1)
                     Buffers: shared hit=1 read=35997
 Planning Time: 4519.894 ms
 Execution Time: 21132.878 ms
(70 rows)


                                                                             QUERY PLAN                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23938.33..23938.33 rows=1 width=128) (actual time=20598.963..20598.963 rows=1 loops=1)
   Buffers: shared hit=21 read=413873
   ->  Hash Join  (cost=7779.09..23936.82 rows=4872 width=64) (actual time=12520.026..20408.517 rows=483082 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=21 read=413873
         ->  Hash Join  (cost=6104.02..22261.35 rows=4872 width=55) (actual time=10387.099..18129.448 rows=483082 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared hit=17 read=377876
               ->  Hash Join  (cost=4842.43..20989.34 rows=7026 width=51) (actual time=8947.819..16518.742 rows=482841 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=12 read=356098
                     ->  Hash Join  (cost=3021.13..19166.85 rows=14477 width=39) (actual time=7195.706..14616.176 rows=503022 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=10 read=319653
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=3906.397..11188.873 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=6 read=252649
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.016..10984.443 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared hit=5 read=252649
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.007 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Hash  (cost=2990.55..2990.55 rows=208060 width=39) (actual time=3288.471..3288.471 rows=193486 loops=1)
                                 Buckets: 262144  Batches: 1  Memory Usage: 16249kB
                                 Buffers: shared hit=4 read=67004
                                 ->  Hash Join  (cost=2497.33..2990.55 rows=208060 width=39) (actual time=2725.059..3214.001 rows=193486 loops=1)
                                       Hash Cond: (an.person_id = n.id)
                                       Buffers: shared hit=4 read=67004
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.006..163.759 rows=901343 loops=1)
                                             Buffers: shared hit=2 read=11393
                                       ->  Hash  (cost=2356.12..2356.12 rows=961996 width=19) (actual time=2722.400..2722.401 rows=961555 loops=1)
                                             Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                             Buffers: shared hit=2 read=55611
                                             ->  Seq Scan on name n  (cost=0.00..2356.12 rows=961996 width=19) (actual time=1213.998..2425.916 rows=961555 loops=1)
                                                   Filter: ((gender)::text = 'f'::text)
                                                   Rows Removed by Filter: 3205936
                                                   Buffers: shared hit=2 read=55611
                     ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1742.511..1742.511 rows=3140339 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                           Buffers: shared hit=2 read=36445
                           ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=5.050..757.455 rows=3140339 loops=1)
                                 Buffers: shared hit=2 read=36445
               ->  Hash  (cost=1123.32..1123.32 rows=941996 width=4) (actual time=1433.959..1433.960 rows=1153798 loops=1)
                     Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                     Buffers: shared hit=5 read=21778
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=147.131..1105.379 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=5 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.011..324.894 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=146.439..146.439 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=10.868..115.986 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=2123.391..2123.391 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=1 read=35997
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=15.685..1240.360 rows=2528312 loops=1)
                     Buffers: shared hit=1 read=35997
 Planning Time: 4652.944 ms
 Execution Time: 20608.827 ms
(70 rows)


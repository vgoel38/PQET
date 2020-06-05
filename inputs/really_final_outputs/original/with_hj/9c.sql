                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24083.65..24083.66 rows=1 width=128) (actual time=20474.171..20474.171 rows=1 loops=1)
   Buffers: shared hit=3 read=413891
   ->  Hash Join  (cost=7937.64..24083.60 rows=191 width=64) (actual time=12381.391..20453.534 rows=8144 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=3 read=413891
         ->  Hash Join  (cost=6262.57..22408.51 rows=191 width=55) (actual time=10447.947..18515.868 rows=8144 loops=1)
               Hash Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared read=377893
               ->  Hash Join  (cost=5000.98..21146.52 rows=275 width=51) (actual time=9025.668..17094.539 rows=7726 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared read=356110
                     ->  Hash Join  (cost=3179.68..19325.17 rows=568 width=39) (actual time=7300.029..15363.968 rows=8204 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared read=319663
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=3989.364..12023.278 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared read=252655
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=47.147..11772.817 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.807..21.807 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.782..21.789 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=3178.45..3178.45 rows=8155 width=39) (actual time=3287.583..3287.583 rows=10525 loops=1)
                                 Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 909kB
                                 Buffers: shared read=67008
                                 ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=39) (actual time=2739.529..3281.281 rows=10525 loops=1)
                                       Hash Cond: (an.person_id = n.id)
                                       Buffers: shared read=67008
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=6.117..297.610 rows=901343 loops=1)
                                             Buffers: shared read=11395
                                       ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2727.574..2727.574 rows=50011 loops=1)
                                             Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                             Buffers: shared read=55613
                                             ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1219.628..2701.325 rows=50011 loops=1)
                                                   Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                   Rows Removed by Filter: 4117480
                                                   Buffers: shared read=55613
                     ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1715.906..1715.906 rows=3140339 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                           Buffers: shared read=36447
                           ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=3.100..731.725 rows=3140339 loops=1)
                                 Buffers: shared read=36447
               ->  Hash  (cost=1123.32..1123.32 rows=941996 width=4) (actual time=1413.551..1413.551 rows=1153798 loops=1)
                     Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                     Buffers: shared read=21783
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=149.634..1084.197 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=21783
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=11.055..315.689 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.727..137.727 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.409..106.412 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
         ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1922.494..1922.494 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared read=35998
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=14.659..1037.136 rows=2528312 loops=1)
                     Buffers: shared read=35998
 Planning Time: 4002.457 ms
 Execution Time: 20483.856 ms
(70 rows)


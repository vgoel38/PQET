                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32556.28..32556.28 rows=1 width=64) (actual time=29804.195..29804.195 rows=1 loops=1)
   Buffers: shared hit=6673 read=576205
   ->  Hash Join  (cost=16410.78..32556.28 rows=1 width=32) (actual time=21537.773..29789.093 rows=3575 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6673 read=576205
         ->  Hash Join  (cost=14589.47..30734.97 rows=1 width=36) (actual time=19791.546..28041.418 rows=3744 loops=1)
               Hash Cond: (t.id = mc.movie_id)
               Buffers: shared hit=6670 read=539758
               ->  Hash Join  (cost=13327.89..29473.39 rows=1 width=48) (actual time=18371.616..26619.360 rows=3715 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6670 read=517975
                     ->  Hash Join  (cost=10148.25..26293.73 rows=127 width=37) (actual time=15045.736..23331.190 rows=134654 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6670 read=450967
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=4054.293..12209.712 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared read=252655
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=2.779..11979.475 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.840..21.840 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.821..21.828 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=10147.89..10147.89 rows=2169 width=25) (actual time=10991.233..10991.233 rows=424568 loops=1)
                                 Buckets: 524288 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 28911kB
                                 Buffers: shared hit=6670 read=198312
                                 ->  Hash Join  (cost=1703.08..10147.89 rows=2169 width=25) (actual time=3392.068..10861.783 rows=424568 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=6670 read=198312
                                       ->  Hash Join  (cost=0.05..8444.54 rows=3969 width=4) (actual time=1544.059..8786.392 rows=451039 loops=1)
                                             Hash Cond: (mi.info_type_id = it.id)
                                             Buffers: shared hit=6670 read=162314
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=670.068..8656.149 rows=451104 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                   Rows Removed by Filter: 14384616
                                                   Buffers: shared hit=6670 read=162313
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.756..20.756 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.709..20.743 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                       ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1842.329..1842.329 rows=1381453 loops=1)
                                             Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                             Buffers: shared read=35998
                                             ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=9.830..1272.780 rows=1381453 loops=1)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1146859
                                                   Buffers: shared read=35998
                     ->  Hash  (cost=3178.45..3178.45 rows=8155 width=23) (actual time=3266.634..3266.634 rows=10525 loops=1)
                           Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 724kB
                           Buffers: shared read=67008
                           ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=23) (actual time=2718.272..3261.444 rows=10525 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared read=67008
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=9.867..317.305 rows=901343 loops=1)
                                       Buffers: shared read=11395
                                 ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2702.813..2702.813 rows=50011 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                       Buffers: shared read=55613
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1193.825..2674.221 rows=50011 loops=1)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4117480
                                             Buffers: shared read=55613
               ->  Hash  (cost=1123.32..1123.32 rows=941996 width=4) (actual time=1417.302..1417.302 rows=1153798 loops=1)
                     Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                     Buffers: shared read=21783
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=142.367..1085.132 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=21783
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=3.213..310.251 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.156..138.156 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.274..110.659 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1735.715..1735.715 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=23.728..823.135 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 6380.516 ms
 Execution Time: 29808.914 ms
(92 rows)


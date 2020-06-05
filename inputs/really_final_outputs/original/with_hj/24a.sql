                                                                                                         QUERY PLAN                                                                                                         
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33842.93..33842.93 rows=1 width=96) (actual time=30521.549..30521.549 rows=1 loops=1)
   Buffers: shared hit=6680 read=600667
   ->  Hash Join  (cost=17683.11..33842.93 rows=1 width=48) (actual time=22524.915..30521.410 rows=275 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6680 read=600667
         ->  Hash Join  (cost=15861.81..32021.62 rows=1 width=36) (actual time=20719.382..28715.775 rows=277 loops=1)
               Hash Cond: (ci.role_id = rt.id)
               Buffers: shared hit=6677 read=564220
               ->  Hash Join  (cost=15861.77..32021.59 rows=1 width=40) (actual time=20699.764..28696.061 rows=277 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6677 read=564219
                     ->  Hash Join  (cost=12682.13..28841.94 rows=1 width=29) (actual time=13177.054..25401.827 rows=13758 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6677 read=497211
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=44.770..12130.174 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared read=252654
                           ->  Hash  (cost=12682.13..12682.13 rows=1 width=33) (actual time=13102.960..13102.960 rows=3406 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 259kB
                                 Buffers: shared hit=6677 read=244557
                                 ->  Hash Join  (cost=4239.33..12682.13 rows=1 width=33) (actual time=5680.066..13101.556 rows=3406 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6677 read=244557
                                       ->  Hash Join  (cost=4239.28..12682.08 rows=1 width=37) (actual time=5654.097..13074.315 rows=3406 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=6677 read=244556
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=302987 width=8) (actual time=753.419..8924.333 rows=301247 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                   Rows Removed by Filter: 14534473
                                                   Buffers: shared hit=6670 read=162313
                                             ->  Hash  (cost=4239.28..4239.28 rows=6 width=29) (actual time=4099.653..4099.653 rows=1576 loops=1)
                                                   Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 114kB
                                                   Buffers: shared hit=7 read=82243
                                                   ->  Hash Join  (cost=3165.66..4239.28 rows=6 width=29) (actual time=3096.026..4098.916 rows=1576 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=7 read=82243
                                                         ->  Hash Join  (cost=3024.80..4098.42 rows=17 width=33) (actual time=2954.059..3955.068 rows=5566 loops=1)
                                                               Hash Cond: (mc.movie_id = t.id)
                                                               Buffers: shared hit=7 read=79249
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=3.017..601.641 rows=2609129 loops=1)
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=3024.80..3024.80 rows=16 width=25) (actual time=2932.886..2932.886 rows=495 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 38kB
                                                                     Buffers: shared hit=7 read=60460
                                                                     ->  Hash Join  (cost=1576.15..3024.80 rows=16 width=25) (actual time=1811.866..2932.550 rows=495 loops=1)
                                                                           Hash Cond: (mk.movie_id = t.id)
                                                                           Buffers: shared hit=7 read=60460
                                                                           ->  Hash Join  (cost=18.40..1467.04 rows=101 width=4) (actual time=76.982..1211.411 rows=9696 loops=1)
                                                                                 Hash Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=7 read=24462
                                                                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.971..561.816 rows=4523930 loops=1)
                                                                                       Buffers: shared read=24454
                                                                                 ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=43.861..43.861 rows=3 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=7 read=8
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=35.491..43.842 rows=3 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                                             Buffers: shared hit=7 read=8
                                                                           ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1714.016..1714.016 rows=391666 loops=1)
                                                                                 Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                                                                                 Buffers: shared read=35998
                                                                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=5.988..1484.489 rows=391666 loops=1)
                                                                                       Filter: (production_year > 2010)
                                                                                       Rows Removed by Filter: 2136646
                                                                                       Buffers: shared read=35998
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.607..141.607 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=6.292..115.334 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared read=2994
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=25.946..25.947 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=25.901..25.935 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=3178.45..3178.45 rows=8155 width=23) (actual time=3291.447..3291.447 rows=10525 loops=1)
                           Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 724kB
                           Buffers: shared read=67008
                           ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=23) (actual time=2743.404..3286.318 rows=10525 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared read=67008
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=26.662..337.134 rows=901343 loops=1)
                                       Buffers: shared read=11395
                                 ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2710.877..2710.877 rows=50011 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                       Buffers: shared read=55613
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1127.164..2681.149 rows=50011 loops=1)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4117480
                                             Buffers: shared read=55613
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=19.600..19.601 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=19.583..19.589 rows=1 loops=1)
                           Filter: ((role)::text = 'actress'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared read=1
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1795.413..1795.413 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=8.218..798.202 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 10321.273 ms
 Execution Time: 30524.442 ms
(109 rows)


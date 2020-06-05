                                                                                                            QUERY PLAN                                                                                                            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33831.20..33831.20 rows=1 width=96) (actual time=30477.791..30477.791 rows=1 loops=1)
   Buffers: shared hit=6704 read=600643
   ->  Hash Join  (cost=17671.62..33831.20 rows=1 width=48) (actual time=22583.138..30477.652 rows=275 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6704 read=600643
         ->  Hash Join  (cost=15850.31..32009.89 rows=1 width=36) (actual time=20694.943..28589.363 rows=277 loops=1)
               Hash Cond: (ci.role_id = rt.id)
               Buffers: shared hit=6699 read=564198
               ->  Hash Join  (cost=15850.28..32009.86 rows=1 width=40) (actual time=20694.910..28589.241 rows=277 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6698 read=564198
                     ->  Hash Join  (cost=12670.48..28830.06 rows=1 width=29) (actual time=13118.032..25242.561 rows=13758 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6694 read=497194
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.035..11984.471 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=12670.48..12670.48 rows=1 width=33) (actual time=13088.640..13088.640 rows=3406 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 259kB
                                 Buffers: shared hit=6689 read=244545
                                 ->  Hash Join  (cost=4227.46..12670.48 rows=1 width=33) (actual time=5590.811..13087.049 rows=3406 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6689 read=244545
                                       ->  Hash Join  (cost=4227.41..12670.43 rows=1 width=37) (actual time=5590.721..13085.505 rows=3406 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=6688 read=244545
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=304878 width=8) (actual time=742.617..8980.050 rows=301247 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                   Rows Removed by Filter: 14534473
                                                   Buffers: shared hit=6672 read=162311
                                             ->  Hash  (cost=4227.41..4227.41 rows=6 width=29) (actual time=4055.972..4055.972 rows=1576 loops=1)
                                                   Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 114kB
                                                   Buffers: shared hit=16 read=82234
                                                   ->  Hash Join  (cost=3153.79..4227.41 rows=6 width=29) (actual time=3165.234..4055.216 rows=1576 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=16 read=82234
                                                         ->  Hash Join  (cost=3012.93..4086.55 rows=17 width=33) (actual time=3025.649..3913.679 rows=5566 loops=1)
                                                               Hash Cond: (mc.movie_id = t.id)
                                                               Buffers: shared hit=14 read=79242
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..482.604 rows=2609129 loops=1)
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=3012.93..3012.93 rows=16 width=25) (actual time=3014.307..3014.307 rows=495 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 38kB
                                                                     Buffers: shared hit=11 read=60456
                                                                     ->  Hash Join  (cost=1467.06..3012.93 rows=16 width=25) (actual time=1210.262..3013.637 rows=495 loops=1)
                                                                           Hash Cond: (t.id = mk.movie_id)
                                                                           Buffers: shared hit=11 read=60456
                                                                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=6.530..1686.758 rows=391666 loops=1)
                                                                                 Filter: (production_year > 2010)
                                                                                 Rows Removed by Filter: 2136646
                                                                                 Buffers: shared hit=1 read=35997
                                                                           ->  Hash  (cost=1467.04..1467.04 rows=101 width=4) (actual time=1196.270..1196.270 rows=9696 loops=1)
                                                                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 469kB
                                                                                 Buffers: shared hit=10 read=24459
                                                                                 ->  Hash Join  (cost=18.40..1467.04 rows=101 width=4) (actual time=65.525..1193.383 rows=9696 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=10 read=24459
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..532.068 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=3 read=24451
                                                                                       ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=40.025..40.025 rows=3 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=7 read=8
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=31.696..40.006 rows=3 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                                                   Buffers: shared hit=7 read=8
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=139.192..139.192 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=3.883..109.490 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.065..0.065 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.051 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=3178.57..3178.57 rows=8338 width=23) (actual time=3343.967..3343.967 rows=10525 loops=1)
                           Buckets: 16384  Batches: 1  Memory Usage: 724kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2685.35..3178.57 rows=8338 width=23) (actual time=2795.494..3338.159 rows=10525 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.004..294.744 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=38551 width=19) (actual time=2789.813..2789.813 rows=50011 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=38551 width=19) (actual time=1256.282..2761.960 rows=50011 loops=1)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4117480
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                           Filter: ((role)::text = 'actress'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared hit=1
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1863.641..1863.641 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=25.567..864.915 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 11359.898 ms
 Execution Time: 30510.803 ms
(109 rows)


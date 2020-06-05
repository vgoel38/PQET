                                                                                                            QUERY PLAN                                                                                                            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33831.06..33831.06 rows=1 width=96) (actual time=30695.303..30695.303 rows=1 loops=1)
   Buffers: shared hit=6704 read=600643
   ->  Hash Join  (cost=17671.25..33831.06 rows=1 width=48) (actual time=22521.328..30695.154 rows=275 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=6704 read=600643
         ->  Hash Join  (cost=17671.21..33831.02 rows=1 width=52) (actual time=22521.227..30694.966 rows=275 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=6700 read=600643
               ->  Hash Join  (cost=15849.91..32009.72 rows=1 width=40) (actual time=20746.721..28920.365 rows=277 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6698 read=564198
                     ->  Hash Join  (cost=12670.26..28830.07 rows=1 width=29) (actual time=13225.811..25659.072 rows=13758 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6694 read=497194
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.024..12292.032 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=12670.26..12670.26 rows=1 width=33) (actual time=13198.788..13198.788 rows=3406 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 259kB
                                 Buffers: shared hit=6689 read=244545
                                 ->  Hash Join  (cost=4227.46..12670.26 rows=1 width=33) (actual time=5590.677..13197.181 rows=3406 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6689 read=244545
                                       ->  Hash Join  (cost=4227.41..12670.21 rows=1 width=37) (actual time=5590.624..13195.591 rows=3406 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=6688 read=244545
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=302987 width=8) (actual time=735.949..9085.867 rows=301247 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                   Rows Removed by Filter: 14534473
                                                   Buffers: shared hit=6672 read=162311
                                             ->  Hash  (cost=4227.41..4227.41 rows=6 width=29) (actual time=4061.217..4061.217 rows=1576 loops=1)
                                                   Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 114kB
                                                   Buffers: shared hit=16 read=82234
                                                   ->  Hash Join  (cost=3153.79..4227.41 rows=6 width=29) (actual time=3179.605..4060.471 rows=1576 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=16 read=82234
                                                         ->  Hash Join  (cost=3012.93..4086.55 rows=17 width=33) (actual time=3033.660..3912.653 rows=5566 loops=1)
                                                               Hash Cond: (mc.movie_id = t.id)
                                                               Buffers: shared hit=14 read=79242
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.008..476.525 rows=2609129 loops=1)
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=3012.93..3012.93 rows=16 width=25) (actual time=3022.081..3022.082 rows=495 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 38kB
                                                                     Buffers: shared hit=11 read=60456
                                                                     ->  Hash Join  (cost=1467.06..3012.93 rows=16 width=25) (actual time=1217.994..3021.408 rows=495 loops=1)
                                                                           Hash Cond: (t.id = mk.movie_id)
                                                                           Buffers: shared hit=11 read=60456
                                                                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=6.061..1694.476 rows=391666 loops=1)
                                                                                 Filter: (production_year > 2010)
                                                                                 Rows Removed by Filter: 2136646
                                                                                 Buffers: shared hit=1 read=35997
                                                                           ->  Hash  (cost=1467.04..1467.04 rows=101 width=4) (actual time=1199.718..1199.718 rows=9696 loops=1)
                                                                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 469kB
                                                                                 Buffers: shared hit=10 read=24459
                                                                                 ->  Hash Join  (cost=18.40..1467.04 rows=101 width=4) (actual time=65.580..1196.838 rows=9696 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=10 read=24459
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..536.836 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=3 read=24451
                                                                                       ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=39.894..39.894 rows=3 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=7 read=8
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=31.519..39.875 rows=3 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                                                   Buffers: shared hit=7 read=8
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.622..145.622 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=9.770..116.467 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.014..0.035 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=3178.45..3178.45 rows=8155 width=23) (actual time=3258.559..3258.559 rows=10525 loops=1)
                           Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 724kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=23) (actual time=2709.133..3252.325 rows=10525 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.006..296.034 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2703.478..2703.478 rows=50011 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1208.008..2676.685 rows=50011 loops=1)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4117480
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1748.609..1748.609 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=2 read=36445
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=24.127..763.686 rows=3140339 loops=1)
                           Buffers: shared hit=2 read=36445
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.024 rows=1 loops=1)
                     Filter: ((role)::text = 'actress'::text)
                     Rows Removed by Filter: 11
                     Buffers: shared hit=1
 Planning Time: 11225.572 ms
 Execution Time: 30721.760 ms
(109 rows)


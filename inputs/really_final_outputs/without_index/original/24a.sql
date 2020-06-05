                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33893.66..33893.66 rows=1 width=96) (actual time=21268555.126..21268555.126 rows=1 loops=1)
   Buffers: shared hit=1022254596 read=601582
   ->  Nested Loop  (cost=6949.02..33893.66 rows=1 width=48) (actual time=2244169.799..21268554.137 rows=275 loops=1)
         Join Filter: (rt.id = ci.role_id)
         Buffers: shared hit=1022254596 read=601582
         ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.011 rows=1 loops=1)
               Filter: ((role)::text = 'actress'::text)
               Rows Removed by Filter: 11
               Buffers: shared hit=1
         ->  Nested Loop  (cost=6949.02..33893.62 rows=1 width=52) (actual time=2244169.787..21268553.794 rows=275 loops=1)
               Join Filter: (chn.id = ci.person_role_id)
               Rows Removed by Join Filter: 451823508
               Buffers: shared hit=1022254595 read=601582
               ->  Nested Loop  (cost=6949.02..32072.32 rows=1 width=40) (actual time=2244119.838..21184518.256 rows=277 loops=1)
                     Join Filter: (n.id = ci.person_id)
                     Rows Removed by Join Filter: 144802673
                     Buffers: shared hit=1017054581 read=565137
                     ->  Nested Loop  (cost=4263.68..28892.52 rows=1 width=29) (actual time=55356.480..18166112.209 rows=13758 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Rows Removed by Join Filter: 2954612904
                           Buffers: shared hit=860293562 read=498133
                           ->  Nested Loop  (cost=4263.68..12706.75 rows=1 width=33) (actual time=5640.868..13563.407 rows=3406 loops=1)
                                 Join Filter: (it.id = mi.info_type_id)
                                 Buffers: shared hit=6687 read=245484
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.006..0.025 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                                 ->  Hash Join  (cost=4263.68..12706.70 rows=1 width=37) (actual time=5640.859..13559.411 rows=3406 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=6686 read=245484
                                       ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=304878 width=8) (actual time=744.801..9395.638 rows=301247 loops=1)
                                             Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                             Rows Removed by Filter: 14534473
                                             Buffers: shared hit=6672 read=162311
                                       ->  Hash  (cost=4263.68..4263.68 rows=6 width=29) (actual time=4103.032..4103.032 rows=1576 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 114kB
                                             Buffers: shared hit=11 read=83173
                                             ->  Hash Join  (cost=3190.06..4263.68 rows=6 width=29) (actual time=3222.314..4102.295 rows=1576 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=11 read=83173
                                                   ->  Hash Join  (cost=3049.20..4122.82 rows=17 width=33) (actual time=3073.966..3951.967 rows=5566 loops=1)
                                                         Hash Cond: (mc.movie_id = t.id)
                                                         Buffers: shared hit=9 read=80181
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.010..463.739 rows=2609129 loops=1)
                                                               Buffers: shared hit=3 read=18786
                                                         ->  Hash  (cost=3049.20..3049.20 rows=16 width=25) (actual time=3061.137..3061.137 rows=495 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 38kB
                                                               Buffers: shared hit=6 read=61395
                                                               ->  Hash Join  (cost=1503.33..3049.20 rows=16 width=25) (actual time=1265.568..3060.476 rows=495 loops=1)
                                                                     Hash Cond: (t.id = mk.movie_id)
                                                                     Buffers: shared hit=6 read=61395
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=3.590..1674.039 rows=391666 loops=1)
                                                                           Filter: (production_year > 2010)
                                                                           Rows Removed by Filter: 2136646
                                                                           Buffers: shared hit=1 read=35997
                                                                     ->  Hash  (cost=1503.31..1503.31 rows=101 width=4) (actual time=1254.086..1254.086 rows=9696 loops=1)
                                                                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 469kB
                                                                           Buffers: shared hit=5 read=25398
                                                                           ->  Hash Join  (cost=54.67..1503.31 rows=101 width=4) (actual time=115.591..1251.236 rows=9696 loops=1)
                                                                                 Hash Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=5 read=25398
                                                                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.015..543.164 rows=4523930 loops=1)
                                                                                       Buffers: shared hit=3 read=24451
                                                                                 ->  Hash  (cost=54.67..54.67 rows=3 width=4) (actual time=88.166..88.166 rows=3 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=2 read=947
                                                                                       ->  Seq Scan on keyword k  (cost=0.00..54.67 rows=3 width=4) (actual time=23.040..88.149 rows=3 loops=1)
                                                                                             Filter: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                                             Rows Removed by Filter: 134167
                                                                                             Buffers: shared hit=2 read=947
                                                   ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=147.998..147.998 rows=84843 loops=1)
                                                         Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                         Buffers: shared hit=2 read=2992
                                                         ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=9.758..115.901 rows=84843 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 150154
                                                               Buffers: shared hit=2 read=2992
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.005..5258.065 rows=867477 loops=3406)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=860286875 read=252649
                     ->  Hash Join  (cost=2685.35..3178.57 rows=8338 width=23) (actual time=0.253..218.385 rows=10525 loops=13758)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared hit=156761019 read=67004
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.002..66.684 rows=901343 loops=13758)
                                 Buffers: shared hit=156761017 read=11393
                           ->  Hash  (cost=2679.69..2679.69 rows=38551 width=19) (actual time=2610.965..2610.965 rows=50011 loops=1)
                                 Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=38551 width=19) (actual time=1102.974..2584.693 rows=50011 loops=1)
                                       Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 4117480
                                       Buffers: shared hit=2 read=55611
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=0.042..122.031 rows=1631133 loops=277)
                     Buffers: shared hit=5200014 read=36445
 Planning Time: 11330.634 ms
 Execution Time: 21268555.778 ms
(98 rows)


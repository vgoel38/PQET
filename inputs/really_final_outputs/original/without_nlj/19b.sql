                                                                            QUERY PLAN                                                                             
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=30135.40..30135.40 rows=1 width=64) (actual time=28989.687..28989.688 rows=1 loops=1)
   Buffers: shared hit=6694 read=576184
   ->  Hash Join  (cost=16832.33..30135.40 rows=1 width=32) (actual time=21867.908..28989.624 rows=15 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6694 read=576184
         ->  Hash Join  (cost=15011.03..28314.10 rows=1 width=36) (actual time=20105.882..27227.592 rows=15 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6689 read=539739
               ->  Hash Join  (cost=11837.62..25140.69 rows=1 width=25) (actual time=16296.024..24032.909 rows=24 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=6685 read=472735
                     ->  Hash Join  (cost=10306.32..23609.38 rows=1 width=37) (actual time=15037.630..22994.050 rows=17 loops=1)
                           Hash Cond: (t.id = mi.movie_id)
                           Buffers: shared hit=6680 read=450957
                           ->  Hash Join  (cost=1892.89..15195.96 rows=1 width=33) (actual time=5912.241..13868.617 rows=17 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=7 read=288646
                                 ->  Hash Join  (cost=1892.86..15195.92 rows=5 width=37) (actual time=2140.820..13868.476 rows=71 loops=1)
                                       Hash Cond: (ci.movie_id = t.id)
                                       Buffers: shared hit=6 read=288646
                                       ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=712274 width=16) (actual time=0.015..11932.646 rows=713828 loops=1)
                                             Filter: (note = '(voice)'::text)
                                             Rows Removed by Filter: 35530516
                                             Buffers: shared hit=5 read=252649
                                       ->  Hash  (cost=1892.85..1892.85 rows=18 width=21) (actual time=1800.196..1800.197 rows=7 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1 read=35997
                                             ->  Seq Scan on title t  (cost=0.00..1892.85 rows=18 width=21) (actual time=149.182..1800.147 rows=7 loops=1)
                                                   Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                   Rows Removed by Filter: 2528305
                                                   Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.019 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Hash  (cost=8413.34..8413.34 rows=619 width=4) (actual time=9125.369..9125.369 rows=69478 loops=1)
                                 Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3467kB
                                 Buffers: shared hit=6673 read=162311
                                 ->  Hash Join  (cost=0.05..8413.34 rows=619 width=4) (actual time=1634.108..9103.581 rows=69478 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6673 read=162311
                                       ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=69999 width=8) (actual time=1634.045..9078.535 rows=69478 loops=1)
                                             Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                             Rows Removed by Filter: 14766242
                                             Buffers: shared hit=6672 read=162311
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.039 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=1526.19..1526.19 rows=34817 width=4) (actual time=1038.648..1038.648 rows=177065 loops=1)
                           Buckets: 262144 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 8273kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=140.86..1526.19 rows=34817 width=4) (actual time=145.154..987.610 rows=177065 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=96436 width=8) (actual time=0.011..779.415 rows=198519 loops=1)
                                       Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                       Rows Removed by Filter: 2410610
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.822..144.822 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=5.507..114.258 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
               ->  Hash  (cost=3173.32..3173.32 rows=597 width=23) (actual time=3194.641..3194.641 rows=1296 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 89kB
                     Buffers: shared hit=4 read=67004
                     ->  Hash Join  (cost=2680.09..3173.32 rows=597 width=23) (actual time=2648.805..3193.850 rows=1296 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared hit=4 read=67004
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.006..331.928 rows=901343 loops=1)
                                 Buffers: shared hit=2 read=11393
                           ->  Hash  (cost=2679.69..2679.69 rows=2762 width=19) (actual time=2641.287..2641.287 rows=5409 loops=1)
                                 Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=2762 width=19) (actual time=1133.024..2637.664 rows=5409 loops=1)
                                       Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 4162082
                                       Buffers: shared hit=2 read=55611
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1736.764..1736.764 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=24.856..843.792 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 7556.724 ms
 Execution Time: 29018.757 ms
(94 rows)


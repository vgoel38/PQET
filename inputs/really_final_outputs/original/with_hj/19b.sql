                                                                             QUERY PLAN                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=30135.40..30135.40 rows=1 width=64) (actual time=29371.052..29371.052 rows=1 loops=1)
   Buffers: shared hit=6673 read=576205
   ->  Hash Join  (cost=16832.33..30135.40 rows=1 width=32) (actual time=22160.327..29371.033 rows=15 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6673 read=576205
         ->  Hash Join  (cost=15011.03..28314.10 rows=1 width=36) (actual time=20410.781..27621.483 rows=15 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6670 read=539758
               ->  Hash Join  (cost=11837.62..25140.69 rows=1 width=25) (actual time=16579.445..24404.922 rows=24 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=6670 read=472750
                     ->  Hash Join  (cost=10306.32..23609.38 rows=1 width=37) (actual time=15318.234..23360.544 rows=17 loops=1)
                           Hash Cond: (t.id = mi.movie_id)
                           Buffers: shared hit=6670 read=450967
                           ->  Hash Join  (cost=1892.89..15195.96 rows=1 width=33) (actual time=5931.877..13974.147 rows=17 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared read=288653
                                 ->  Hash Join  (cost=1892.86..15195.92 rows=5 width=37) (actual time=2139.218..13951.633 rows=71 loops=1)
                                       Hash Cond: (ci.movie_id = t.id)
                                       Buffers: shared read=288652
                                       ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=712274 width=16) (actual time=19.805..12096.184 rows=713828 loops=1)
                                             Filter: (note = '(voice)'::text)
                                             Rows Removed by Filter: 35530516
                                             Buffers: shared read=252654
                                       ->  Hash  (cost=1892.85..1892.85 rows=18 width=21) (actual time=1718.983..1718.983 rows=7 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=35998
                                             ->  Seq Scan on title t  (cost=0.00..1892.85 rows=18 width=21) (actual time=151.652..1718.929 rows=7 loops=1)
                                                   Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                   Rows Removed by Filter: 2528305
                                                   Buffers: shared read=35998
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=22.408..22.408 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=22.394..22.400 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=8413.34..8413.34 rows=619 width=4) (actual time=9386.338..9386.338 rows=69478 loops=1)
                                 Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3467kB
                                 Buffers: shared hit=6670 read=162314
                                 ->  Hash Join  (cost=0.05..8413.34 rows=619 width=4) (actual time=1635.925..9363.138 rows=69478 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6670 read=162314
                                       ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=69999 width=8) (actual time=1616.144..9317.308 rows=69478 loops=1)
                                             Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                             Rows Removed by Filter: 14766242
                                             Buffers: shared hit=6670 read=162313
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.761..19.761 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.719..19.753 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=1526.19..1526.19 rows=34817 width=4) (actual time=1044.150..1044.150 rows=177065 loops=1)
                           Buckets: 262144 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 8273kB
                           Buffers: shared read=21783
                           ->  Hash Join  (cost=140.86..1526.19 rows=34817 width=4) (actual time=151.363..995.613 rows=177065 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=96436 width=8) (actual time=11.024..793.346 rows=198519 loops=1)
                                       Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                       Rows Removed by Filter: 2410610
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=139.305..139.305 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.209..107.337 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared read=2994
               ->  Hash  (cost=3173.32..3173.32 rows=597 width=23) (actual time=3216.525..3216.525 rows=1296 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 89kB
                     Buffers: shared read=67008
                     ->  Hash Join  (cost=2680.09..3173.32 rows=597 width=23) (actual time=2670.791..3215.711 rows=1296 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared read=67008
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=10.290..342.200 rows=901343 loops=1)
                                 Buffers: shared read=11395
                           ->  Hash  (cost=2679.69..2679.69 rows=2762 width=19) (actual time=2652.979..2652.979 rows=5409 loops=1)
                                 Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                 Buffers: shared read=55613
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=2762 width=19) (actual time=1144.682..2649.336 rows=5409 loops=1)
                                       Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 4162082
                                       Buffers: shared read=55613
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1739.271..1739.271 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=24.337..824.325 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 6571.608 ms
 Execution Time: 29374.080 ms
(94 rows)


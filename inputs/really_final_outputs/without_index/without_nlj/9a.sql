                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24354.64..24354.64 rows=1 width=96) (actual time=20198.258..20198.258 rows=1 loops=1)
   Buffers: shared hit=21 read=413873
   ->  Hash Join  (cost=8209.35..24354.64 rows=1 width=49) (actual time=12189.405..20198.080 rows=121 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=21 read=413873
         ->  Hash Join  (cost=6388.05..22533.34 rows=3 width=37) (actual time=10273.857..18282.443 rows=127 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=16 read=377428
               ->  Hash Join  (cost=3173.81..19319.08 rows=72 width=24) (actual time=7122.613..15139.066 rows=425 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=10 read=319653
                     ->  Hash Join  (cost=0.03..16136.93 rows=71973 width=12) (actual time=3905.877..11939.555 rows=276166 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=6 read=252649
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.016..11716.816 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.009 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=3173.62..3173.62 rows=1040 width=24) (actual time=3153.832..3153.832 rows=1558 loops=1)
                           Buckets: 2048  Batches: 1  Memory Usage: 103kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2680.39..3173.62 rows=1040 width=24) (actual time=2608.334..3152.817 rows=1558 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.012..332.772 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=4808 width=4) (actual time=2600.418..2600.418 rows=6768 loops=1)
                                       Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4808 width=4) (actual time=1092.279..2596.428 rows=6768 loops=1)
                                             Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4160723
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=3207.44..3207.44 rows=46351 width=25) (actual time=3142.947..3142.947 rows=144120 loops=1)
                     Buckets: 262144 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 10692kB
                     Buffers: shared hit=6 read=57775
                     ->  Hash Join  (cost=2000.03..3207.44 rows=46351 width=25) (actual time=1984.184..3089.519 rows=144120 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=140.86..1339.64 rows=105777 width=4) (actual time=146.061..1087.845 rows=542096 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=0.009..783.498 rows=590994 loops=1)
                                       Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                       Rows Removed by Filter: 2018135
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.737..145.737 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=9.350..113.353 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=1696.56..1696.56 rows=1107888 width=21) (actual time=1831.609..1831.609 rows=1107888 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 75795kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1107888 width=21) (actual time=7.406..1322.187 rows=1107888 loops=1)
                                       Filter: ((production_year >= 2005) AND (production_year <= 2015))
                                       Rows Removed by Filter: 1420424
                                       Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1905.682..1905.682 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=25.791..912.906 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 4454.669 ms
 Execution Time: 20204.059 ms
(74 rows)


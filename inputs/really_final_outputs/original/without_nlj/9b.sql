                                                                          QUERY PLAN                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21611.56..21611.56 rows=1 width=128) (actual time=19812.501..19812.501 rows=1 loops=1)
   Buffers: shared hit=21 read=413873
   ->  Hash Join  (cost=8295.40..21611.56 rows=1 width=64) (actual time=11963.857..19812.374 rows=40 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=21 read=413873
         ->  Hash Join  (cost=6474.09..19790.25 rows=1 width=52) (actual time=10141.917..17990.403 rows=40 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=16 read=377428
               ->  Hash Join  (cost=3173.44..16489.60 rows=34 width=39) (actual time=7181.918..15121.343 rows=265 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=10 read=319653
                     ->  Hash Join  (cost=0.03..13309.28 rows=59356 width=12) (actual time=3949.056..11917.052 rows=222686 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=6 read=252649
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=712274 width=16) (actual time=0.024..11707.501 rows=713828 loops=1)
                                 Filter: (note = '(voice)'::text)
                                 Rows Removed by Filter: 35530516
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.007 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=3173.32..3173.32 rows=597 width=39) (actual time=3162.622..3162.622 rows=1296 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 110kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2680.09..3173.32 rows=597 width=39) (actual time=2615.005..3161.669 rows=1296 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.008..339.801 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=2762 width=19) (actual time=2607.396..2607.396 rows=5409 loops=1)
                                       Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=2762 width=19) (actual time=1099.098..2603.681 rows=5409 loops=1)
                                             Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4162082
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=3299.62..3299.62 rows=7062 width=25) (actual time=2868.837..2868.837 rows=47009 loops=1)
                     Buckets: 65536 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 3349kB
                     Buffers: shared hit=6 read=57775
                     ->  Hash Join  (cost=1912.69..3299.62 rows=7062 width=25) (actual time=1966.343..2852.004 rows=47009 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=1771.83..3157.16 rows=19560 width=29) (actual time=1821.494..2685.563 rows=54971 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=4 read=54783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=96436 width=8) (actual time=0.016..791.871 rows=198519 loops=1)
                                       Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                       Rows Removed by Filter: 2410610
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=1696.56..1696.56 rows=512825 width=21) (actual time=1819.891..1819.891 rows=512825 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 31488kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=512825 width=21) (actual time=4.006..1523.956 rows=512825 loops=1)
                                             Filter: ((production_year >= 2007) AND (production_year <= 2010))
                                             Rows Removed by Filter: 2015487
                                             Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.315..144.315 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.020..112.973 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1796.368..1796.368 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=24.545..799.872 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 4678.900 ms
 Execution Time: 19835.577 ms
(74 rows)


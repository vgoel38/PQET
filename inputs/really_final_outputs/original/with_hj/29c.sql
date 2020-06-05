                                                                                                                    QUERY PLAN                                                                                                                     
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=36317.31..36317.31 rows=1 width=96) (actual time=32858.634..32858.634 rows=1 loops=1)
   Buffers: shared hit=6675 read=652213
   ->  Hash Join  (cost=20157.38..36317.31 rows=1 width=48) (actual time=25029.652..32851.159 rows=16308 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=6675 read=652213
         ->  Hash Join  (cost=19605.33..35765.26 rows=1 width=60) (actual time=24458.033..32275.249 rows=3822 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=6672 read=640818
               ->  Hash Join  (cost=19605.29..35765.21 rows=1 width=64) (actual time=24437.931..32253.699 rows=3822 loops=1)
                     Hash Cond: (t.id = mi.movie_id)
                     Buffers: shared hit=6672 read=640817
                     ->  Hash Join  (cost=11131.94..27291.75 rows=1 width=80) (actual time=15334.691..23149.028 rows=1364 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=2 read=478504
                           ->  Hash Join  (cost=9310.63..25470.45 rows=1 width=68) (actual time=13587.128..21400.833 rows=1412 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=2 read=442057
                                 ->  Hash Join  (cost=9310.60..25470.41 rows=1 width=72) (actual time=13567.679..21380.785 rows=1412 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=2 read=442056
                                       ->  Hash Join  (cost=4579.90..20739.72 rows=1 width=49) (actual time=4505.795..16268.686 rows=2666 loops=1)
                                             Hash Cond: (ci.movie_id = t.id)
                                             Buffers: shared hit=1 read=335625
                                             ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=19.797..11647.180 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared read=252654
                                             ->  Hash  (cost=4579.90..4579.90 rows=1 width=33) (actual time=4471.262..4471.262 rows=92 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                                   Buffers: shared hit=1 read=82971
                                                   ->  Hash Join  (cost=3506.29..4579.90 rows=1 width=33) (actual time=3789.832..4471.167 rows=92 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=1 read=82971
                                                         ->  Hash Join  (cost=3365.43..4439.04 rows=1 width=37) (actual time=3643.246..4324.345 rows=415 loops=1)
                                                               Hash Cond: (cc.subject_id = cct.id)
                                                               Buffers: shared hit=1 read=79977
                                                               ->  Hash Join  (cost=3365.40..4439.01 rows=1 width=41) (actual time=3623.145..4304.032 rows=438 loops=1)
                                                                     Hash Cond: (cc.status_id = cct.id)
                                                                     Buffers: shared hit=1 read=79976
                                                                     ->  Hash Join  (cost=3365.36..4438.98 rows=1 width=45) (actual time=3620.384..4303.622 rows=1401 loops=1)
                                                                           Hash Cond: (t.id = cc.movie_id)
                                                                           Buffers: shared read=79976
                                                                           ->  Hash Join  (cost=3313.27..4386.88 rows=14 width=33) (actual time=3332.214..4213.306 rows=2435 loops=1)
                                                                                 Hash Cond: (mc.movie_id = t.id)
                                                                                 Buffers: shared read=79245
                                                                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=26.781..507.947 rows=2609129 loops=1)
                                                                                       Buffers: shared read=18789
                                                                                 ->  Hash  (cost=3313.27..3313.27 rows=14 width=25) (actual time=3294.805..3294.806 rows=249 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                                                                       Buffers: shared read=60456
                                                                                       ->  Hash Join  (cost=1454.78..3313.27 rows=14 width=25) (actual time=1284.788..3294.323 rows=249 loops=1)
                                                                                             Hash Cond: (t.id = mk.movie_id)
                                                                                             Buffers: shared read=60456
                                                                                             ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=21) (actual time=11.857..1869.890 rows=1042800 loops=1)
                                                                                                   Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                   Rows Removed by Filter: 1485512
                                                                                                   Buffers: shared read=35998
                                                                                             ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1195.999..1195.999 rows=414 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                                                                                   Buffers: shared read=24458
                                                                                                   ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=77.168..1195.719 rows=414 loops=1)
                                                                                                         Hash Cond: (mk.keyword_id = k.id)
                                                                                                         Buffers: shared read=24458
                                                                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.321..533.557 rows=4523930 loops=1)
                                                                                                               Buffers: shared read=24454
                                                                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=38.426..38.427 rows=1 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared read=4
                                                                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.405..38.408 rows=1 loops=1)
                                                                                                                     Index Cond: (keyword = 'computer-animation'::text)
                                                                                                                     Buffers: shared read=4
                                                                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=88.163..88.163 rows=135086 loops=1)
                                                                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                 Buffers: shared read=731
                                                                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=8.173..44.065 rows=135086 loops=1)
                                                                                       Buffers: shared read=731
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.013 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=20.068..20.068 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=1
                                                                     ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=20.046..20.050 rows=1 loops=1)
                                                                           Filter: ((kind)::text = 'cast'::text)
                                                                           Rows Removed by Filter: 3
                                                                           Buffers: shared read=1
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.568..145.568 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=10.113..114.635 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared read=2994
                                       ->  Hash  (cost=4730.66..4730.66 rows=237 width=23) (actual time=5110.880..5110.880 rows=10064 loops=1)
                                             Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 692kB
                                             Buffers: shared hit=1 read=106431
                                             ->  Hash Join  (cost=2685.27..4730.66 rows=237 width=23) (actual time=2618.825..5104.832 rows=10064 loops=1)
                                                   Hash Cond: (pi.person_id = n.id)
                                                   Buffers: shared hit=1 read=106431
                                                   ->  Hash Join  (cost=0.05..2043.30 rows=26227 width=4) (actual time=9.883..2333.560 rows=620526 loops=1)
                                                         Hash Cond: (pi.info_type_id = it3.id)
                                                         Buffers: shared hit=1 read=50818
                                                         ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=2963664 width=8) (actual time=9.769..1465.029 rows=2963664 loops=1)
                                                               Buffers: shared read=50818
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.069..0.069 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.027..0.060 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'trivia'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2604.908..2604.908 rows=50011 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                         Buffers: shared read=55613
                                                         ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1097.048..2577.315 rows=50011 loops=1)
                                                               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 4117480
                                                               Buffers: shared read=55613
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=19.429..19.429 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=19.405..19.412 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1735.306..1735.306 rows=3140339 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                 Buffers: shared read=36447
                                 ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=22.938..750.567 rows=3140339 loops=1)
                                       Buffers: shared read=36447
                     ->  Hash  (cost=8407.52..8407.52 rows=448472 width=8) (actual time=9099.226..9099.226 rows=451104 loops=1)
                           Buckets: 524288  Batches: 1  Memory Usage: 21718kB
                           Buffers: shared hit=6670 read=162313
                           ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=766.793..8951.739 rows=451104 loops=1)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                 Rows Removed by Filter: 14384616
                                 Buffers: shared hit=6670 read=162313
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.083..20.083 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.038..20.073 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Hash  (cost=419.75..419.75 rows=901343 width=4) (actual time=569.063..569.063 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=20.130..309.127 rows=901343 loops=1)
                     Buffers: shared read=11395
 Planning Time: 18824.797 ms
 Execution Time: 32861.591 ms
(155 rows)


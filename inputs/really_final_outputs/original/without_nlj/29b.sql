                                                                                                                  QUERY PLAN                                                                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=30066.21..30066.21 rows=1 width=96) (actual time=29390.351..29390.351 rows=1 loops=1)
   Buffers: shared hit=3165 read=579752
   ->  Hash Join  (cost=15317.05..30066.21 rows=1 width=48) (actual time=21561.481..29390.297 rows=15 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=3165 read=579752
         ->  Hash Join  (cost=15317.02..30066.18 rows=1 width=52) (actual time=21561.374..29390.178 rows=15 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=3161 read=579752
               ->  Hash Join  (cost=14764.97..29514.12 rows=1 width=64) (actual time=20879.370..28708.163 rows=5 loops=1)
                     Hash Cond: (cc.subject_id = cct.id)
                     Buffers: shared hit=3159 read=568359
                     ->  Hash Join  (cost=14764.94..29514.09 rows=1 width=68) (actual time=20879.337..28708.125 rows=5 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=3158 read=568359
                           ->  Hash Join  (cost=14758.80..29507.96 rows=1 width=56) (actual time=20814.609..28643.392 rows=5 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=3158 read=568355
                                 ->  Hash Join  (cost=10028.10..24777.26 rows=1 width=33) (actual time=11777.548..23649.638 rows=190 loops=1)
                                       Hash Cond: (ci.movie_id = t.id)
                                       Buffers: shared hit=3153 read=461928
                                       ->  Seq Scan on cast_info ci  (cost=0.00..14652.00 rows=834248 width=16) (actual time=0.016..11772.315 rows=836701 loops=1)
                                             Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 35407643
                                             Buffers: shared hit=5 read=252649
                                       ->  Hash  (cost=10028.10..10028.10 rows=1 width=41) (actual time=11730.629..11730.629 rows=5 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=3148 read=209279
                                             ->  Hash Join  (cost=2727.56..10028.10 rows=1 width=41) (actual time=5030.222..11730.620 rows=5 loops=1)
                                                   Hash Cond: (mi.info_type_id = it.id)
                                                   Buffers: shared hit=3148 read=209279
                                                   ->  Hash Join  (cost=2727.51..10028.06 rows=1 width=45) (actual time=5030.190..11730.586 rows=5 loops=1)
                                                         Hash Cond: (mi.movie_id = t.id)
                                                         Buffers: shared hit=3147 read=209279
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=385264 width=8) (actual time=703.586..9229.750 rows=387683 loops=1)
                                                               Filter: (info ~~ 'USA:%200%'::text)
                                                               Rows Removed by Filter: 14448037
                                                               Buffers: shared hit=3136 read=162311
                                                         ->  Hash  (cost=2727.51..2727.51 rows=1 width=37) (actual time=2435.373..2435.373 rows=5 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=11 read=46968
                                                               ->  Hash Join  (cost=1653.90..2727.51 rows=1 width=37) (actual time=1966.217..2435.362 rows=5 loops=1)
                                                                     Hash Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared hit=11 read=46968
                                                                     ->  Hash Join  (cost=1513.04..2586.65 rows=1 width=41) (actual time=1816.449..2285.582 rows=22 loops=1)
                                                                           Hash Cond: (mc.movie_id = t.id)
                                                                           Buffers: shared hit=9 read=43976
                                                                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.008..490.542 rows=2609129 loops=1)
                                                                                 Buffers: shared hit=3 read=18786
                                                                           ->  Hash  (cost=1513.04..1513.04 rows=1 width=33) (actual time=1382.300..1382.301 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=6 read=25190
                                                                                 ->  Hash Join  (cost=64.40..1513.04 rows=1 width=33) (actual time=1062.227..1382.296 rows=1 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=6 read=25190
                                                                                       ->  Hash Join  (cost=58.26..1506.90 rows=1 width=37) (actual time=1020.270..1340.345 rows=108 loops=1)
                                                                                             Hash Cond: (cc.status_id = cct.id)
                                                                                             Buffers: shared hit=6 read=25186
                                                                                             ->  Hash Join  (cost=58.23..1506.87 rows=1 width=41) (actual time=1020.198..1340.247 rows=108 loops=1)
                                                                                                   Hash Cond: (t.id = cc.movie_id)
                                                                                                   Buffers: shared hit=5 read=25186
                                                                                                   ->  Hash Join  (cost=6.13..1454.77 rows=2 width=29) (actual time=918.442..1238.456 rows=136 loops=1)
                                                                                                         Hash Cond: (mk.movie_id = t.id)
                                                                                                         Buffers: shared hit=3 read=24457
                                                                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..625.862 rows=4523930 loops=1)
                                                                                                               Buffers: shared hit=3 read=24451
                                                                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=21) (actual time=44.804..44.804 rows=2 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared read=6
                                                                                                               ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=40.668..44.782 rows=2 loops=1)
                                                                                                                     Index Cond: (title = 'Shrek 2'::text)
                                                                                                                     Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                                                     Rows Removed by Filter: 1
                                                                                                                     Buffers: shared read=6
                                                                                                   ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=101.057..101.057 rows=135086 loops=1)
                                                                                                         Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                                         Buffers: shared hit=2 read=729
                                                                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=22.352..57.791 rows=135086 loops=1)
                                                                                                               Buffers: shared hit=2 read=729
                                                                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=1
                                                                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                                                                                         Filter: ((kind)::text = 'complete+verified'::text)
                                                                                                         Rows Removed by Filter: 3
                                                                                                         Buffers: shared hit=1
                                                                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=41.917..41.917 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared read=4
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=41.901..41.905 rows=1 loops=1)
                                                                                                   Index Cond: (keyword = 'computer-animation'::text)
                                                                                                   Buffers: shared read=4
                                                                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=148.879..148.879 rows=84843 loops=1)
                                                                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                           Buffers: shared hit=2 read=2992
                                                                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=9.180..115.732 rows=84843 loops=1)
                                                                                 Filter: ((country_code)::text = '[us]'::text)
                                                                                 Rows Removed by Filter: 150154
                                                                                 Buffers: shared hit=2 read=2992
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.017 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=4730.66..4730.66 rows=237 width=23) (actual time=4993.639..4993.639 rows=2448 loops=1)
                                       Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 170kB
                                       Buffers: shared hit=5 read=106427
                                       ->  Hash Join  (cost=2685.27..4730.66 rows=237 width=23) (actual time=2615.004..4991.343 rows=2448 loops=1)
                                             Hash Cond: (pi.person_id = n.id)
                                             Buffers: shared hit=5 read=106427
                                             ->  Hash Join  (cost=0.05..2043.30 rows=26227 width=4) (actual time=0.105..2321.080 rows=142345 loops=1)
                                                   Hash Cond: (pi.info_type_id = it3.id)
                                                   Buffers: shared hit=3 read=50816
                                                   ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=2963664 width=8) (actual time=0.013..1522.101 rows=2963664 loops=1)
                                                         Buffers: shared hit=2 read=50816
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.061..0.061 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.023..0.055 rows=1 loops=1)
                                                               Filter: ((info)::text = 'height'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2606.163..2606.163 rows=50011 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                   Buffers: shared hit=2 read=55611
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1097.882..2576.038 rows=50011 loops=1)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4117480
                                                         Buffers: shared hit=2 read=55611
                           ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=64.712..64.712 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=64.697..64.700 rows=1 loops=1)
                                       Index Cond: (name = 'Queen'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.012 rows=1 loops=1)
                                 Filter: ((kind)::text = 'cast'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash  (cost=419.75..419.75 rows=901343 width=4) (actual time=674.195..674.195 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                     Buffers: shared hit=2 read=11393
                     ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.011..409.354 rows=901343 loops=1)
                           Buffers: shared hit=2 read=11393
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.018..0.024 rows=1 loops=1)
                     Filter: ((role)::text = 'actress'::text)
                     Rows Removed by Filter: 11
                     Buffers: shared hit=1
 Planning Time: 20185.130 ms
 Execution Time: 29412.370 ms
(157 rows)


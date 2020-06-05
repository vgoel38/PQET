                                                                                                                 QUERY PLAN                                                                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=30075.36..30075.36 rows=1 width=96) (actual time=29639.343..29639.344 rows=1 loops=1)
   Buffers: shared hit=3139 read=579778
   ->  Hash Join  (cost=15326.08..30075.36 rows=1 width=48) (actual time=21806.609..29639.311 rows=15 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=3139 read=579778
         ->  Hash Join  (cost=15326.04..30075.31 rows=1 width=52) (actual time=21763.333..29596.015 rows=15 loops=1)
               Hash Cond: (t.id = mi.movie_id)
               Buffers: shared hit=3136 read=579777
               ->  Hash Join  (cost=8013.81..22762.97 rows=1 width=68) (actual time=12561.195..20393.873 rows=15 loops=1)
                     Hash Cond: (n.id = an.person_id)
                     Buffers: shared hit=2 read=417464
                     ->  Hash Join  (cost=7461.76..22210.92 rows=1 width=80) (actual time=11984.567..19817.240 rows=5 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=2 read=406069
                           ->  Hash Join  (cost=7461.73..22210.88 rows=1 width=84) (actual time=11959.667..19792.338 rows=5 loops=1)
                                 Hash Cond: (ci.person_role_id = chn.id)
                                 Buffers: shared hit=2 read=406068
                                 ->  Hash Join  (cost=7455.59..22204.75 rows=1 width=72) (actual time=11911.485..19744.154 rows=5 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=2 read=406064
                                       ->  Hash Join  (cost=2727.55..17476.71 rows=1 width=49) (actual time=2540.000..14432.101 rows=190 loops=1)
                                             Hash Cond: (ci.movie_id = t.id)
                                             Buffers: shared hit=1 read=299633
                                             ->  Seq Scan on cast_info ci  (cost=0.00..14652.00 rows=834248 width=16) (actual time=4.933..11790.674 rows=836701 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35407643
                                                   Buffers: shared read=252654
                                             ->  Hash  (cost=2727.55..2727.55 rows=1 width=33) (actual time=2495.957..2495.957 rows=5 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1 read=46979
                                                   ->  Hash Join  (cost=1653.94..2727.55 rows=1 width=33) (actual time=2025.280..2495.944 rows=5 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=1 read=46979
                                                         ->  Hash Join  (cost=1513.08..2586.69 rows=1 width=37) (actual time=1878.064..2348.715 rows=22 loops=1)
                                                               Hash Cond: (mc.movie_id = t.id)
                                                               Buffers: shared hit=1 read=43985
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=2.326..482.653 rows=2609129 loops=1)
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=1513.08..1513.08 rows=1 width=29) (actual time=1441.297..1441.297 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1 read=25196
                                                                     ->  Hash Join  (cost=64.43..1513.08 rows=1 width=29) (actual time=1150.411..1441.287 rows=1 loops=1)
                                                                           Hash Cond: (mk.movie_id = t.id)
                                                                           Buffers: shared hit=1 read=25196
                                                                           ->  Hash Join  (cost=58.30..1506.95 rows=1 width=8) (actual time=462.748..1378.128 rows=23 loops=1)
                                                                                 Hash Cond: (cc.subject_id = cct.id)
                                                                                 Buffers: shared hit=1 read=25190
                                                                                 ->  Hash Join  (cost=58.26..1506.91 rows=2 width=12) (actual time=442.105..1357.446 rows=25 loops=1)
                                                                                       Hash Cond: (cc.status_id = cct.id)
                                                                                       Buffers: shared hit=1 read=25189
                                                                                       ->  Hash Join  (cost=58.23..1506.88 rows=10 width=16) (actual time=293.835..1357.329 rows=90 loops=1)
                                                                                             Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                             Buffers: shared read=25189
                                                                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=104.498..1254.013 rows=414 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared read=24458
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=24.050..595.628 rows=4523930 loops=1)
                                                                                                         Buffers: shared read=24454
                                                                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=43.622..43.623 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared read=4
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=43.605..43.608 rows=1 loops=1)
                                                                                                               Index Cond: (keyword = 'computer-animation'::text)
                                                                                                               Buffers: shared read=4
                                                                                             ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=100.868..100.868 rows=135086 loops=1)
                                                                                                   Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                                   Buffers: shared read=731
                                                                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=19.381..55.702 rows=135086 loops=1)
                                                                                                         Buffers: shared read=731
                                                                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                                                                                   Filter: ((kind)::text = 'complete+verified'::text)
                                                                                                   Rows Removed by Filter: 3
                                                                                                   Buffers: shared hit=1
                                                                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=20.599..20.599 rows=1 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared read=1
                                                                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=20.582..20.587 rows=1 loops=1)
                                                                                             Filter: ((kind)::text = 'cast'::text)
                                                                                             Rows Removed by Filter: 3
                                                                                             Buffers: shared read=1
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=21) (actual time=63.125..63.125 rows=2 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared read=6
                                                                                 ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=58.980..63.096 rows=2 loops=1)
                                                                                       Index Cond: (title = 'Shrek 2'::text)
                                                                                       Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                       Rows Removed by Filter: 1
                                                                                       Buffers: shared read=6
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=146.794..146.794 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=10.711..116.032 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared read=2994
                                       ->  Hash  (cost=4728.01..4728.01 rows=237 width=23) (actual time=5311.958..5311.958 rows=2448 loops=1)
                                             Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 170kB
                                             Buffers: shared hit=1 read=106431
                                             ->  Hash Join  (cost=2685.27..4728.01 rows=237 width=23) (actual time=2958.160..5309.381 rows=2448 loops=1)
                                                   Hash Cond: (pi.info_type_id = it3.id)
                                                   Buffers: shared hit=1 read=106431
                                                   ->  Hash Join  (cost=2685.22..4725.75 rows=26816 width=27) (actual time=2953.071..5298.752 rows=46248 loops=1)
                                                         Hash Cond: (pi.person_id = n.id)
                                                         Buffers: shared read=106431
                                                         ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=2963664 width=8) (actual time=10.744..1501.019 rows=2963664 loops=1)
                                                               Buffers: shared read=50818
                                                         ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2938.821..2938.821 rows=50011 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                               Buffers: shared read=55613
                                                               ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1432.976..2911.701 rows=50011 loops=1)
                                                                     Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                                     Rows Removed by Filter: 4117480
                                                                     Buffers: shared read=55613
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.035 rows=1 loops=1)
                                                               Filter: ((info)::text = 'height'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=48.144..48.144 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=48.128..48.132 rows=1 loops=1)
                                             Index Cond: (name = 'Queen'::text)
                                             Buffers: shared read=4
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=24.881..24.881 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=24.857..24.864 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared read=1
                     ->  Hash  (cost=419.75..419.75 rows=901343 width=4) (actual time=571.595..571.595 rows=901343 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                           Buffers: shared read=11395
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=23.273..307.719 rows=901343 loops=1)
                                 Buffers: shared read=11395
               ->  Hash  (cost=7255.68..7255.68 rows=385264 width=8) (actual time=9198.094..9198.094 rows=387683 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 19240kB
                     Buffers: shared hit=3134 read=162313
                     ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=385264 width=8) (actual time=694.214..9051.937 rows=387683 loops=1)
                           Filter: (info ~~ 'USA:%200%'::text)
                           Rows Removed by Filter: 14448037
                           Buffers: shared hit=3134 read=162313
         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=43.249..43.249 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=43.203..43.237 rows=1 loops=1)
                     Filter: ((info)::text = 'release dates'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared read=1
 Planning Time: 18848.219 ms
 Execution Time: 29641.787 ms
(157 rows)


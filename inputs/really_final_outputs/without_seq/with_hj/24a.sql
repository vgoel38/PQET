                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1159264.90..1159264.90 rows=1 width=96) (actual time=81877.284..81877.284 rows=1 loops=1)
   Buffers: shared hit=11326544 read=784803
   ->  Hash Join  (cost=542790.31..1159264.90 rows=1 width=48) (actual time=75771.919..81877.112 rows=275 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=11326544 read=784803
         ->  Hash Join  (cost=493648.85..1110123.43 rows=1 width=41) (actual time=70355.104..77568.083 rows=6518 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=7387943 read=714117
               ->  Hash Join  (cost=457192.99..1073667.58 rows=1 width=29) (actual time=59511.889..66722.577 rows=6532 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared hit=4287679 read=666499
                     ->  Hash Join  (cost=457186.87..1073661.45 rows=1 width=33) (actual time=59492.771..66698.036 rows=36786 loops=1)
                           Hash Cond: (ci.person_id = an.person_id)
                           Buffers: shared hit=4287679 read=666497
                           ->  Hash Join  (cost=449385.78..1065860.37 rows=1 width=29) (actual time=59082.749..66278.935 rows=13758 loops=1)
                                 Hash Cond: (t.id = ci.movie_id)
                                 Buffers: shared hit=4287679 read=664031
                                 ->  Hash Join  (cost=127639.88..744114.39 rows=1 width=33) (actual time=37166.113..44552.289 rows=3406 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=4287677 read=312345
                                       ->  Hash Join  (cost=123030.22..739504.74 rows=1 width=37) (actual time=36387.411..43769.478 rows=13560 loops=1)
                                             Hash Cond: (mi.info_type_id = it.id)
                                             Buffers: shared hit=4055963 read=308505
                                             ->  Hash Join  (cost=123024.10..739498.61 rows=2 width=41) (actual time=36363.672..43740.387 rows=13560 loops=1)
                                                   Hash Cond: (mi.movie_id = t.id)
                                                   Buffers: shared hit=4055963 read=308503
                                                   ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=302987 width=8) (actual time=276.397..18687.988 rows=301247 loops=1)
                                                         Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                         Rows Removed by Filter: 14534473
                                                         Buffers: shared hit=94252 read=202850
                                                   ->  Hash  (cost=123024.08..123024.08 rows=17 width=33) (actual time=24976.911..24976.911 rows=5566 loops=1)
                                                         Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 429kB
                                                         Buffers: shared hit=3961711 read=105653
                                                         ->  Hash Join  (cost=62968.86..123024.08 rows=17 width=33) (actual time=13759.444..24974.377 rows=5566 loops=1)
                                                               Hash Cond: (mc.movie_id = t.id)
                                                               Buffers: shared hit=3961711 read=105653
                                                               ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=14.995..11520.626 rows=2609129 loops=1)
                                                                     Buffers: shared hit=1450198 read=25920
                                                               ->  Hash  (cost=62968.84..62968.84 rows=16 width=25) (actual time=12963.195..12963.195 rows=495 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 38kB
                                                                     Buffers: shared hit=2511513 read=79733
                                                                     ->  Hash Join  (cost=23314.25..62968.84 rows=16 width=25) (actual time=10075.251..12962.633 rows=495 loops=1)
                                                                           Hash Cond: (mk.movie_id = t.id)
                                                                           Buffers: shared hit=2511513 read=79733
                                                                           ->  Hash Join  (cost=18.41..39673.00 rows=101 width=4) (actual time=92.602..3038.586 rows=9696 loops=1)
                                                                                 Hash Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=21643 read=36825
                                                                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.707..2194.996 rows=4523930 loops=1)
                                                                                       Buffers: shared hit=21636 read=36817
                                                                                 ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=35.587..35.587 rows=3 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=7 read=8
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=29.885..35.564 rows=3 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat}'::text[]))
                                                                                             Buffers: shared hit=7 read=8
                                                                           ->  Hash  (cost=23238.35..23238.35 rows=391667 width=21) (actual time=9917.140..9917.140 rows=391666 loops=1)
                                                                                 Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                                                                                 Buffers: shared hit=2489870 read=42908
                                                                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=88.428..9746.979 rows=391666 loops=1)
                                                                                       Filter: (production_year > 2010)
                                                                                       Rows Removed by Filter: 2136646
                                                                                       Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=23.718..23.719 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=23.703..23.706 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'release dates'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=778.386..778.386 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=47.359..752.585 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=321618.85..321618.85 rows=865636 width=16) (actual time=21718.392..21718.392 rows=867477 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 48597kB
                                       Buffers: shared hit=2 read=351686
                                       ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=70.711..21261.710 rows=867477 loops=1)
                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 35376867
                                             Buffers: shared hit=2 read=351686
                           ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=405.977..405.977 rows=901343 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                                 Buffers: shared read=2466
                                 ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=44.672..197.618 rows=901343 loops=1)
                                       Heap Fetches: 0
                                       Buffers: shared read=2466
                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=19.096..19.096 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=19.090..19.091 rows=1 loops=1)
                                 Index Cond: ((role)::text = 'actress'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=10833.432..10833.432 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=3100264 read=47618
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=21.686..9662.712 rows=3140339 loops=1)
                           Buffers: shared hit=3100264 read=47618
         ->  Hash  (cost=49135.93..49135.93 rows=37708 width=19) (actual time=4307.806..4307.806 rows=50011 loops=1)
               Buckets: 65536  Batches: 1  Memory Usage: 3135kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1906.044..4287.828 rows=50011 loops=1)
                     Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 4117480
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 10092.025 ms
 Execution Time: 81883.186 ms
(108 rows)


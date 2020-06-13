                                                                                                                               QUERY PLAN                                                                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1257497.99..1257497.99 rows=1 width=96) (actual time=67871.227..67871.227 rows=1 loops=1)
   Buffers: shared hit=6055247 read=754306
   ->  Hash Join  (cost=641006.53..1257497.99 rows=1 width=48) (actual time=62649.035..67870.731 rows=1620 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=6055247 read=754306
         ->  Hash Join  (cost=641000.40..1257491.86 rows=1 width=51) (actual time=62535.747..67757.059 rows=1620 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=6055244 read=754300
               ->  Hash Join  (cost=633199.31..1249690.77 rows=1 width=63) (actual time=62127.180..67348.174 rows=540 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=6055244 read=751834
                     ->  Hash Join  (cost=633193.19..1249684.64 rows=1 width=67) (actual time=62105.915..67326.754 rows=540 loops=1)
                           Hash Cond: (mi.movie_id = mc.movie_id)
                           Buffers: shared hit=6055244 read=751832
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=448472 width=8) (actual time=137.154..17130.680 rows=451104 loops=1)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                 Rows Removed by Filter: 14384616
                                 Buffers: shared hit=94252 read=202850
                           ->  Hash  (cost=633193.18..633193.18 rows=1 width=59) (actual time=50116.437..50116.437 rows=558 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 54kB
                                 Buffers: shared hit=5960992 read=548982
                                 ->  Hash Join  (cost=312884.19..633193.18 rows=1 width=59) (actual time=35592.490..50116.248 rows=558 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=5960992 read=548982
                                       ->  Hash Join  (cost=312878.06..633187.05 rows=1 width=63) (actual time=35575.402..50099.003 rows=558 loops=1)
                                             Hash Cond: (ci.person_role_id = chn.id)
                                             Buffers: shared hit=5960992 read=548980
                                             ->  Hash Join  (cost=312871.93..633180.92 rows=1 width=51) (actual time=35527.213..50050.545 rows=1760 loops=1)
                                                   Hash Cond: (ci.person_id = n.id)
                                                   Buffers: shared hit=5960992 read=548976
                                                   ->  Hash Join  (cost=107641.23..427950.22 rows=1 width=28) (actual time=16972.441..39057.013 rows=4128 loops=1)
                                                         Hash Cond: (ci.movie_id = mc.movie_id)
                                                         Buffers: shared hit=1790472 read=419372
                                                         ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..320211.85 rows=834248 width=16) (actual time=71.640..22064.551 rows=836701 loops=1)
                                                               Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 35407643
                                                               Buffers: shared hit=2 read=351686
                                                         ->  Hash  (cost=107641.21..107641.21 rows=1 width=12) (actual time=16829.358..16829.358 rows=129 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                                               Buffers: shared hit=1790470 read=67686
                                                               ->  Hash Join  (cost=47585.99..107641.21 rows=1 width=12) (actual time=10926.856..16829.184 rows=129 loops=1)
                                                                     Hash Cond: (cc.subject_id = cct.id)
                                                                     Buffers: shared hit=1790470 read=67686
                                                                     ->  Hash Join  (cost=47579.87..107635.09 rows=4 width=16) (actual time=10926.548..16828.731 rows=136 loops=1)
                                                                           Hash Cond: (mc.company_id = cn.id)
                                                                           Buffers: shared hit=1790470 read=67684
                                                                           ->  Hash Join  (cost=42970.21..103025.43 rows=11 width=20) (actual time=7141.664..15773.137 rows=564 loops=1)
                                                                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=1558756 read=63844
                                                                                 ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=19.964..12031.705 rows=2609129 loops=1)
                                                                                       Buffers: shared hit=1450198 read=25920
                                                                                 ->  Hash  (cost=42970.20..42970.20 rows=2 width=12) (actual time=3299.385..3299.385 rows=25 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                                                                       Buffers: shared hit=108558 read=37924
                                                                                       ->  Hash Join  (cost=3315.61..42970.20 rows=2 width=12) (actual time=1123.694..3299.308 rows=25 loops=1)
                                                                                             Hash Cond: (cc.status_id = cct.id)
                                                                                             Buffers: shared hit=108558 read=37924
                                                                                             ->  Hash Join  (cost=3309.48..42964.07 rows=10 width=16) (actual time=708.282..3299.126 rows=90 loops=1)
                                                                                                   Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                                   Buffers: shared hit=108556 read=37924
                                                                                                   ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=132.988..2908.604 rows=414 loops=1)
                                                                                                         Hash Cond: (mk.keyword_id = k.id)
                                                                                                         Buffers: shared hit=21636 read=36821
                                                                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.628..2035.256 rows=4523930 loops=1)
                                                                                                               Buffers: shared hit=21636 read=36817
                                                                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=43.647..43.647 rows=1 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared read=4
                                                                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=43.631..43.634 rows=1 loops=1)
                                                                                                                     Index Cond: (keyword = 'computer-animation'::text)
                                                                                                                     Buffers: shared read=4
                                                                                                   ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=388.057..388.057 rows=135086 loops=1)
                                                                                                         Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                                         Buffers: shared hit=86920 read=1103
                                                                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=32.725..313.232 rows=135086 loops=1)
                                                                                                               Buffers: shared hit=86920 read=1103
                                                                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=2
                                                                                                   ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.028..0.029 rows=1 loops=1)
                                                                                                         Index Cond: ((kind)::text = 'complete+verified'::text)
                                                                                                         Buffers: shared hit=2
                                                                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=1054.242..1054.242 rows=84843 loops=1)
                                                                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                                 Buffers: shared hit=231714 read=3840
                                                                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=53.030..1026.299 rows=84843 loops=1)
                                                                                       Filter: ((country_code)::text = '[us]'::text)
                                                                                       Rows Removed by Filter: 150154
                                                                                       Buffers: shared hit=231714 read=3840
                                                                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.264..0.264 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=2
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.252..0.254 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'cast'::text)
                                                                                 Buffers: shared read=2
                                                   ->  Hash  (cost=205230.66..205230.66 rows=237 width=23) (actual time=10992.048..10992.048 rows=10064 loops=1)
                                                         Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 692kB
                                                         Buffers: shared hit=4170520 read=129604
                                                         ->  Hash Join  (cost=49147.60..205230.66 rows=237 width=23) (actual time=10229.473..10988.107 rows=10064 loops=1)
                                                               Hash Cond: (pi.info_type_id = it.id)
                                                               Buffers: shared hit=4170520 read=129604
                                                               ->  Hash Join  (cost=49141.48..205222.32 rows=26816 width=27) (actual time=10229.402..10979.998 rows=46248 loops=1)
                                                                     Hash Cond: (pi.person_id = n.id)
                                                                     Buffers: shared hit=4170518 read=129604
                                                                     ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..155839.26 rows=2963664 width=8) (actual time=52.470..5846.897 rows=2963664 loops=1)
                                                                           Buffers: shared hit=231920 read=58918
                                                                     ->  Hash  (cost=49135.93..49135.93 rows=37708 width=19) (actual time=4400.754..4400.754 rows=50011 loops=1)
                                                                           Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                                           Buffers: shared hit=3938598 read=70686
                                                                           ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=2033.458..4380.736 rows=50011 loops=1)
                                                                                 Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                                                 Rows Removed by Filter: 4117480
                                                                                 Buffers: shared hit=3938598 read=70686
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=2
                                                                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.031..0.032 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'trivia'::text)
                                                                           Buffers: shared hit=2
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=48.147..48.147 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=48.129..48.132 rows=1 loops=1)
                                                         Index Cond: (name = 'Queen'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=17.053..17.054 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=17.029..17.033 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared read=2
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.246..21.246 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=21.221..21.224 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'release dates'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=400.711..400.711 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                     Buffers: shared read=2466
                     ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=41.551..192.143 rows=901343 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2466
         ->  Hash  (cost=6.13..6.13 rows=1 width=21) (actual time=113.262..113.262 rows=3 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=6
               ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=103.566..113.229 rows=3 loops=1)
                     Index Cond: (title = 'Shrek 2'::text)
                     Filter: ((production_year >= 2000) AND (production_year <= 2010))
                     Buffers: shared read=6
 Planning Time: 19106.699 ms
 Execution Time: 67873.014 ms
(152 rows)


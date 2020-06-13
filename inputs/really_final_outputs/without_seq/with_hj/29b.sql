                                                                                                                               QUERY PLAN                                                                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1256341.44..1256341.44 rows=1 width=96) (actual time=70251.796..70251.796 rows=1 loops=1)
   Buffers: shared hit=6051711 read=754306
   ->  Hash Join  (cost=641009.18..1256341.44 rows=1 width=48) (actual time=64541.567..70251.770 rows=15 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=6051711 read=754306
         ->  Hash Join  (cost=633208.10..1248540.35 rows=1 width=60) (actual time=64143.303..69853.501 rows=5 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=6051708 read=751840
               ->  Hash Join  (cost=633201.97..1248534.23 rows=1 width=64) (actual time=64120.819..69831.016 rows=5 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=6051708 read=751838
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=385264 width=8) (actual time=127.538..19633.505 rows=387683 loops=1)
                           Filter: (info ~~ 'USA:%200%'::text)
                           Rows Removed by Filter: 14448037
                           Buffers: shared hit=90716 read=202850
                     ->  Hash  (cost=633201.96..633201.96 rows=1 width=80) (actual time=50122.883..50122.883 rows=5 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=5960992 read=548988
                           ->  Hash Join  (cost=312892.97..633201.96 rows=1 width=80) (actual time=35212.600..50122.865 rows=5 loops=1)
                                 Hash Cond: (ci.person_role_id = chn.id)
                                 Buffers: shared hit=5960992 read=548988
                                 ->  Hash Join  (cost=312886.84..633195.83 rows=1 width=68) (actual time=35154.406..50064.669 rows=5 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=5960992 read=548984
                                       ->  Hash Join  (cost=312880.71..633189.70 rows=1 width=72) (actual time=35127.600..50037.861 rows=5 loops=1)
                                             Hash Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=5960992 read=548982
                                             ->  Hash Join  (cost=107647.36..427956.35 rows=1 width=49) (actual time=16846.969..39521.704 rows=190 loops=1)
                                                   Hash Cond: (ci.movie_id = t.id)
                                                   Buffers: shared hit=1790472 read=419378
                                                   ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..320211.85 rows=834248 width=16) (actual time=78.138..22687.177 rows=836701 loops=1)
                                                         Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 35407643
                                                         Buffers: shared hit=2 read=351686
                                                   ->  Hash  (cost=107647.34..107647.34 rows=1 width=33) (actual time=16672.792..16672.792 rows=5 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1790470 read=67692
                                                         ->  Hash Join  (cost=47592.12..107647.34 rows=1 width=33) (actual time=14843.403..16672.764 rows=5 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=1790470 read=67692
                                                               ->  Hash Join  (cost=42982.47..103037.69 rows=1 width=37) (actual time=14075.860..15905.195 rows=22 loops=1)
                                                                     Hash Cond: (cc.subject_id = cct.id)
                                                                     Buffers: shared hit=1558756 read=63852
                                                                     ->  Hash Join  (cost=42976.34..103031.56 rows=1 width=41) (actual time=14075.698..15905.006 rows=22 loops=1)
                                                                           Hash Cond: (cc.status_id = cct.id)
                                                                           Buffers: shared hit=1558756 read=63850
                                                                           ->  Hash Join  (cost=42970.22..103025.44 rows=1 width=45) (actual time=14075.673..15904.948 rows=22 loops=1)
                                                                                 Hash Cond: (t.id = cc.movie_id)
                                                                                 Buffers: shared hit=1558754 read=63850
                                                                                 ->  Hash Join  (cost=39666.88..99722.10 rows=1 width=33) (actual time=13568.030..15397.264 rows=22 loops=1)
                                                                                       Hash Cond: (mc.movie_id = t.id)
                                                                                       Buffers: shared hit=1471834 read=62747
                                                                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=16.943..11995.987 rows=2609129 loops=1)
                                                                                             Buffers: shared hit=1450198 read=25920
                                                                                       ->  Hash  (cost=39666.87..39666.87 rows=1 width=25) (actual time=2945.058..2945.058 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=21636 read=36827
                                                                                             ->  Hash Join  (cost=12.28..39666.87 rows=1 width=25) (actual time=2299.189..2945.046 rows=1 loops=1)
                                                                                                   Hash Cond: (mk.movie_id = t.id)
                                                                                                   Buffers: shared hit=21636 read=36827
                                                                                                   ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=129.506..2882.916 rows=414 loops=1)
                                                                                                         Hash Cond: (mk.keyword_id = k.id)
                                                                                                         Buffers: shared hit=21636 read=36821
                                                                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=36.426..2029.137 rows=4523930 loops=1)
                                                                                                               Buffers: shared hit=21636 read=36817
                                                                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=38.416..38.417 rows=1 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared read=4
                                                                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.400..38.403 rows=1 loops=1)
                                                                                                                     Index Cond: (keyword = 'computer-animation'::text)
                                                                                                                     Buffers: shared read=4
                                                                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=21) (actual time=61.913..61.913 rows=2 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared read=6
                                                                                                         ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=57.715..61.893 rows=2 loops=1)
                                                                                                               Index Cond: (title = 'Shrek 2'::text)
                                                                                                               Filter: ((production_year >= 2000) AND (production_year <= 2005))
                                                                                                               Rows Removed by Filter: 1
                                                                                                               Buffers: shared read=6
                                                                                 ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=507.031..507.031 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared hit=86920 read=1103
                                                                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=41.886..434.620 rows=135086 loops=1)
                                                                                             Buffers: shared hit=86920 read=1103
                                                                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=1)
                                                                                       Index Cond: ((kind)::text = 'complete+verified'::text)
                                                                                       Buffers: shared hit=2
                                                                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.140..0.140 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=2
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.137..0.137 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'cast'::text)
                                                                                 Buffers: shared read=2
                                                               ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=766.713..766.713 rows=84843 loops=1)
                                                                     Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                     Buffers: shared hit=231714 read=3840
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.303..741.569 rows=84843 loops=1)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 150154
                                                                           Buffers: shared hit=231714 read=3840
                                             ->  Hash  (cost=205233.32..205233.32 rows=237 width=23) (actual time=10516.058..10516.058 rows=2448 loops=1)
                                                   Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 170kB
                                                   Buffers: shared hit=4170520 read=129604
                                                   ->  Hash Join  (cost=49147.60..205233.32 rows=237 width=23) (actual time=9747.140..10514.841 rows=2448 loops=1)
                                                         Hash Cond: (pi.person_id = n.id)
                                                         Buffers: shared hit=4170520 read=129604
                                                         ->  Hash Join  (cost=6.14..156089.71 rows=26227 width=4) (actual time=51.318..5959.483 rows=142345 loops=1)
                                                               Hash Cond: (pi.info_type_id = it.id)
                                                               Buffers: shared hit=231922 read=58918
                                                               ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..155839.26 rows=2963664 width=8) (actual time=51.224..5284.118 rows=2963664 loops=1)
                                                                     Buffers: shared hit=231920 read=58918
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.051..0.051 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=2
                                                                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.033..0.035 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'height'::text)
                                                                           Buffers: shared hit=2
                                                         ->  Hash  (cost=49135.93..49135.93 rows=37708 width=19) (actual time=4492.772..4492.772 rows=50011 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                               Buffers: shared hit=3938598 read=70686
                                                               ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=2072.642..4472.542 rows=50011 loops=1)
                                                                     Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                                     Rows Removed by Filter: 4117480
                                                                     Buffers: shared hit=3938598 read=70686
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=26.760..26.760 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=26.742..26.746 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=58.161..58.161 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=58.144..58.147 rows=1 loops=1)
                                             Index Cond: (name = 'Queen'::text)
                                             Buffers: shared read=4
               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=22.462..22.462 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=22.441..22.444 rows=1 loops=1)
                           Index Cond: ((info)::text = 'release dates'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=395.845..395.845 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
               Buffers: shared read=2466
               ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=37.861..189.626 rows=901343 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2466
 Planning Time: 18796.046 ms
 Execution Time: 70253.634 ms
(153 rows)


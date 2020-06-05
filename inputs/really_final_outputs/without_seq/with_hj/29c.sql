                                                                                                                                QUERY PLAN                                                                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1318942.59..1318942.59 rows=1 width=96) (actual time=90226.693..90226.694 rows=1 loops=1)
   Buffers: shared hit=11645381 read=844822
   ->  Hash Join  (cost=702451.14..1318942.59 rows=1 width=48) (actual time=84247.462..90219.718 rows=16308 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=11645381 read=844822
         ->  Hash Join  (cost=694650.05..1311141.51 rows=1 width=60) (actual time=83832.520..89800.828 rows=3822 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=11645378 read=842356
               ->  Hash Join  (cost=694643.93..1311135.38 rows=1 width=64) (actual time=83811.368..89778.246 rows=3822 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=11645378 read=842354
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=448472 width=8) (actual time=137.963..19055.330 rows=451104 loops=1)
                           Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                           Rows Removed by Filter: 14384616
                           Buffers: shared hit=94252 read=202850
                     ->  Hash  (cost=694643.91..694643.91 rows=1 width=80) (actual time=70640.077..70640.077 rows=1364 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 151kB
                           Buffers: shared hit=11551126 read=639504
                           ->  Hash Join  (cost=372924.27..694643.91 rows=1 width=80) (actual time=56248.108..70638.437 rows=1364 loops=1)
                                 Hash Cond: (ci.person_role_id = chn.id)
                                 Buffers: shared hit=11551126 read=639504
                                 ->  Hash Join  (cost=336468.42..658188.06 rows=1 width=68) (actual time=44701.065..59089.742 rows=1412 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=8450862 read=591886
                                       ->  Hash Join  (cost=336462.29..658181.94 rows=1 width=72) (actual time=44682.532..59069.946 rows=1412 loops=1)
                                             Hash Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=8450862 read=591884
                                             ->  Hash Join  (cost=131228.94..452948.58 rows=1 width=49) (actual time=26837.120..48674.552 rows=2666 loops=1)
                                                   Hash Cond: (ci.movie_id = t.id)
                                                   Buffers: shared hit=4280342 read=462280
                                                   ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=78.145..21825.374 rows=867477 loops=1)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 35376867
                                                         Buffers: shared hit=2 read=351686
                                                   ->  Hash  (cost=131228.92..131228.92 rows=1 width=33) (actual time=26683.270..26683.270 rows=92 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                                         Buffers: shared hit=4280340 read=110594
                                                         ->  Hash Join  (cost=71173.70..131228.92 rows=1 width=33) (actual time=21211.994..26683.129 rows=92 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=4280340 read=110594
                                                               ->  Hash Join  (cost=66564.04..126619.27 rows=1 width=37) (actual time=17819.281..26030.407 rows=415 loops=1)
                                                                     Hash Cond: (cc.subject_id = cct.id)
                                                                     Buffers: shared hit=4048626 read=106754
                                                                     ->  Hash Join  (cost=66557.92..126613.14 rows=1 width=41) (actual time=17819.126..26030.002 rows=438 loops=1)
                                                                           Hash Cond: (cc.status_id = cct.id)
                                                                           Buffers: shared hit=4048626 read=106752
                                                                           ->  Hash Join  (cost=66551.79..126607.02 rows=1 width=45) (actual time=17819.099..26029.556 rows=1401 loops=1)
                                                                                 Hash Cond: (t.id = cc.movie_id)
                                                                                 Buffers: shared hit=4048624 read=106752
                                                                                 ->  Hash Join  (cost=63248.46..123303.68 rows=14 width=33) (actual time=16189.639..25660.411 rows=2435 loops=1)
                                                                                       Hash Cond: (mc.movie_id = t.id)
                                                                                       Buffers: shared hit=3961704 read=105649
                                                                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=13.715..11523.992 rows=2609129 loops=1)
                                                                                             Buffers: shared hit=1450198 read=25920
                                                                                       ->  Hash  (cost=63248.44..63248.44 rows=14 width=25) (actual time=13664.531..13664.531 rows=249 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                                                                             Buffers: shared hit=2511506 read=79729
                                                                                             ->  Hash Join  (cost=23593.86..63248.44 rows=14 width=25) (actual time=10818.913..13664.160 rows=249 loops=1)
                                                                                                   Hash Cond: (mk.movie_id = t.id)
                                                                                                   Buffers: shared hit=2511506 read=79729
                                                                                                   ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=229.639..3074.310 rows=414 loops=1)
                                                                                                         Hash Cond: (mk.keyword_id = k.id)
                                                                                                         Buffers: shared hit=21636 read=36821
                                                                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=148.377..2235.109 rows=4523930 loops=1)
                                                                                                               Buffers: shared hit=21636 read=36817
                                                                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=38.426..38.426 rows=1 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared read=4
                                                                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.409..38.412 rows=1 loops=1)
                                                                                                                     Index Cond: (keyword = 'computer-animation'::text)
                                                                                                                     Buffers: shared read=4
                                                                                                   ->  Hash  (cost=23434.65..23434.65 rows=1042800 width=21) (actual time=10582.879..10582.880 rows=1042800 loops=1)
                                                                                                         Buckets: 1048576  Batches: 1  Memory Usage: 63852kB
                                                                                                         Buffers: shared hit=2489870 read=42908
                                                                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=21) (actual time=54.874..10139.646 rows=1042800 loops=1)
                                                                                                               Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                               Rows Removed by Filter: 1485512
                                                                                                               Buffers: shared hit=2489870 read=42908
                                                                                 ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=366.992..366.992 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared hit=86920 read=1103
                                                                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=40.291..301.086 rows=135086 loops=1)
                                                                                             Buffers: shared hit=86920 read=1103
                                                                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=1)
                                                                                       Index Cond: ((kind)::text = 'complete+verified'::text)
                                                                                       Buffers: shared hit=2
                                                                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.135..0.135 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=2
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.132..0.132 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'cast'::text)
                                                                                 Buffers: shared read=2
                                                               ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=651.851..651.851 rows=84843 loops=1)
                                                                     Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                     Buffers: shared hit=231714 read=3840
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=18.892..626.606 rows=84843 loops=1)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 150154
                                                                           Buffers: shared hit=231714 read=3840
                                             ->  Hash  (cost=205233.32..205233.32 rows=237 width=23) (actual time=10393.400..10393.400 rows=10064 loops=1)
                                                   Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 692kB
                                                   Buffers: shared hit=4170520 read=129604
                                                   ->  Hash Join  (cost=49147.60..205233.32 rows=237 width=23) (actual time=9564.158..10389.273 rows=10064 loops=1)
                                                         Hash Cond: (pi.person_id = n.id)
                                                         Buffers: shared hit=4170520 read=129604
                                                         ->  Hash Join  (cost=6.14..156089.71 rows=26227 width=4) (actual time=102.251..5899.614 rows=620526 loops=1)
                                                               Hash Cond: (pi.info_type_id = it3.id)
                                                               Buffers: shared hit=231922 read=58918
                                                               ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..155839.26 rows=2963664 width=8) (actual time=102.153..5122.311 rows=2963664 loops=1)
                                                                     Buffers: shared hit=231920 read=58918
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.045..0.046 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=2
                                                                     ->  Index Scan using info_type_info_key on info_type it3  (cost=0.00..6.13 rows=1 width=4) (actual time=0.034..0.036 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'trivia'::text)
                                                                           Buffers: shared hit=2
                                                         ->  Hash  (cost=49135.93..49135.93 rows=37708 width=19) (actual time=4332.916..4332.916 rows=50011 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                               Buffers: shared hit=3938598 read=70686
                                                               ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=2029.697..4312.730 rows=50011 loops=1)
                                                                     Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                                     Rows Removed by Filter: 4117480
                                                                     Buffers: shared hit=3938598 read=70686
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=18.514..18.515 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=18.500..18.503 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=11526.190..11526.190 rows=3140339 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                       Buffers: shared hit=3100264 read=47618
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=22.137..10332.486 rows=3140339 loops=1)
                                             Buffers: shared hit=3100264 read=47618
               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.133..21.133 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=21.119..21.122 rows=1 loops=1)
                           Index Cond: ((info)::text = 'release dates'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=407.083..407.083 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
               Buffers: shared read=2466
               ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=47.761..198.925 rows=901343 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2466
 Planning Time: 18836.847 ms
 Execution Time: 90259.979 ms
(151 rows)


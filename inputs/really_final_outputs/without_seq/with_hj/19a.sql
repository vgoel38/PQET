                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1118525.55..1118525.55 rows=1 width=64) (actual time=70576.012..70576.012 rows=1 loops=1)
   Buffers: shared hit=8232221 read=711533
   ->  Hash Join  (cost=502048.88..1118525.55 rows=1 width=32) (actual time=63855.436..70575.880 rows=184 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=8232221 read=711533
         ->  Hash Join  (cost=466957.32..1083433.99 rows=1 width=36) (actual time=62054.611..68774.974 rows=189 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=8204634 read=700360
               ->  Hash Join  (cost=459156.24..1075632.90 rows=1 width=44) (actual time=61650.349..68370.595 rows=170 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=8204634 read=697894
                     ->  Hash Join  (cost=6.14..616482.34 rows=3969 width=4) (actual time=11401.801..18473.830 rows=451039 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=94252 read=202852
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=448472 width=8) (actual time=128.152..18299.578 rows=451104 loops=1)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                 Rows Removed by Filter: 14384616
                                 Buffers: shared hit=94252 read=202850
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.716..21.717 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=21.692..21.695 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'release dates'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=459150.10..459150.10 rows=1 width=56) (actual time=49823.945..49823.946 rows=73 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 15kB
                           Buffers: shared hit=8110382 read=495042
                           ->  Hash Join  (cost=137460.62..459150.10 rows=1 width=56) (actual time=35449.492..49823.823 rows=73 loops=1)
                                 Hash Cond: (ci.movie_id = t.id)
                                 Buffers: shared hit=8110382 read=495042
                                 ->  Hash Join  (cost=49142.63..370832.10 rows=66 width=31) (actual time=11832.113..26271.052 rows=727 loops=1)
                                       Hash Cond: (ci.role_id = rt.id)
                                       Buffers: shared hit=3938600 read=422374
                                       ->  Hash Join  (cost=49136.50..370825.90 rows=787 width=35) (actual time=11805.437..26243.804 rows=728 loops=1)
                                             Hash Cond: (ci.person_id = n.id)
                                             Buffers: shared hit=3938600 read=422372
                                             ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=44.845..21813.853 rows=867477 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35376867
                                                   Buffers: shared hit=2 read=351686
                                             ->  Hash  (cost=49135.93..49135.93 rows=3787 width=19) (actual time=4249.235..4249.235 rows=6768 loops=1)
                                                   Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 420kB
                                                   Buffers: shared hit=3938598 read=70686
                                                   ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=3787 width=19) (actual time=1981.399..4246.445 rows=6768 loops=1)
                                                         Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4160723
                                                         Buffers: shared hit=3938598 read=70686
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=26.661..26.661 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=26.638..26.642 rows=1 loops=1)
                                                   Index Cond: ((role)::text = 'actress'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=88314.46..88314.46 rows=24038 width=25) (actual time=23552.097..23552.097 rows=86979 loops=1)
                                       Buckets: 131072 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 6240kB
                                       Buffers: shared hit=4171782 read=72668
                                       ->  Hash Join  (cost=28128.65..88314.46 rows=24038 width=25) (actual time=11310.866..23506.603 rows=86979 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=4171782 read=72668
                                             ->  Hash Join  (cost=23518.99..83699.38 rows=66579 width=29) (actual time=10376.817..22529.908 rows=100350 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=3940068 read=68828
                                                   ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..60156.52 rows=292980 width=8) (actual time=13.551..11915.317 rows=590994 loops=1)
                                                         Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                         Rows Removed by Filter: 2018135
                                                         Buffers: shared hit=1450198 read=25920
                                                   ->  Hash  (cost=23434.65..23434.65 rows=574556 width=21) (actual time=10359.589..10359.589 rows=574556 loops=1)
                                                         Buckets: 1048576  Batches: 1  Memory Usage: 38813kB
                                                         Buffers: shared hit=2489870 read=42908
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=574556 width=21) (actual time=53.930..10121.236 rows=574556 loops=1)
                                                               Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                                               Rows Removed by Filter: 1953756
                                                               Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=933.675..933.675 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=51.019..907.207 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=401.876..401.876 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                     Buffers: shared read=2466
                     ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=46.304..194.921 rows=901343 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2466
         ->  Hash  (cost=34630.62..34630.62 rows=3140339 width=4) (actual time=1791.301..1791.301 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared hit=27584 read=11173
               ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..34630.62 rows=3140339 width=4) (actual time=47.528..948.212 rows=3140339 loops=1)
                     Heap Fetches: 0
                     Buffers: shared hit=27584 read=11173
 Planning Time: 6629.087 ms
 Execution Time: 70584.038 ms
(94 rows)


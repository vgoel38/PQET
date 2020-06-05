                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=538043.61..538043.61 rows=1 width=128) (actual time=63817.726..63817.727 rows=1 loops=1)
   Buffers: shared hit=11505494 read=556520
   ->  Hash Join  (cost=216352.24..538043.55 rows=191 width=64) (actual time=49397.057..63800.899 rows=8144 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=11505494 read=556520
         ->  Hash Join  (cost=192939.08..514630.38 rows=191 width=55) (actual time=38824.237..53223.365 rows=8144 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=9015621 read=513612
               ->  Hash Join  (cost=150315.46..472006.09 rows=220 width=47) (actual time=37081.064..51527.063 rows=4503 loops=1)
                     Hash Cond: (ci.movie_id = mc.movie_id)
                     Buffers: shared hit=8720776 read=499752
                     ->  Hash Join  (cost=85603.46..407293.62 rows=317 width=43) (actual time=23555.356..37996.073 rows=5686 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7038864 read=469992
                           ->  Hash Join  (cost=49147.61..370837.71 rows=653 width=31) (actual time=11945.642..26381.785 rows=6552 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=3938600 read=422374
                                 ->  Hash Join  (cost=49141.48..370830.88 rows=7832 width=35) (actual time=11920.875..26353.669 rows=6554 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=3938600 read=422372
                                       ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=78.187..21812.475 rows=867477 loops=1)
                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 35376867
                                             Buffers: shared hit=2 read=351686
                                       ->  Hash  (cost=49135.93..49135.93 rows=37708 width=19) (actual time=4355.127..4355.127 rows=50011 loops=1)
                                             Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                             Buffers: shared hit=3938598 read=70686
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1916.165..4335.333 rows=50011 loops=1)
                                                   Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                   Rows Removed by Filter: 4117480
                                                   Buffers: shared hit=3938598 read=70686
                                 ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=24.747..24.747 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=24.733..24.735 rows=1 loops=1)
                                             Index Cond: ((role)::text = 'actress'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=11600.136..11600.136 rows=3140339 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                 Buffers: shared hit=3100264 read=47618
                                 ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=27.315..10430.845 rows=3140339 loops=1)
                                       Buffers: shared hit=3100264 read=47618
                     ->  Hash  (cost=64573.73..64573.73 rows=941996 width=4) (actual time=13523.248..13523.249 rows=1153798 loops=1)
                           Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
                           Buffers: shared hit=1681912 read=29760
                           ->  Hash Join  (cost=4609.67..64573.73 rows=941996 width=4) (actual time=763.909..13079.222 rows=1153798 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=1681912 read=29760
                                 ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=28.519..11616.160 rows=2609129 loops=1)
                                       Buffers: shared hit=1450198 read=25920
                                 ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=734.373..734.373 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.563..708.432 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1689.725..1689.725 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
                     Buffers: shared hit=294845 read=13860
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=44.843..1290.246 rows=901343 loops=1)
                           Buffers: shared hit=294845 read=13860
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10562.757..10562.757 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=26.364..9555.132 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 4011.284 ms
 Execution Time: 63827.885 ms
(69 rows)


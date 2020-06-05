                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=538314.33..538314.33 rows=1 width=96) (actual time=63755.565..63755.565 rows=1 loops=1)
   Buffers: shared hit=11505494 read=556520
   ->  Hash Join  (cost=216624.85..538314.33 rows=1 width=49) (actual time=48816.623..63755.348 rows=121 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=11505494 read=556520
         ->  Hash Join  (cost=174001.23..495690.71 rows=1 width=41) (actual time=47136.957..62076.914 rows=115 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=11210646 read=542660
               ->  Hash Join  (cost=137545.38..459234.85 rows=2 width=29) (actual time=36043.899..50983.689 rows=125 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=8110382 read=495042
                     ->  Hash Join  (cost=49142.63..370832.10 rows=66 width=16) (actual time=12092.553..27101.501 rows=727 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=3938600 read=422374
                           ->  Hash Join  (cost=49136.50..370825.90 rows=787 width=20) (actual time=12071.453..27079.902 rows=728 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=3938600 read=422372
                                 ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=44.821..22480.099 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared hit=2 read=351686
                                 ->  Hash  (cost=49135.93..49135.93 rows=3787 width=4) (actual time=4416.466..4416.466 rows=6768 loops=1)
                                       Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 302kB
                                       Buffers: shared hit=3938598 read=70686
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=3787 width=4) (actual time=1929.834..4413.799 rows=6768 loops=1)
                                             Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4160723
                                             Buffers: shared hit=3938598 read=70686
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=21.083..21.083 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=21.062..21.065 rows=1 loops=1)
                                       Index Cond: ((role)::text = 'actress'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=88395.94..88395.94 rows=46351 width=25) (actual time=23881.430..23881.430 rows=144120 loops=1)
                           Buckets: 262144 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 10692kB
                           Buffers: shared hit=4171782 read=72668
                           ->  Hash Join  (cost=28206.93..88395.94 rows=46351 width=25) (actual time=11489.069..23803.850 rows=144120 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=4171782 read=72668
                                 ->  Hash Join  (cost=4609.67..64790.06 rows=105777 width=4) (actual time=857.333..12924.056 rows=542096 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=1681912 read=29760
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..60156.52 rows=292980 width=8) (actual time=30.393..11883.210 rows=590994 loops=1)
                                             Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                             Rows Removed by Filter: 2018135
                                             Buffers: shared hit=1450198 read=25920
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=825.916..825.916 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=53.881..798.764 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=23434.65..23434.65 rows=1107888 width=21) (actual time=10626.933..10626.933 rows=1107888 loops=1)
                                       Buckets: 2097152  Batches: 1  Memory Usage: 75795kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1107888 width=21) (actual time=51.985..10168.024 rows=1107888 loops=1)
                                             Filter: ((production_year >= 2005) AND (production_year <= 2015))
                                             Rows Removed by Filter: 1420424
                                             Buffers: shared hit=2489870 read=42908
               ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=11083.572..11083.572 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=3100264 read=47618
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=23.716..9914.540 rows=3140339 loops=1)
                           Buffers: shared hit=3100264 read=47618
         ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1675.869..1675.869 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=294845 read=13860
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=50.829..1297.035 rows=901343 loops=1)
                     Buffers: shared hit=294845 read=13860
 Planning Time: 3937.195 ms
 Execution Time: 63762.310 ms
(73 rows)


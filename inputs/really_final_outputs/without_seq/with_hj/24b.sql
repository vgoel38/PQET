                                                                                                                      QUERY PLAN                                                                                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1154779.99..1154779.99 rows=1 width=96) (actual time=80025.810..80025.811 rows=1 loops=1)
   Buffers: shared hit=11094831 read=780969
   ->  Hash Join  (cost=538305.48..1154779.99 rows=1 width=48) (actual time=74168.320..80025.771 rows=45 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=11094831 read=780969
         ->  Hash Join  (cost=538299.35..1154773.87 rows=1 width=52) (actual time=74148.065..80005.504 rows=45 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=11094828 read=780967
               ->  Hash Join  (cost=489157.89..1105632.40 rows=1 width=45) (actual time=69817.481..75674.844 rows=636 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=7156230 read=710281
                     ->  Hash Join  (cost=489151.76..1105626.28 rows=1 width=49) (actual time=69794.203..75651.409 rows=636 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=7156230 read=710279
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=302987 width=8) (actual time=286.171..18333.187 rows=301247 loops=1)
                                 Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                 Rows Removed by Filter: 14534473
                                 Buffers: shared hit=94252 read=202850
                           ->  Hash  (cost=489151.75..489151.75 rows=1 width=61) (actual time=57261.046..57261.046 rows=256 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 31kB
                                 Buffers: shared hit=7061978 read=507429
                                 ->  Hash Join  (cost=167432.10..489151.75 rows=1 width=61) (actual time=36037.096..57260.789 rows=256 loops=1)
                                       Hash Cond: (ci.person_role_id = chn.id)
                                       Buffers: shared hit=7061978 read=507429
                                       ->  Hash Join  (cost=130976.25..452695.90 rows=1 width=49) (actual time=26163.642..47387.080 rows=263 loops=1)
                                             Hash Cond: (ci.person_id = an.person_id)
                                             Buffers: shared hit=3961714 read=459811
                                             ->  Hash Join  (cost=123175.17..444894.81 rows=1 width=45) (actual time=25719.813..46988.069 rows=108 loops=1)
                                                   Hash Cond: (ci.movie_id = t.id)
                                                   Buffers: shared hit=3961714 read=457345
                                                   ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=65.021..21833.238 rows=867477 loops=1)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 35376867
                                                         Buffers: shared hit=2 read=351686
                                                   ->  Hash  (cost=123175.15..123175.15 rows=1 width=29) (actual time=24990.284..24990.284 rows=6 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=3961712 read=105659
                                                         ->  Hash Join  (cost=63119.93..123175.15 rows=1 width=29) (actual time=24439.741..24990.269 rows=6 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared hit=3961712 read=105659
                                                               ->  Hash Join  (cost=63113.79..123169.01 rows=1 width=33) (actual time=23119.178..24934.325 rows=62 loops=1)
                                                                     Hash Cond: (mc.movie_id = t.id)
                                                                     Buffers: shared hit=3961712 read=105655
                                                                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=35.233..11524.604 rows=2609129 loops=1)
                                                                           Buffers: shared hit=1450198 read=25920
                                                                     ->  Hash  (cost=63113.78..63113.78 rows=1 width=25) (actual time=12956.719..12956.719 rows=7 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=2511514 read=79735
                                                                           ->  Hash Join  (cost=23459.19..63113.78 rows=1 width=25) (actual time=10580.487..12956.706 rows=7 loops=1)
                                                                                 Hash Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=2511514 read=79735
                                                                                 ->  Hash Join  (cost=23434.66..63089.24 rows=52 width=29) (actual time=10528.655..12904.859 rows=88 loops=1)
                                                                                       Hash Cond: (mk.movie_id = t.id)
                                                                                       Buffers: shared hit=2511506 read=79725
                                                                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.389..1958.489 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=21636 read=36817
                                                                                       ->  Hash  (cost=23434.65..23434.65 rows=29 width=21) (actual time=10202.881..10202.881 rows=8 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=2489870 read=42908
                                                                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=29 width=21) (actual time=2404.299..10202.847 rows=8 loops=1)
                                                                                                   Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                                                   Rows Removed by Filter: 2528304
                                                                                                   Buffers: shared hit=2489870 read=42908
                                                                                 ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=51.802..51.802 rows=3 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=8 read=10
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=43.434..51.776 rows=3 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                                                                                             Buffers: shared hit=8 read=10
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=55.879..55.879 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=4
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=55.864..55.867 rows=1 loops=1)
                                                                           Index Cond: (name = 'DreamWorks Animation'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                             ->  Hash  (cost=7668.78..7668.78 rows=901343 width=4) (actual time=396.328..396.328 rows=901343 loops=1)
                                                   Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                                                   Buffers: shared read=2466
                                                   ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..7668.78 rows=901343 width=4) (actual time=40.156..189.238 rows=901343 loops=1)
                                                         Heap Fetches: 0
                                                         Buffers: shared read=2466
                                       ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=9860.469..9860.469 rows=3140339 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                             Buffers: shared hit=3100264 read=47618
                                             ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=23.467..8756.324 rows=3140339 loops=1)
                                                   Buffers: shared hit=3100264 read=47618
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=23.256..23.256 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=23.246..23.248 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'release dates'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=49135.93..49135.93 rows=37708 width=19) (actual time=4330.059..4330.059 rows=50011 loops=1)
                     Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                     Buffers: shared hit=3938598 read=70686
                     ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=37708 width=19) (actual time=1867.980..4311.804 rows=50011 loops=1)
                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 4117480
                           Buffers: shared hit=3938598 read=70686
         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=20.229..20.229 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=20.193..20.196 rows=1 loops=1)
                     Index Cond: ((role)::text = 'actress'::text)
                     Buffers: shared read=2
 Planning Time: 10117.980 ms
 Execution Time: 80030.347 ms
(108 rows)


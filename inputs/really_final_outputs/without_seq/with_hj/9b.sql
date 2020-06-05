                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=535574.05..535574.05 rows=1 width=128) (actual time=64764.531..64764.531 rows=1 loops=1)
   Buffers: shared hit=11505494 read=556520
   ->  Hash Join  (cost=216711.10..535574.05 rows=1 width=64) (actual time=49670.899..64764.426 rows=40 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=11505494 read=556520
         ->  Hash Join  (cost=180255.25..499118.20 rows=1 width=52) (actual time=37637.681..52731.170 rows=40 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=8405227 read=508902
               ->  Hash Join  (cost=137631.63..456494.58 rows=1 width=44) (actual time=35611.528..50949.275 rows=30 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=8110382 read=495042
                     ->  Hash Join  (cost=49142.48..368005.42 rows=39 width=31) (actual time=12299.300..27637.142 rows=453 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=3938600 read=422374
                           ->  Hash Join  (cost=49136.35..367999.25 rows=472 width=35) (actual time=12278.881..27616.231 rows=453 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=3938600 read=422372
                                 ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..318804.85 rows=712274 width=16) (actual time=78.166..23058.338 rows=713828 loops=1)
                                       Filter: (note = '(voice)'::text)
                                       Rows Removed by Filter: 35530516
                                       Buffers: shared hit=2 read=351686
                                 ->  Hash  (cost=49135.93..49135.93 rows=2762 width=19) (actual time=4397.420..4397.420 rows=5409 loops=1)
                                       Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 349kB
                                       Buffers: shared hit=3938598 read=70686
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=2762 width=19) (actual time=1970.063..4394.916 rows=5409 loops=1)
                                             Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4162082
                                             Buffers: shared hit=3938598 read=70686
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=20.399..20.400 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=20.385..20.388 rows=1 loops=1)
                                       Index Cond: ((role)::text = 'actress'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=88488.12..88488.12 rows=7062 width=25) (actual time=23311.677..23311.677 rows=47009 loops=1)
                           Buckets: 65536 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 3349kB
                           Buffers: shared hit=4171782 read=72668
                           ->  Hash Join  (cost=28119.58..88488.12 rows=7062 width=25) (actual time=11326.447..23286.656 rows=47009 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=4171782 read=72668
                                 ->  Hash Join  (cost=23509.93..83876.87 rows=19560 width=29) (actual time=10517.482..22453.569 rows=54971 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=3940068 read=68828
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..60359.09 rows=96436 width=8) (actual time=15.248..11891.632 rows=198519 loops=1)
                                             Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                             Rows Removed by Filter: 2410610
                                             Buffers: shared hit=1450198 read=25920
                                       ->  Hash  (cost=23434.65..23434.65 rows=512825 width=21) (actual time=10457.391..10457.391 rows=512825 loops=1)
                                             Buckets: 524288  Batches: 1  Memory Usage: 31488kB
                                             Buffers: shared hit=2489870 read=42908
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=512825 width=21) (actual time=209.513..10238.833 rows=512825 loops=1)
                                                   Filter: ((production_year >= 2007) AND (production_year <= 2010))
                                                   Rows Removed by Filter: 2015487
                                                   Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=808.599..808.599 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=52.659..781.946 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1779.390..1779.390 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
                     Buffers: shared hit=294845 read=13860
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=35.001..1376.191 rows=901343 loops=1)
                           Buffers: shared hit=294845 read=13860
         ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=12009.197..12009.197 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared hit=3100264 read=47618
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=22.313..10828.467 rows=3140339 loops=1)
                     Buffers: shared hit=3100264 read=47618
 Planning Time: 3928.146 ms
 Execution Time: 64801.834 ms
(73 rows)


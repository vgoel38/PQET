                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=499568.47..499568.47 rows=1 width=64) (actual time=53485.643..53485.644 rows=1 loops=1)
   Buffers: shared hit=8405230 read=508902
   ->  Hash Join  (cost=180756.03..499568.47 rows=1 width=33) (actual time=42191.770..53485.609 rows=6 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=8405230 read=508902
         ->  Hash Join  (cost=180749.91..499562.35 rows=1 width=37) (actual time=42191.509..53485.342 rows=6 loops=1)
               Hash Cond: (an.person_id = n.id)
               Buffers: shared hit=8405227 read=508900
               ->  Hash Join  (cost=131610.80..450423.24 rows=1 width=45) (actual time=25684.689..49200.644 rows=171 loops=1)
                     Hash Cond: (ci.person_id = an.person_id)
                     Buffers: shared hit=4466629 read=438214
                     ->  Hash Join  (cost=88987.18..407799.62 rows=1 width=25) (actual time=24145.177..47660.926 rows=104 loops=1)
                           Hash Cond: (ci.movie_id = mc.movie_id)
                           Buffers: shared hit=4171784 read=424354
                           ->  Hash Join  (cost=23827.26..342639.70 rows=1 width=33) (actual time=11072.717..34907.803 rows=226 loops=1)
                                 Hash Cond: (ci.movie_id = t.id)
                                 Buffers: shared hit=2489872 read=394594
                                 ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..318804.85 rows=93269 width=12) (actual time=39.901..24148.109 rows=93095 loops=1)
                                       Filter: (note = '(voice: English version)'::text)
                                       Rows Removed by Filter: 36151249
                                       Buffers: shared hit=2 read=351686
                                 ->  Hash  (cost=23827.24..23827.24 rows=34 width=21) (actual time=10736.746..10736.746 rows=7 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23827.24 rows=34 width=21) (actual time=7429.516..10736.727 rows=7 loops=1)
                                             Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                                             Rows Removed by Filter: 2528305
                                             Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=65159.91..65159.91 rows=21 width=4) (actual time=12752.828..12752.828 rows=8495 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 427kB
                                 Buffers: shared hit=1681912 read=29760
                                 ->  Hash Join  (cost=4598.20..65159.91 rows=21 width=4) (actual time=10641.629..12749.923 rows=8495 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=1681912 read=29760
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..60561.66 rows=720 width=8) (actual time=6186.657..11992.232 rows=8569 loops=1)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                             Rows Removed by Filter: 2600560
                                             Buffers: shared hit=1450198 read=25920
                                       ->  Hash  (cost=4597.20..4597.20 rows=6752 width=4) (actual time=753.924..753.924 rows=6752 loops=1)
                                             Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=6752 width=4) (actual time=178.124..751.732 rows=6752 loops=1)
                                                   Filter: ((country_code)::text = '[jp]'::text)
                                                   Rows Removed by Filter: 228245
                                                   Buffers: shared hit=231714 read=3840
                     ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1537.127..1537.127 rows=901343 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
                           Buffers: shared hit=294845 read=13860
                           ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=37.997..1166.237 rows=901343 loops=1)
                                 Buffers: shared hit=294845 read=13860
               ->  Hash  (cost=49135.93..49135.93 rows=21680 width=4) (actual time=4284.502..4284.502 rows=20911 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 992kB
                     Buffers: shared hit=3938598 read=70686
                     ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=21680 width=4) (actual time=44.810..4276.843 rows=20911 loops=1)
                           Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                           Rows Removed by Filter: 4146580
                           Buffers: shared hit=3938598 read=70686
         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.206..0.206 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.190..0.193 rows=1 loops=1)
                     Index Cond: ((role)::text = 'actress'::text)
                     Buffers: shared read=2
 Planning Time: 4141.982 ms
 Execution Time: 53551.540 ms
(65 rows)


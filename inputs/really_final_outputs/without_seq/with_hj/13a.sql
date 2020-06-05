                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=678474.52..678474.52 rows=1 width=96) (actual time=32388.052..32388.052 rows=1 loops=1)
   Buffers: shared hit=2822736 read=287329
   ->  Hash Join  (cost=63100.59..678474.52 rows=5 width=65) (actual time=26371.235..32336.488 rows=111101 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=2822736 read=287329
         ->  Hash Join  (cost=6.14..615364.78 rows=131290 width=46) (actual time=10929.856..17896.305 rows=3036719 loops=1)
               Hash Cond: (mi.info_type_id = it2.id)
               Buffers: shared hit=87585 read=202431
               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=50) (actual time=64.688..14139.533 rows=14835720 loops=1)
                     Buffers: shared hit=87582 read=202429
               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.352..21.353 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=21.336..21.340 rows=1 loops=1)
                           Index Cond: ((info)::text = 'release dates'::text)
                           Buffers: shared read=2
         ->  Hash  (cost=63094.44..63094.44 rows=44 width=35) (actual time=13965.215..13965.216 rows=16470 loops=1)
               Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1368kB
               Buffers: shared hit=2735151 read=84898
               ->  Hash Join  (cost=39766.63..63094.44 rows=44 width=35) (actual time=10664.267..13958.304 rows=16470 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=2735151 read=84898
                     ->  Hash Join  (cost=6.14..23291.88 rows=361187 width=21) (actual time=818.560..9685.773 rows=662825 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=2489870 read=42910
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=52.286..9110.089 rows=2528312 loops=1)
                                 Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=26.725..26.725 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=26.707..26.710 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'movie'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=39760.45..39760.45 rows=306 width=14) (actual time=4131.887..4131.887 rows=31510 loops=1)
                           Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1610kB
                           Buffers: shared hit=245281 read=41988
                           ->  Hash Join  (cost=16757.46..39760.45 rows=306 width=14) (actual time=3264.787..4120.701 rows=31510 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=245281 read=41988
                                 ->  Hash Join  (cost=16751.34..39754.19 rows=1225 width=18) (actual time=2180.955..4091.927 rows=83899 loops=1)
                                       Hash Cond: (mc.movie_id = miidx.movie_id)
                                       Buffers: shared hit=245281 read=41986
                                       ->  Hash Join  (cost=4598.65..27588.78 rows=108530 width=8) (actual time=730.852..2563.066 rows=148132 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=231714 read=29760
                                             ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=34.707..1295.714 rows=2609129 loops=1)
                                                   Buffers: shared read=25920
                                             ->  Hash  (cost=4597.20..4597.20 rows=9775 width=4) (actual time=695.932..695.933 rows=9775 loops=1)
                                                   Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=9775 width=4) (actual time=125.761..692.818 rows=9775 loops=1)
                                                         Filter: ((country_code)::text = '[de]'::text)
                                                         Rows Removed by Filter: 225222
                                                         Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1450.045..1450.045 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                             Buffers: shared hit=13567 read=12226
                                             ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=39.395..1282.679 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=13567 read=12226
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=39.309..869.496 rows=1380035 loops=1)
                                                         Buffers: shared hit=13565 read=12226
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.041..0.041 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.031..0.033 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=2
                                 ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=9.188..9.188 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=9.163..9.166 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared read=2
 Planning Time: 4713.998 ms
 Execution Time: 32414.706 ms
(76 rows)


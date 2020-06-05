                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=678633.02..678633.02 rows=1 width=96) (actual time=31325.206..31325.206 rows=1 loops=1)
   Buffers: shared hit=2822736 read=287327
   ->  Hash Join  (cost=63322.74..678633.02 rows=1 width=42) (actual time=16390.864..31324.627 rows=397 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2822736 read=287327
         ->  Hash Join  (cost=63316.61..678626.89 rows=1 width=46) (actual time=16363.475..31296.902 rows=707 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2822733 read=287325
               ->  Hash Join  (cost=12154.83..627465.11 rows=1 width=14) (actual time=3683.791..18691.522 rows=1943 loops=1)
                     Hash Cond: (mi.movie_id = mi_idx.movie_id)
                     Buffers: shared hit=101149 read=214657
                     ->  Hash Join  (cost=6.14..615316.13 rows=2427 width=4) (actual time=2144.354..17085.380 rows=272720 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=87582 read=202431
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=274233 width=8) (actual time=2132.699..16968.699 rows=274644 loops=1)
                                 Filter: (info = ANY ('{Drama,Horror}'::text[]))
                                 Rows Removed by Filter: 14561076
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.583..11.583 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=11.564..11.568 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'genres'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=12148.62..12148.62 rows=468 width=10) (actual time=1527.426..1527.426 rows=15849 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                           Buffers: shared hit=13567 read=12226
                           ->  Hash Join  (cost=6.14..12148.62 rows=468 width=10) (actual time=42.671..1518.974 rows=15849 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=13567 read=12226
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=42.572..1498.964 rows=52862 loops=1)
                                       Filter: (info > '8.0'::text)
                                       Rows Removed by Filter: 1327173
                                       Buffers: shared hit=13565 read=12226
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.040..0.040 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.029..0.030 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared hit=2
               ->  Hash  (cost=51137.40..51137.40 rows=166118 width=48) (actual time=12601.798..12601.798 rows=154763 loops=1)
                     Buckets: 262144  Batches: 1  Memory Usage: 15281kB
                     Buffers: shared hit=2721584 read=72668
                     ->  Hash Join  (cost=28109.76..51137.40 rows=166118 width=48) (actual time=10533.598..12526.317 rows=154763 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=2721584 read=72668
                           ->  Hash Join  (cost=23500.10..46490.24 rows=460112 width=33) (actual time=9757.301..11619.852 rows=392556 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=2489870 read=68828
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=18.296..1070.052 rows=2609129 loops=1)
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=23434.65..23434.65 rows=445860 width=21) (actual time=9735.558..9735.558 rows=445860 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 27838kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=445860 width=21) (actual time=51.030..9553.009 rows=445860 loops=1)
                                             Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                             Rows Removed by Filter: 2082452
                                             Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=23) (actual time=775.247..775.247 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared hit=231714 read=3840
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=35.890..746.350 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=27.362..27.362 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=27.342..27.345 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'production companies'::text)
                     Buffers: shared read=2
 Planning Time: 4845.878 ms
 Execution Time: 31326.365 ms
(73 rows)


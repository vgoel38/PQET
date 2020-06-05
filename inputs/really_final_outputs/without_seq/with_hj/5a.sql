                                                                                              QUERY PLAN                                                                                               
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=665343.40..665343.40 rows=1 width=32) (actual time=15492.038..15492.038 rows=1 loops=1)
   Buffers: shared hit=2489873 read=102013
   ->  Hash Join  (cost=46582.49..665343.39 rows=89 width=17) (actual time=15492.030..15492.030 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=2489873 read=102013
         ->  Hash Join  (cost=46576.34..665337.23 rows=89 width=21) (actual time=15467.190..15467.190 rows=0 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2489870 read=102011
               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..618742.92 rows=154416 width=8) (actual time=3300.359..3300.359 rows=1 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                     Rows Removed by Filter: 3630663
                     Buffers: shared read=33181
               ->  Hash  (cost=46576.26..46576.26 rows=419 width=25) (actual time=12166.780..12166.780 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared hit=2489870 read=68830
                     ->  Hash Join  (cost=23393.16..46576.26 rows=419 width=25) (actual time=12166.778..12166.778 rows=0 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=2489870 read=68830
                           ->  Hash Join  (cost=23387.04..46569.96 rows=1677 width=29) (actual time=10240.216..12141.143 rows=3929 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=2489870 read=68828
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=4187 width=8) (actual time=93.150..1980.445 rows=24025 loops=1)
                                       Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                                       Rows Removed by Filter: 2585104
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=23238.35..23238.35 rows=1012920 width=21) (actual time=10138.450..10138.451 rows=1012920 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 62527kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=50.111..9720.186 rows=1012920 loops=1)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1515392
                                             Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=24.842..24.842 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=24.823..24.827 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'production companies'::text)
                                       Buffers: shared read=2
         ->  Hash  (cost=6.14..6.14 rows=113 width=4) (actual time=24.817..24.817 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=2
               ->  Index Only Scan using info_type_pkey on info_type it  (cost=0.00..6.14 rows=113 width=4) (actual time=24.655..24.704 rows=113 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 1681.573 ms
 Execution Time: 15493.245 ms
(46 rows)


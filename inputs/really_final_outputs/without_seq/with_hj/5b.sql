                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=662044.87..662044.87 rows=1 width=32) (actual time=18333.237..18333.237 rows=1 loops=1)
   Buffers: shared hit=2489877 read=138740
   ->  Hash Join  (cost=46693.30..662044.87 rows=1 width=17) (actual time=18333.228..18333.228 rows=0 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=2489877 read=138740
         ->  Hash Join  (cost=46687.14..662038.72 rows=1 width=21) (actual time=18320.401..18320.402 rows=0 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2489874 read=138738
               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=551163 width=8) (actual time=6715.775..6715.776 rows=1 loops=1)
                     Filter: (info = ANY ('{USA,America}'::text[]))
                     Rows Removed by Filter: 7286866
                     Buffers: shared hit=4 read=69908
               ->  Hash  (cost=46687.13..46687.13 rows=2 width=25) (actual time=11604.603..11604.603 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared hit=2489870 read=68830
                     ->  Hash Join  (cost=23301.98..46687.13 rows=2 width=25) (actual time=11604.601..11604.602 rows=0 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=2489870 read=68830
                           ->  Hash Join  (cost=23295.85..46681.00 rows=7 width=29) (actual time=11578.604..11578.604 rows=0 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=2489870 read=68828
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23385.16 rows=46 width=8) (actual time=65.140..1919.270 rows=1418 loops=1)
                                       Filter: ((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))
                                       Rows Removed by Filter: 2607711
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=23238.35..23238.35 rows=391667 width=21) (actual time=9654.126..9654.126 rows=391666 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=83.790..9487.124 rows=391666 loops=1)
                                             Filter: (production_year > 2010)
                                             Rows Removed by Filter: 2136646
                                             Buffers: shared hit=2489870 read=42908
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=25.977..25.977 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=25.959..25.963 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'production companies'::text)
                                       Buffers: shared read=2
         ->  Hash  (cost=6.14..6.14 rows=113 width=4) (actual time=12.805..12.805 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=2
               ->  Index Only Scan using info_type_pkey on info_type it  (cost=0.00..6.14 rows=113 width=4) (actual time=12.664..12.712 rows=113 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 1876.904 ms
 Execution Time: 18333.927 ms
(46 rows)


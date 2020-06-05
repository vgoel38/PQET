                                                                                                            QUERY PLAN                                                                                                            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33509.38..33509.38 rows=1 width=128) (actual time=27241.545..27241.545 rows=1 loops=1)
   Buffers: shared hit=19 read=539814
   ->  Hash Join  (cost=15898.29..33509.38 rows=1 width=80) (actual time=23146.816..27224.197 rows=8024 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=19 read=539814
         ->  Hash Join  (cost=13286.85..30897.94 rows=1 width=69) (actual time=20519.809..24595.139 rows=11863 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=16 read=484201
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=360.193..12118.638 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=13286.85..13286.85 rows=1 width=85) (actual time=12274.743..12274.743 rows=14655 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1355kB
                     Buffers: shared hit=16 read=231547
                     ->  Hash Join  (cost=3705.46..13286.85 rows=1 width=85) (actual time=11502.163..12267.126 rows=14655 loops=1)
                           Hash Cond: (cc.subject_id = cct1.id)
                           Buffers: shared hit=16 read=231547
                           ->  Hash Join  (cost=3705.42..13286.81 rows=1 width=89) (actual time=11480.739..12239.166 rows=18543 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=16 read=231546
                                 ->  Hash Join  (cost=3705.38..13286.77 rows=1 width=93) (actual time=8751.629..12222.384 rows=23704 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=16 read=231545
                                       ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2869.483..8382.067 rows=188971 loops=1)
                                             Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                             Rows Removed by Filter: 14646749
                                             Buffers: shared read=161892
                                       ->  Hash  (cost=3705.38..3705.38 rows=1 width=43) (actual time=3790.202..3790.202 rows=16283 loops=1)
                                             Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1348kB
                                             Buffers: shared hit=16 read=69653
                                             ->  Hash Join  (cost=2106.97..3705.38 rows=1 width=43) (actual time=2091.186..3779.919 rows=16283 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=16 read=69653
                                                   ->  Hash Join  (cost=2106.94..3705.34 rows=2 width=47) (actual time=2090.071..3768.002 rows=35346 loops=1)
                                                         Hash Cond: (t.id = mi_idx.movie_id)
                                                         Buffers: shared hit=15 read=69653
                                                         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=7.345..993.566 rows=2528312 loops=1)
                                                               Buffers: shared read=35998
                                                         ->  Hash  (cost=2106.94..2106.94 rows=2 width=26) (actual time=2063.813..2063.813 rows=35346 loops=1)
                                                               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2521kB
                                                               Buffers: shared hit=15 read=33655
                                                               ->  Hash Join  (cost=658.20..2106.94 rows=2 width=26) (actual time=910.748..2050.625 rows=35346 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared hit=15 read=33655
                                                                     ->  Hash Join  (cost=658.15..2106.87 rows=214 width=30) (actual time=910.650..2031.800 rows=107001 loops=1)
                                                                           Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                                           Buffers: shared hit=14 read=33655
                                                                           ->  Hash Join  (cost=95.03..1543.71 rows=71 width=16) (actual time=216.303..1305.066 rows=36010 loops=1)
                                                                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                 Buffers: shared hit=14 read=25202
                                                                                 ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=88.949..1176.539 rows=76714 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=14 read=24471
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=26.265..520.038 rows=4523930 loops=1)
                                                                                             Buffers: shared read=24454
                                                                                       ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=62.527..62.528 rows=7 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=14 read=17
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=34.969..62.491 rows=7 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                                   Buffers: shared hit=14 read=17
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=101.372..101.372 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared read=731
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=21.283..57.388 rows=135086 loops=1)
                                                                                             Buffers: shared read=731
                                                                           ->  Hash  (cost=360.56..360.56 rows=1380035 width=14) (actual time=678.622..678.622 rows=1380035 loops=1)
                                                                                 Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                                                 Buffers: shared read=8453
                                                                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=24.885..316.956 rows=1380035 loops=1)
                                                                                       Buffers: shared read=8453
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.069..0.070 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.061 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'votes'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.027 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.017 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=9.249..9.249 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=9.194..9.234 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.408..21.408 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=21.379..21.383 rows=1 loops=1)
                                       Filter: ((kind)::text = 'cast'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2619.227..2619.227 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=14.287..2080.360 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 14783.944 ms
 Execution Time: 27244.729 ms
(109 rows)


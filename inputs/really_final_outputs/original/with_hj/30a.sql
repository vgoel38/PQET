                                                                                                            QUERY PLAN                                                                                                            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31254.95..31254.95 rows=1 width=128) (actual time=27162.892..27162.893 rows=1 loops=1)
   Buffers: shared hit=19 read=539814
   ->  Hash Join  (cost=13643.86..31254.95 rows=1 width=80) (actual time=22984.768..27162.356 rows=757 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=19 read=539814
         ->  Hash Join  (cost=11032.42..28643.51 rows=1 width=69) (actual time=20337.839..24515.128 rows=1021 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=16 read=484201
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=401.290..12120.420 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=11032.42..11032.42 rows=1 width=85) (actual time=12234.309..12234.309 rows=1161 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 115kB
                     Buffers: shared hit=16 read=231547
                     ->  Hash Join  (cost=3768.19..11032.42 rows=1 width=85) (actual time=11483.273..12233.257 rows=1161 loops=1)
                           Hash Cond: (cc.subject_id = cct.id)
                           Buffers: shared hit=16 read=231547
                           ->  Hash Join  (cost=3768.16..11032.39 rows=1 width=89) (actual time=11461.467..12210.692 rows=1161 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=16 read=231546
                                 ->  Hash Join  (cost=3768.11..11032.34 rows=1 width=93) (actual time=11452.182..12200.714 rows=1161 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=16 read=231545
                                       ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=4926.120..8396.171 rows=73047 loops=1)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 14762673
                                             Buffers: shared read=161892
                                       ->  Hash  (cost=3768.11..3768.11 rows=1 width=43) (actual time=3783.304..3783.304 rows=2023 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 168kB
                                             Buffers: shared hit=16 read=69653
                                             ->  Hash Join  (cost=2106.97..3768.11 rows=1 width=43) (actual time=2119.111..3781.537 rows=2023 loops=1)
                                                   Hash Cond: (cc.status_id = cct.id)
                                                   Buffers: shared hit=16 read=69653
                                                   ->  Hash Join  (cost=2106.94..3768.08 rows=1 width=47) (actual time=2098.941..3779.094 rows=6946 loops=1)
                                                         Hash Cond: (t.id = mi_idx.movie_id)
                                                         Buffers: shared hit=15 read=69653
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=8.983..1350.244 rows=1381453 loops=1)
                                                               Filter: (production_year > 2000)
                                                               Rows Removed by Filter: 1146859
                                                               Buffers: shared read=35998
                                                         ->  Hash  (cost=2106.94..2106.94 rows=2 width=26) (actual time=2042.544..2042.544 rows=35346 loops=1)
                                                               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2521kB
                                                               Buffers: shared hit=15 read=33655
                                                               ->  Hash Join  (cost=658.20..2106.94 rows=2 width=26) (actual time=884.613..2029.316 rows=35346 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it.id)
                                                                     Buffers: shared hit=15 read=33655
                                                                     ->  Hash Join  (cost=658.15..2106.87 rows=214 width=30) (actual time=884.511..2010.477 rows=107001 loops=1)
                                                                           Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                                           Buffers: shared hit=14 read=33655
                                                                           ->  Hash Join  (cost=95.03..1543.71 rows=71 width=16) (actual time=206.884..1300.616 rows=36010 loops=1)
                                                                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                 Buffers: shared hit=14 read=25202
                                                                                 ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=81.583..1172.708 rows=76714 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=14 read=24471
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=18.903..512.148 rows=4523930 loops=1)
                                                                                             Buffers: shared read=24454
                                                                                       ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=62.520..62.520 rows=7 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=14 read=17
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=34.967..62.479 rows=7 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                                   Buffers: shared hit=14 read=17
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=100.546..100.546 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared read=731
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=21.421..56.938 rows=135086 loops=1)
                                                                                             Buffers: shared read=731
                                                                           ->  Hash  (cost=360.56..360.56 rows=1380035 width=14) (actual time=671.928..671.928 rows=1380035 loops=1)
                                                                                 Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                                                 Buffers: shared read=8453
                                                                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=19.322..310.266 rows=1380035 loops=1)
                                                                                       Buffers: shared read=8453
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.066..0.066 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.052..0.058 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'votes'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=9.246..9.246 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=9.194..9.235 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=21.791..21.791 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=21.772..21.777 rows=2 loops=1)
                                       Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                       Rows Removed by Filter: 2
                                       Buffers: shared read=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2641.625..2641.625 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=36.504..2100.507 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 14979.301 ms
 Execution Time: 27166.951 ms
(111 rows)


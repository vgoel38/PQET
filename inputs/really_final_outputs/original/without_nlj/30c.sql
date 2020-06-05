                                                                                                            QUERY PLAN                                                                                                            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33509.38..33509.38 rows=1 width=128) (actual time=27273.044..27273.044 rows=1 loops=1)
   Buffers: shared hit=37 read=539796
   ->  Hash Join  (cost=15898.29..33509.38 rows=1 width=80) (actual time=23186.030..27255.183 rows=8024 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=37 read=539796
         ->  Hash Join  (cost=13286.85..30897.94 rows=1 width=69) (actual time=20569.097..24636.634 rows=11863 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=33 read=484184
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=476.229..12225.167 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=13286.85..13286.85 rows=1 width=85) (actual time=12211.441..12211.441 rows=14655 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1355kB
                     Buffers: shared hit=29 read=231534
                     ->  Hash Join  (cost=3705.46..13286.85 rows=1 width=85) (actual time=11429.676..12203.872 rows=14655 loops=1)
                           Hash Cond: (cc.subject_id = cct1.id)
                           Buffers: shared hit=29 read=231534
                           ->  Hash Join  (cost=3705.42..13286.81 rows=1 width=89) (actual time=11429.640..12197.257 rows=18543 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=28 read=231534
                                 ->  Hash Join  (cost=3705.38..13286.77 rows=1 width=93) (actual time=8717.324..12189.753 rows=23704 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=27 read=231534
                                       ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2866.221..8372.542 rows=188971 loops=1)
                                             Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                             Rows Removed by Filter: 14646749
                                             Buffers: shared hit=2 read=161890
                                       ->  Hash  (cost=3705.38..3705.38 rows=1 width=43) (actual time=3767.450..3767.450 rows=16283 loops=1)
                                             Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1348kB
                                             Buffers: shared hit=25 read=69644
                                             ->  Hash Join  (cost=2106.97..3705.38 rows=1 width=43) (actual time=2068.640..3757.215 rows=16283 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=25 read=69644
                                                   ->  Hash Join  (cost=2106.94..3705.34 rows=2 width=47) (actual time=2066.799..3745.181 rows=35346 loops=1)
                                                         Hash Cond: (t.id = mi_idx.movie_id)
                                                         Buffers: shared hit=24 read=69644
                                                         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=8.667..1007.625 rows=2528312 loops=1)
                                                               Buffers: shared hit=2 read=35996
                                                         ->  Hash  (cost=2106.94..2106.94 rows=2 width=26) (actual time=2040.379..2040.379 rows=35346 loops=1)
                                                               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2521kB
                                                               Buffers: shared hit=22 read=33648
                                                               ->  Hash Join  (cost=658.20..2106.94 rows=2 width=26) (actual time=840.567..2027.386 rows=35346 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared hit=22 read=33648
                                                                     ->  Hash Join  (cost=658.15..2106.87 rows=214 width=30) (actual time=840.468..2008.210 rows=107001 loops=1)
                                                                           Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                                           Buffers: shared hit=21 read=33648
                                                                           ->  Hash Join  (cost=95.03..1543.71 rows=71 width=16) (actual time=166.531..1301.202 rows=36010 loops=1)
                                                                                 Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                 Buffers: shared hit=19 read=25197
                                                                                 ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=40.328..1173.640 rows=76714 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=17 read=24468
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..525.331 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=3 read=24451
                                                                                       ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=40.168..40.168 rows=7 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=14 read=17
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=12.625..40.132 rows=7 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                                   Buffers: shared hit=14 read=17
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=99.641..99.641 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared hit=2 read=729
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=20.908..55.772 rows=135086 loops=1)
                                                                                             Buffers: shared hit=2 read=729
                                                                           ->  Hash  (cost=360.56..360.56 rows=1380035 width=14) (actual time=661.911..661.912 rows=1380035 loops=1)
                                                                                 Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                                                 Buffers: shared hit=2 read=8451
                                                                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.015..305.682 rows=1380035 loops=1)
                                                                                       Buffers: shared hit=2 read=8451
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.070..0.070 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.055..0.062 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'votes'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.011 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.007..0.020 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                                       Filter: ((kind)::text = 'cast'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2609.823..2609.823 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=13.306..2075.550 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 15802.802 ms
 Execution Time: 27277.125 ms
(109 rows)


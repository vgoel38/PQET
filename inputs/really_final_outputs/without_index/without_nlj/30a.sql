                                                                                                            QUERY PLAN                                                                                                            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31215.19..31215.19 rows=1 width=128) (actual time=27094.778..27094.778 rows=1 loops=1)
   Buffers: shared hit=37 read=539796
   ->  Hash Join  (cost=13604.13..31215.19 rows=1 width=80) (actual time=22856.064..27094.169 rows=757 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=37 read=539796
         ->  Hash Join  (cost=13604.09..31215.14 rows=1 width=84) (actual time=22855.922..27093.720 rows=757 loops=1)
               Hash Cond: (t.id = mi.movie_id)
               Buffers: shared hit=33 read=539796
               ->  Hash Join  (cost=6337.73..23948.67 rows=1 width=58) (actual time=14353.440..18590.917 rows=1235 loops=1)
                     Hash Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=31 read=377906
                     ->  Hash Join  (cost=6337.70..23948.64 rows=1 width=62) (actual time=14353.388..18590.000 rows=4155 loops=1)
                           Hash Cond: (cc.subject_id = cct.id)
                           Buffers: shared hit=30 read=377906
                           ->  Hash Join  (cost=6337.67..23948.61 rows=1 width=66) (actual time=14353.337..18588.458 rows=4155 loops=1)
                                 Hash Cond: (t.id = cc.movie_id)
                                 Buffers: shared hit=29 read=377906
                                 ->  Hash Join  (cost=6285.57..23896.51 rows=1 width=54) (actual time=14159.290..18392.426 rows=9851 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=27 read=377177
                                       ->  Hash Join  (cost=3674.12..21285.06 rows=1 width=43) (actual time=10863.541..15757.584 rows=16315 loops=1)
                                             Hash Cond: (ci.movie_id = t.id)
                                             Buffers: shared hit=26 read=321565
                                             ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1244570 width=8) (actual time=359.881..11775.563 rows=1244716 loops=1)
                                                   Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                                   Rows Removed by Filter: 34999628
                                                   Buffers: shared hit=4 read=252650
                                             ->  Hash  (cost=3674.12..3674.12 rows=1 width=35) (actual time=3749.910..3749.910 rows=24904 loops=1)
                                                   Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1905kB
                                                   Buffers: shared hit=22 read=68915
                                                   ->  Hash Join  (cost=3152.83..3674.12 rows=1 width=35) (actual time=3148.680..3739.087 rows=24904 loops=1)
                                                         Hash Cond: (mi_idx.info_type_id = it.id)
                                                         Buffers: shared hit=22 read=68915
                                                         ->  Hash Join  (cost=3152.78..3674.06 rows=70 width=39) (actual time=3148.631..3722.783 rows=74874 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = t.id)
                                                               Buffers: shared hit=21 read=68915
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.004..298.216 rows=1380035 loops=1)
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=3152.76..3152.76 rows=129 width=25) (actual time=3126.385..3126.385 rows=32779 loops=1)
                                                                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2390kB
                                                                     Buffers: shared hit=19 read=60464
                                                                     ->  Hash Join  (cost=1491.61..3152.76 rows=129 width=25) (actual time=1417.031..3108.419 rows=32779 loops=1)
                                                                           Hash Cond: (t.id = mk.movie_id)
                                                                           Buffers: shared hit=19 read=60464
                                                                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=8.141..1283.074 rows=1381453 loops=1)
                                                                                 Filter: (production_year > 2000)
                                                                                 Rows Removed by Filter: 1146859
                                                                                 Buffers: shared hit=2 read=35996
                                                                           ->  Hash  (cost=1491.57..1491.57 rows=236 width=4) (actual time=1396.738..1396.738 rows=76714 loops=1)
                                                                                 Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3721kB
                                                                                 Buffers: shared hit=17 read=24468
                                                                                 ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=92.034..1377.043 rows=76714 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=17 read=24468
                                                                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..658.307 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=3 read=24451
                                                                                       ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=91.862..91.862 rows=7 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=14 read=17
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=42.878..91.826 rows=7 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                                   Buffers: shared hit=14 read=17
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.024..0.025 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.020 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'votes'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=2356.12..2356.12 rows=1739533 width=19) (actual time=2622.143..2622.143 rows=1739579 loops=1)
                                             Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
                                             Buffers: shared hit=1 read=55612
                                             ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739533 width=19) (actual time=25.624..2074.755 rows=1739579 loops=1)
                                                   Filter: ((gender)::text = 'm'::text)
                                                   Rows Removed by Filter: 2427912
                                                   Buffers: shared hit=1 read=55612
                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=190.083..190.083 rows=135086 loops=1)
                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                       Buffers: shared hit=2 read=729
                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.185..137.206 rows=135086 loops=1)
                                             Buffers: shared hit=2 read=729
                           ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.020..0.020 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.011..0.014 rows=2 loops=1)
                                       Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                                 Filter: ((kind)::text = 'complete+verified'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash  (cost=7255.68..7255.68 rows=72715 width=50) (actual time=8501.888..8501.888 rows=73047 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 4614kB
                     Buffers: shared hit=2 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=72715 width=50) (actual time=5012.406..8463.385 rows=73047 loops=1)
                           Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                           Rows Removed by Filter: 14762673
                           Buffers: shared hit=2 read=161890
         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.068..0.069 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.021..0.060 rows=1 loops=1)
                     Filter: ((info)::text = 'genres'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared hit=1
 Planning Time: 15338.057 ms
 Execution Time: 27173.219 ms
(111 rows)


                                                                                                               QUERY PLAN                                                                                                               
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31213.08..31213.08 rows=1 width=128) (actual time=27065.249..27065.250 rows=1 loops=1)
   Buffers: shared hit=37 read=539796
   ->  Hash Join  (cost=13601.99..31213.08 rows=1 width=80) (actual time=22853.811..27064.697 rows=757 loops=1)
         Hash Cond: (cc.subject_id = cct.id)
         Buffers: shared hit=37 read=539796
         ->  Hash Join  (cost=13601.96..31213.05 rows=1 width=84) (actual time=22853.767..27064.358 rows=757 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=33 read=539796
               ->  Hash Join  (cost=10990.52..28601.61 rows=1 width=73) (actual time=20238.031..24448.292 rows=1021 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=32 read=484184
                     ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=359.468..12191.844 rows=1244716 loops=1)
                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                           Rows Removed by Filter: 34999628
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=10990.51..10990.51 rows=1 width=89) (actual time=12093.374..12093.374 rows=1161 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 120kB
                           Buffers: shared hit=28 read=231534
                           ->  Hash Join  (cost=3726.29..10990.51 rows=1 width=89) (actual time=11342.604..12092.384 rows=1161 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=28 read=231534
                                 ->  Hash Join  (cost=3726.24..10990.47 rows=1 width=93) (actual time=11342.561..12091.662 rows=1161 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=27 read=231534
                                       ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=4903.055..8386.836 rows=73047 loops=1)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 14762673
                                             Buffers: shared hit=2 read=161890
                                       ->  Hash  (cost=3726.24..3726.24 rows=1 width=43) (actual time=3685.150..3685.150 rows=2023 loops=1)
                                             Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 168kB
                                             Buffers: shared hit=25 read=69644
                                             ->  Hash Join  (cost=3204.96..3726.24 rows=1 width=43) (actual time=3096.617..3683.772 rows=2023 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it.id)
                                                   Buffers: shared hit=25 read=69644
                                                   ->  Hash Join  (cost=3204.91..3726.19 rows=1 width=47) (actual time=3096.570..3681.906 rows=6166 loops=1)
                                                         Hash Cond: (mi_idx.movie_id = t.id)
                                                         Buffers: shared hit=24 read=69644
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.006..328.613 rows=1380035 loops=1)
                                                               Buffers: shared hit=2 read=8451
                                                         ->  Hash  (cost=3204.91..3204.91 rows=2 width=33) (actual time=3062.537..3062.537 rows=2027 loops=1)
                                                               Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 145kB
                                                               Buffers: shared hit=22 read=61193
                                                               ->  Hash Join  (cost=1543.74..3204.91 rows=2 width=33) (actual time=1415.126..3061.025 rows=2027 loops=1)
                                                                     Hash Cond: (cc.status_id = cct.id)
                                                                     Buffers: shared hit=22 read=61193
                                                                     ->  Hash Join  (cost=1543.70..3204.88 rows=7 width=37) (actual time=1395.655..3058.695 rows=7185 loops=1)
                                                                           Hash Cond: (t.id = cc.movie_id)
                                                                           Buffers: shared hit=21 read=61193
                                                                           ->  Hash Join  (cost=1491.61..3152.76 rows=129 width=25) (actual time=1255.893..2944.056 rows=32779 loops=1)
                                                                                 Hash Cond: (t.id = mk.movie_id)
                                                                                 Buffers: shared hit=19 read=60464
                                                                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=21.870..1301.399 rows=1381453 loops=1)
                                                                                       Filter: (production_year > 2000)
                                                                                       Rows Removed by Filter: 1146859
                                                                                       Buffers: shared hit=2 read=35996
                                                                                 ->  Hash  (cost=1491.57..1491.57 rows=236 width=4) (actual time=1223.096..1223.096 rows=76714 loops=1)
                                                                                       Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3721kB
                                                                                       Buffers: shared hit=17 read=24468
                                                                                       ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=58.753..1202.890 rows=76714 loops=1)
                                                                                             Hash Cond: (mk.keyword_id = k.id)
                                                                                             Buffers: shared hit=17 read=24468
                                                                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..536.089 rows=4523930 loops=1)
                                                                                                   Buffers: shared hit=3 read=24451
                                                                                             ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=58.581..58.581 rows=7 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=14 read=17
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=31.010..58.541 rows=7 loops=1)
                                                                                                         Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                                         Buffers: shared hit=14 read=17
                                                                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=99.149..99.150 rows=135086 loops=1)
                                                                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                 Buffers: shared hit=2 read=729
                                                                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=19.094..55.385 rows=135086 loops=1)
                                                                                       Buffers: shared hit=2 read=729
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.021 rows=1 loops=1)
                                                               Filter: ((info)::text = 'votes'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.023 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
               ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2610.623..2610.623 rows=1739579 loops=1)
                     Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=14.030..2073.868 rows=1739579 loops=1)
                           Filter: ((gender)::text = 'm'::text)
                           Rows Removed by Filter: 2427912
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.017..0.017 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.009..0.010 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                     Rows Removed by Filter: 2
                     Buffers: shared hit=1
 Planning Time: 15710.262 ms
 Execution Time: 27067.847 ms
(111 rows)


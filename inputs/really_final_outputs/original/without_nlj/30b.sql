                                                                                                               QUERY PLAN                                                                                                               
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31641.12..31641.12 rows=1 width=128) (actual time=26957.296..26957.297 rows=1 loops=1)
   Buffers: shared hit=37 read=539796
   ->  Hash Join  (cost=14030.03..31641.12 rows=1 width=80) (actual time=23627.078..26957.238 rows=28 loops=1)
         Hash Cond: (cc.status_id = cct2.id)
         Buffers: shared hit=37 read=539796
         ->  Hash Join  (cost=14030.00..31641.09 rows=1 width=84) (actual time=22979.261..26957.119 rows=108 loops=1)
               Hash Cond: (cc.subject_id = cct1.id)
               Buffers: shared hit=33 read=539796
               ->  Hash Join  (cost=14029.96..31641.05 rows=1 width=88) (actual time=22979.217..26957.035 rows=108 loops=1)
                     Hash Cond: (t.id = cc.movie_id)
                     Buffers: shared hit=32 read=539796
                     ->  Hash Join  (cost=13977.87..31588.96 rows=1 width=100) (actual time=22886.258..26864.026 rows=108 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it2.id)
                           Buffers: shared hit=30 read=539067
                           ->  Hash Join  (cost=13977.82..31588.91 rows=1 width=104) (actual time=22886.216..26863.922 rows=324 loops=1)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=29 read=539067
                                 ->  Hash Join  (cost=11366.38..28977.47 rows=1 width=93) (actual time=20257.769..24235.371 rows=324 loops=1)
                                       Hash Cond: (ci.movie_id = t.id)
                                       Buffers: shared hit=28 read=483455
                                       ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=362.248..12054.249 rows=1244716 loops=1)
                                             Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                             Rows Removed by Filter: 34999628
                                             Buffers: shared hit=4 read=252650
                                       ->  Hash  (cost=11366.38..11366.38 rows=1 width=85) (actual time=12029.740..12029.740 rows=195 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                             Buffers: shared hit=24 read=230805
                                             ->  Hash Join  (cost=4102.15..11366.38 rows=1 width=85) (actual time=11486.418..12029.584 rows=195 loops=1)
                                                   Hash Cond: (mi.info_type_id = it1.id)
                                                   Buffers: shared hit=24 read=230805
                                                   ->  Hash Join  (cost=4102.10..11366.33 rows=1 width=89) (actual time=11486.364..12029.401 rows=195 loops=1)
                                                         Hash Cond: (mi.movie_id = t.id)
                                                         Buffers: shared hit=23 read=230805
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=4904.421..8402.292 rows=73047 loops=1)
                                                               Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                               Rows Removed by Filter: 14762673
                                                               Buffers: shared hit=2 read=161890
                                                         ->  Hash  (cost=4102.10..4102.10 rows=1 width=39) (actual time=3609.967..3609.968 rows=141 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 18kB
                                                               Buffers: shared hit=21 read=68915
                                                               ->  Hash Join  (cost=3580.82..4102.10 rows=1 width=39) (actual time=3286.963..3609.857 rows=141 loops=1)
                                                                     Hash Cond: (mi_idx.movie_id = t.id)
                                                                     Buffers: shared hit=21 read=68915
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.007..352.065 rows=1380035 loops=1)
                                                                           Buffers: shared hit=2 read=8451
                                                                     ->  Hash  (cost=3580.82..3580.82 rows=1 width=25) (actual time=2984.424..2984.424 rows=49 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 11kB
                                                                           Buffers: shared hit=19 read=60464
                                                                           ->  Hash Join  (cost=1491.61..3580.82 rows=1 width=25) (actual time=2494.254..2984.369 rows=49 loops=1)
                                                                                 Hash Cond: (t.id = mk.movie_id)
                                                                                 Buffers: shared hit=19 read=60464
                                                                                 ->  Seq Scan on title t  (cost=0.00..2089.15 rows=516 width=21) (actual time=15.732..1723.179 rows=533 loops=1)
                                                                                       Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                                                       Rows Removed by Filter: 2527779
                                                                                       Buffers: shared hit=2 read=35996
                                                                                 ->  Hash  (cost=1491.57..1491.57 rows=236 width=4) (actual time=1260.470..1260.470 rows=76714 loops=1)
                                                                                       Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3721kB
                                                                                       Buffers: shared hit=17 read=24468
                                                                                       ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=93.439..1241.158 rows=76714 loops=1)
                                                                                             Hash Cond: (mk.keyword_id = k.id)
                                                                                             Buffers: shared hit=17 read=24468
                                                                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..533.466 rows=4523930 loops=1)
                                                                                                   Buffers: shared hit=3 read=24451
                                                                                             ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=93.293..93.293 rows=7 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=14 read=17
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=44.305..93.253 rows=7 loops=1)
                                                                                                         Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                                         Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.037..0.037 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.031 rows=1 loops=1)
                                                               Filter: ((info)::text = 'genres'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2623.664..2623.664 rows=1739579 loops=1)
                                       Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
                                       Buffers: shared hit=1 read=55612
                                       ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=26.543..2081.412 rows=1739579 loops=1)
                                             Filter: ((gender)::text = 'm'::text)
                                             Rows Removed by Filter: 2427912
                                             Buffers: shared hit=1 read=55612
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.021 rows=1 loops=1)
                                       Filter: ((info)::text = 'votes'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=92.091..92.091 rows=135086 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                           Buffers: shared hit=2 read=729
                           ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.164..52.722 rows=135086 loops=1)
                                 Buffers: shared hit=2 read=729
               ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.019..0.019 rows=2 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.008..0.012 rows=2 loops=1)
                           Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                           Rows Removed by Filter: 2
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.029..0.030 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                     Filter: ((kind)::text = 'complete+verified'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
 Planning Time: 15596.537 ms
 Execution Time: 26959.971 ms
(111 rows)


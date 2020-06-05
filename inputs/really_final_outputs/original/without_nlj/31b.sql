                                                                                          QUERY PLAN                                                                                          
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32599.28..32599.28 rows=1 width=128) (actual time=27989.009..27989.009 rows=1 loops=1)
   Buffers: shared hit=37 read=560846
   ->  Hash Join  (cost=15031.69..32599.28 rows=1 width=80) (actual time=24019.445..27988.925 rows=84 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=37 read=560846
         ->  Hash Join  (cost=12420.25..29987.84 rows=1 width=69) (actual time=21397.472..25366.917 rows=84 loops=1)
               Hash Cond: (t.id = mi_idx.movie_id)
               Buffers: shared hit=33 read=505234
               ->  Hash Join  (cost=11944.07..29511.66 rows=1 width=83) (actual time=20762.916..24732.321 rows=84 loops=1)
                     Hash Cond: (t.id = mi.movie_id)
                     Buffers: shared hit=30 read=496783
                     ->  Hash Join  (cost=2089.23..19656.79 rows=254 width=29) (actual time=9612.985..13695.329 rows=637 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=5 read=288647
                           ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=375.365..11706.305 rows=1244716 loops=1)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 34999628
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=2089.15..2089.15 rows=516 width=21) (actual time=1823.872..1823.873 rows=533 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 43kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..2089.15 rows=516 width=21) (actual time=15.736..1823.075 rows=533 loops=1)
                                       Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                       Rows Removed by Filter: 2527779
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=9854.84..9854.84 rows=1 width=54) (actual time=11036.752..11036.753 rows=260 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 22kB
                           Buffers: shared hit=25 read=208136
                           ->  Hash Join  (cost=2593.04..9854.84 rows=1 width=54) (actual time=10351.543..11036.564 rows=260 loops=1)
                                 Hash Cond: (mi.movie_id = mk.movie_id)
                                 Buffers: shared hit=25 read=208136
                                 ->  Hash Join  (cost=0.05..7261.78 rows=650 width=46) (actual time=7806.709..8596.088 rows=72258 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=3 read=161890
                                       ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=73417 width=50) (actual time=5102.064..8564.224 rows=73047 loops=1)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 14762673
                                             Buffers: shared hit=2 read=161890
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.021 rows=1 loops=1)
                                                   Filter: ((info)::text = 'genres'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=2592.99..2592.99 rows=1 width=8) (actual time=2425.427..2425.427 rows=315 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 21kB
                                       Buffers: shared hit=22 read=46246
                                       ->  Hash Join  (cost=1144.32..2592.99 rows=1 width=8) (actual time=1259.066..2425.267 rows=315 loops=1)
                                             Hash Cond: (mk.movie_id = mc.movie_id)
                                             Buffers: shared hit=22 read=46246
                                             ->  Hash Join  (cost=42.93..1491.57 rows=236 width=4) (actual time=71.460..1357.407 rows=76714 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=17 read=24468
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..648.092 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=71.318..71.318 rows=7 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=14 read=17
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=22.334..71.272 rows=7 loops=1)
                                                               Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                               Buffers: shared hit=14 read=17
                                             ->  Hash  (cost=1101.39..1101.39 rows=1 width=4) (actual time=1058.570..1058.570 rows=135 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 13kB
                                                   Buffers: shared hit=5 read=21778
                                                   ->  Hash Join  (cost=128.41..1101.39 rows=1 width=4) (actual time=253.973..1058.464 rows=135 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=5 read=21778
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..972.33 rows=7977 width=8) (actual time=23.640..912.075 rows=7963 loops=1)
                                                               Filter: (note ~~ '%(Blu-ray)%'::text)
                                                               Rows Removed by Filter: 2601166
                                                               Buffers: shared hit=3 read=18786
                                                         ->  Hash  (cost=128.41..128.41 rows=30 width=4) (actual time=144.663..144.663 rows=10 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=12.038..144.628 rows=10 loops=1)
                                                                     Filter: (name ~~ 'Lionsgate%'::text)
                                                                     Rows Removed by Filter: 234987
                                                                     Buffers: shared hit=2 read=2992
               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=634.474..634.474 rows=459925 loops=1)
                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                     Buffers: shared hit=3 read=8451
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.053..514.737 rows=459925 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=3 read=8451
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.010..229.601 rows=1380035 loops=1)
                                 Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.022 rows=1 loops=1)
                                       Filter: ((info)::text = 'votes'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=19) (actual time=2617.186..2617.186 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=19) (actual time=12.255..2075.439 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 15145.656 ms
 Execution Time: 27990.493 ms
(103 rows)


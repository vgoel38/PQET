                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10839.27..10839.27 rows=1 width=96) (actual time=445226.907..445226.907 rows=1 loops=1)
   Buffers: shared hit=19955318 read=228116
   ->  Nested Loop  (cost=2369.48..10839.27 rows=1 width=42) (actual time=13418.604..445226.170 rows=372 loops=1)
         Join Filter: (mc.company_id = cn.id)
         Rows Removed by Join Filter: 33452964
         Buffers: shared hit=19955318 read=228116
         ->  Nested Loop  (cost=2369.48..10698.41 rows=1 width=27) (actual time=5482.288..429870.219 rows=626 loops=1)
               Join Filter: (mi.movie_id = t.id)
               Rows Removed by Join Filter: 355295497
               Buffers: shared hit=18779487 read=225124
               ->  Hash Join  (cost=2369.43..3352.16 rows=1 width=39) (actual time=3221.820..3516.804 rows=117 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=12 read=63234
                     ->  Hash Join  (cost=2369.40..3352.12 rows=4 width=43) (actual time=2719.808..3516.432 rows=313 loops=1)
                           Hash Cond: (t.id = miidx.movie_id)
                           Buffers: shared hit=8 read=63234
                           ->  Hash Join  (cost=1893.22..2875.91 rows=337 width=33) (actual time=1909.047..2705.753 rows=769 loops=1)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=5 read=54783
                                 ->  Hash Join  (cost=1893.19..2875.64 rows=2361 width=37) (actual time=1729.775..2704.931 rows=2659 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=4 read=54783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.004..526.999 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=1892.85..1892.85 rows=2288 width=25) (actual time=1729.697..1729.697 rows=2218 loops=1)
                                             Buckets: 4096  Batches: 1  Memory Usage: 196kB
                                             Buffers: shared hit=1 read=35997
                                             ->  Seq Scan on title t  (cost=0.00..1892.85 rows=2288 width=25) (actual time=22.314..1727.633 rows=2218 loops=1)
                                                   Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                                   Rows Removed by Filter: 2526094
                                                   Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared hit=1
                           ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=809.893..809.893 rows=459925 loops=1)
                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                 Buffers: shared hit=3 read=8451
                                 ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.109..681.118 rows=459925 loops=1)
                                       Hash Cond: (miidx.info_type_id = it.id)
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.010..366.595 rows=1380035 loops=1)
                                             Buffers: shared hit=2 read=8451
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.056..0.056 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.045..0.050 rows=1 loops=1)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.053..0.053 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.038..0.041 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=857.538..3407.110 rows=3036719 loops=117)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=18779475 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=0.048..1082.124 rows=14835720 loops=117)
                           Buffers: shared hit=18779474 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.078..0.078 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.034..0.069 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
         ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=0.014..20.282 rows=53440 loops=626)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 94443
               Buffers: shared hit=1175831 read=2992
 Planning Time: 4840.282 ms
 Execution Time: 445243.014 ms
(78 rows)


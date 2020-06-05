                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=29558.32..29558.32 rows=1 width=96) (actual time=25405.442..25405.442 rows=1 loops=1)
   Buffers: shared hit=15 read=514600
   ->  Hash Join  (cost=11969.05..29558.32 rows=1 width=65) (actual time=21329.484..25405.354 rows=11 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=15 read=514600
         ->  Hash Join  (cost=2447.65..20015.22 rows=186416 width=4) (actual time=7275.077..14496.022 rows=98503 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=389.667..11679.634 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2356.12..2356.12 rows=623581 width=4) (actual time=2607.373..2607.374 rows=961555 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 41997kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=623581 width=4) (actual time=1098.607..2345.344 rows=961555 loops=1)
                           Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 3205936
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=9521.39..9521.39 rows=1 width=77) (actual time=10895.924..10895.924 rows=358 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 35kB
               Buffers: shared hit=7 read=206338
               ->  Hash Join  (cost=2260.18..9521.39 rows=1 width=77) (actual time=10116.344..10895.540 rows=358 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=7 read=206338
                     ->  Hash Join  (cost=0.05..7261.19 rows=587 width=46) (actual time=7596.900..8379.702 rows=72258 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=3 read=161890
                           ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=66310 width=50) (actual time=4892.745..8348.772 rows=73047 loops=1)
                                 Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                 Rows Removed by Filter: 14762673
                                 Buffers: shared hit=2 read=161890
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.022 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=2260.11..2260.11 rows=145 width=31) (actual time=2495.803..2495.803 rows=6152 loops=1)
                           Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 436kB
                           Buffers: shared hit=4 read=44448
                           ->  Hash Join  (cost=472.18..2260.11 rows=145 width=31) (actual time=788.622..2490.725 rows=6152 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=4 read=44448
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=784488 width=21) (actual time=21.579..1494.616 rows=784488 loops=1)
                                       Filter: ((production_year >= 2008) AND (production_year <= 2014))
                                       Rows Removed by Filter: 1743824
                                       Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=472.12..472.12 rows=468 width=10) (actual time=747.533..747.533 rows=15849 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Hash Join  (cost=0.05..472.12 rows=468 width=10) (actual time=0.172..741.456 rows=15849 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=0.077..726.426 rows=52862 loops=1)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 1327173
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.063..0.063 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.048..0.055 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
 Planning Time: 5525.235 ms
 Execution Time: 25406.758 ms
(68 rows)


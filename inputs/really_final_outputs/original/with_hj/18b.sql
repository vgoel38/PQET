                                                                                 QUERY PLAN                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=29558.32..29558.32 rows=1 width=96) (actual time=26543.218..26543.218 rows=1 loops=1)
   Buffers: shared hit=4 read=514611
   ->  Hash Join  (cost=11969.05..29558.32 rows=1 width=65) (actual time=22239.205..26543.148 rows=11 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=4 read=514611
         ->  Hash Join  (cost=2447.65..20015.22 rows=186416 width=4) (actual time=7393.974..15027.707 rows=98503 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=3 read=308267
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=445.313..12208.381 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=2356.12..2356.12 rows=623581 width=4) (actual time=2603.892..2603.893 rows=961555 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 41997kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=623581 width=4) (actual time=1095.036..2336.964 rows=961555 loops=1)
                           Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 3205936
                           Buffers: shared read=55613
         ->  Hash  (cost=9521.39..9521.39 rows=1 width=77) (actual time=11501.409..11501.409 rows=358 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 35kB
               Buffers: shared hit=1 read=206344
               ->  Hash Join  (cost=2260.18..9521.39 rows=1 width=77) (actual time=10723.434..11500.978 rows=358 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=1 read=206344
                     ->  Hash Join  (cost=0.05..7261.19 rows=587 width=46) (actual time=8320.674..9101.514 rows=72258 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared read=161893
                           ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=66310 width=50) (actual time=5324.515..9046.059 rows=73047 loops=1)
                                 Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                 Rows Removed by Filter: 14762673
                                 Buffers: shared read=161892
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.741..23.741 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=23.687..23.728 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Hash  (cost=2260.11..2260.11 rows=145 width=31) (actual time=2378.748..2378.748 rows=6152 loops=1)
                           Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 436kB
                           Buffers: shared hit=1 read=44451
                           ->  Hash Join  (cost=472.18..2260.11 rows=145 width=31) (actual time=671.621..2373.343 rows=6152 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=1 read=44451
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=784488 width=21) (actual time=21.175..1489.452 rows=784488 loops=1)
                                       Filter: ((production_year >= 2008) AND (production_year <= 2014))
                                       Rows Removed by Filter: 1743824
                                       Buffers: shared read=35998
                                 ->  Hash  (cost=472.12..472.12 rows=468 width=10) (actual time=624.551..624.551 rows=15849 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 748kB
                                       Buffers: shared hit=1 read=8453
                                       ->  Hash Join  (cost=0.05..472.12 rows=468 width=10) (actual time=23.827..617.682 rows=15849 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=1 read=8453
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=23.705..601.776 rows=52862 loops=1)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 1327173
                                                   Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.070..0.070 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.060 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
 Planning Time: 5191.349 ms
 Execution Time: 26544.104 ms
(68 rows)


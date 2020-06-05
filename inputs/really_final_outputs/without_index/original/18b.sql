                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=29709.94..29709.94 rows=1 width=96) (actual time=4499130.845..4499130.845 rows=1 loops=1)
   Buffers: shared hit=207587653 read=514600
   ->  Nested Loop  (cost=0.00..29709.94 rows=1 width=65) (actual time=690533.347..4499130.771 rows=11 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Rows Removed by Join Filter: 11209267
         Buffers: shared hit=207587653 read=514600
         ->  Nested Loop  (cost=0.00..27898.24 rows=1 width=60) (actual time=327639.582..4492065.496 rows=16 loops=1)
               Join Filter: (ci.person_id = n.id)
               Rows Removed by Join Filter: 387169647
               Buffers: shared hit=207116156 read=478603
               ->  Nested Loop  (cost=0.00..25450.62 rows=1 width=64) (actual time=57543.085..4230240.280 rows=412 loops=1)
                     Join Filter: (mi.movie_id = ci.movie_id)
                     Rows Removed by Join Filter: 911131700
                     Buffers: shared hit=184690084 read=422991
                     ->  Nested Loop  (cost=0.00..7801.94 rows=1 width=56) (actual time=8146.533..171782.123 rows=732 loops=1)
                           Join Filter: (mi.movie_id = mi_idx.movie_id)
                           Rows Removed by Join Filter: 1145216310
                           Buffers: shared hit=6 read=170341
                           ->  Nested Loop  (cost=0.00..7265.37 rows=581 width=46) (actual time=7498.521..7978.198 rows=72258 loops=1)
                                 Join Filter: (it1.id = mi.info_type_id)
                                 Rows Removed by Join Filter: 789
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.021 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                                 ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=65681 width=50) (actual time=4796.353..7961.247 rows=73047 loops=1)
                                       Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                       Rows Removed by Filter: 14762673
                                       Buffers: shared hit=2 read=161890
                           ->  Materialize  (cost=0.00..475.59 rows=468 width=10) (actual time=0.000..0.682 rows=15849 loops=72258)
                                 Buffers: shared hit=3 read=8451
                                 ->  Nested Loop  (cost=0.00..475.52 rows=468 width=10) (actual time=0.047..600.113 rows=15849 loops=1)
                                       Join Filter: (it2.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 37013
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.023 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=0.024..588.533 rows=52862 loops=1)
                                             Filter: (info > '8.0'::text)
                                             Rows Removed by Filter: 1327173
                                             Buffers: shared hit=2 read=8451
                     ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1244570 width=8) (actual time=146.224..5444.251 rows=1244716 loops=732)
                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                           Rows Removed by Filter: 34999628
                           Buffers: shared hit=184690078 read=252650
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=623377 width=4) (actual time=241.509..561.372 rows=939732 loops=412)
                     Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 3148990
                     Buffers: shared hit=22426072 read=55612
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=784488 width=21) (actual time=0.739..379.747 rows=700580 loops=16)
               Filter: ((production_year >= 2008) AND (production_year <= 2014))
               Rows Removed by Filter: 1515088
               Buffers: shared hit=471497 read=35997
 Planning Time: 5624.724 ms
 Execution Time: 4499131.969 ms
(58 rows)


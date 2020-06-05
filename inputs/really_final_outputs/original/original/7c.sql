                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2549.51..2549.51 rows=1 width=64) (actual time=158314.150..158314.150 rows=1 loops=1)
   Buffers: shared hit=1136969 read=132181
   ->  Nested Loop  (cost=10.88..2549.51 rows=2 width=110) (actual time=193.661..156728.493 rows=68185 loops=1)
         Buffers: shared hit=1065579 read=131637
         ->  Hash Join  (cost=10.86..2549.44 rows=4 width=118) (actual time=160.373..60471.781 rows=109842 loops=1)
               Hash Cond: (ci.movie_id = ml.linked_movie_id)
               Buffers: shared hit=633668 read=123784
               ->  Nested Loop  (cost=0.04..2537.53 rows=475 width=114) (actual time=106.736..59730.555 rows=1618304 loops=1)
                     Join Filter: (n.id = ci.person_id)
                     Buffers: shared hit=633664 read=123621
                     ->  Nested Loop  (cost=0.03..2515.01 rows=14 width=122) (actual time=106.599..34346.526 rows=12595 loops=1)
                           Buffers: shared hit=558200 read=101529
                           ->  Nested Loop  (cost=0.01..2197.33 rows=958 width=103) (actual time=75.109..3865.119 rows=72980 loops=1)
                                 Buffers: shared hit=303276 read=64041
                                 ->  Nested Loop  (cost=0.00..1811.33 rows=745 width=99) (actual time=25.230..1795.744 rows=84183 loops=1)
                                       Join Filter: (it.id = pi.info_type_id)
                                       Buffers: shared hit=2 read=50817
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=25.209..25.227 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                                       ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=84183 width=103) (actual time=0.015..1723.060 rows=84183 loops=1)
                                             Filter: (note IS NOT NULL)
                                             Rows Removed by Filter: 2879481
                                             Buffers: shared hit=2 read=50816
                                 ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.52 rows=1 width=4) (actual time=0.021..0.023 rows=1 loops=84183)
                                       Index Cond: (person_id = pi.person_id)
                                       Filter: ((name IS NOT NULL) AND ((name ~~ '%a%'::text) OR (name ~~ 'A%'::text)))
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=303274 read=13224
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.33 rows=1 width=19) (actual time=0.416..0.416 rows=0 loops=72980)
                                 Index Cond: (id = an.person_id)
                                 Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'A%'::text))))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=254924 read=37488
                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..1.60 rows=31 width=8) (actual time=0.837..1.945 rows=128 loops=12595)
                           Index Cond: (person_id = an.person_id)
                           Buffers: shared hit=75464 read=22092
               ->  Hash  (cost=9.84..9.84 rows=6666 width=4) (actual time=53.496..53.496 rows=21505 loops=1)
                     Buckets: 32768 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 1013kB
                     Buffers: shared hit=1 read=163
                     ->  Hash Join  (cost=0.04..9.84 rows=6666 width=4) (actual time=0.182..42.888 rows=21505 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared hit=1 read=163
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.111..24.344 rows=29997 loops=1)
                                 Buffers: shared read=163
                           ->  Hash  (cost=0.04..0.04 rows=4 width=4) (actual time=0.030..0.030 rows=4 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.04 rows=4 width=4) (actual time=0.009..0.016 rows=4 loops=1)
                                       Filter: ((link)::text = ANY ('{references,"referenced in",features,"featured in"}'::text[]))
                                       Rows Removed by Filter: 14
                                       Buffers: shared hit=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=0.875..0.875 rows=1 loops=109842)
               Index Cond: (id = ci.movie_id)
               Filter: ((production_year >= 1980) AND (production_year <= 2010))
               Rows Removed by Filter: 0
               Buffers: shared hit=431911 read=7853
 Planning Time: 6467.211 ms
 Execution Time: 158314.642 ms
(60 rows)


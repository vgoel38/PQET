                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2542.16..2542.16 rows=1 width=64) (actual time=154794.114..154794.115 rows=1 loops=1)
   Buffers: shared hit=4492085 read=132286
   ->  Nested Loop  (cost=0.07..2542.16 rows=2 width=110) (actual time=294.331..153323.620 rows=68185 loops=1)
         Buffers: shared hit=4420695 read=131742
         ->  Nested Loop  (cost=0.05..2542.09 rows=4 width=118) (actual time=256.789..58760.359 rows=109842 loops=1)
               Join Filter: (ml.link_type_id = lt.id)
               Rows Removed by Join Filter: 173658
               Buffers: shared hit=3988786 read=123887
               ->  Nested Loop  (cost=0.05..2542.04 rows=17 width=122) (actual time=248.881..58536.301 rows=127027 loops=1)
                     Buffers: shared hit=3988786 read=123886
                     ->  Nested Loop  (cost=0.04..2537.53 rows=477 width=114) (actual time=208.448..52062.934 rows=1618304 loops=1)
                           Join Filter: (n.id = ci.person_id)
                           Buffers: shared hit=633645 read=123640
                           ->  Nested Loop  (cost=0.03..2515.01 rows=14 width=122) (actual time=168.377..31348.947 rows=12595 loops=1)
                                 Buffers: shared hit=558184 read=101545
                                 ->  Nested Loop  (cost=0.01..2197.33 rows=958 width=103) (actual time=115.185..3543.647 rows=72980 loops=1)
                                       Buffers: shared hit=303267 read=64050
                                       ->  Nested Loop  (cost=0.00..1811.33 rows=745 width=99) (actual time=29.310..1755.749 rows=84183 loops=1)
                                             Join Filter: (it.id = pi.info_type_id)
                                             Buffers: shared read=50819
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=9.193..9.208 rows=1 loops=1)
                                                   Filter: ((info)::text = 'mini biography'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                                             ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=84183 width=103) (actual time=20.110..1702.024 rows=84183 loops=1)
                                                   Filter: (note IS NOT NULL)
                                                   Rows Removed by Filter: 2879481
                                                   Buffers: shared read=50818
                                       ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.52 rows=1 width=4) (actual time=0.018..0.020 rows=1 loops=84183)
                                             Index Cond: (person_id = pi.person_id)
                                             Filter: ((name IS NOT NULL) AND ((name ~~ '%a%'::text) OR (name ~~ 'A%'::text)))
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=303267 read=13231
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..0.33 rows=1 width=19) (actual time=0.380..0.380 rows=0 loops=72980)
                                       Index Cond: (id = an.person_id)
                                       Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'A%'::text))))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=254917 read=37495
                           ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..1.60 rows=31 width=8) (actual time=0.612..1.572 rows=128 loops=12595)
                                 Index Cond: (person_id = an.person_id)
                                 Buffers: shared hit=75461 read=22095
                     ->  Index Scan using linked_movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=2 width=8) (actual time=0.003..0.003 rows=0 loops=1618304)
                           Index Cond: (linked_movie_id = ci.movie_id)
                           Buffers: shared hit=3355141 read=246
               ->  Materialize  (cost=0.00..0.04 rows=4 width=4) (actual time=0.000..0.000 rows=2 loops=127027)
                     Buffers: shared read=1
                     ->  Seq Scan on link_type lt  (cost=0.00..0.04 rows=4 width=4) (actual time=7.883..7.900 rows=4 loops=1)
                           Filter: ((link)::text = ANY ('{references,"referenced in",features,"featured in"}'::text[]))
                           Rows Removed by Filter: 14
                           Buffers: shared read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=0.860..0.860 rows=1 loops=109842)
               Index Cond: (id = ci.movie_id)
               Filter: ((production_year >= 1980) AND (production_year <= 2010))
               Rows Removed by Filter: 0
               Buffers: shared hit=431909 read=7855
 Planning Time: 5949.962 ms
 Execution Time: 154794.530 ms
(57 rows)


                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2048.59..2048.59 rows=1 width=64) (actual time=24338.790..24338.790 rows=1 loops=1)
   Buffers: shared hit=547806 read=51360
   ->  Nested Loop  (cost=0.06..2048.59 rows=1 width=32) (actual time=411.358..24338.686 rows=32 loops=1)
         Buffers: shared hit=547806 read=51360
         ->  Nested Loop  (cost=0.04..2048.57 rows=1 width=23) (actual time=372.589..22980.082 rows=151 loops=1)
               Join Filter: (ml.link_type_id = lt.id)
               Rows Removed by Join Filter: 359
               Buffers: shared hit=547281 read=51281
               ->  Nested Loop  (cost=0.04..2048.54 rows=1 width=27) (actual time=372.455..22977.495 rows=510 loops=1)
                     Join Filter: (ci.movie_id = ml.linked_movie_id)
                     Rows Removed by Join Filter: 100609428
                     Buffers: shared hit=546772 read=51280
                     ->  Nested Loop  (cost=0.04..2036.95 rows=1 width=19) (actual time=272.776..4474.501 rows=3354 loops=1)
                           Join Filter: (n.id = ci.person_id)
                           Buffers: shared hit=233 read=51117
                           ->  Nested Loop  (cost=0.03..2035.32 rows=1 width=27) (actual time=231.247..3801.316 rows=20 loops=1)
                                 Buffers: shared hit=131 read=51014
                                 ->  Nested Loop  (cost=0.01..2035.21 rows=1 width=23) (actual time=171.303..3502.916 rows=17 loops=1)
                                       Buffers: shared hit=100 read=50975
                                       ->  Nested Loop  (cost=0.00..2029.08 rows=1 width=4) (actual time=76.216..2727.640 rows=64 loops=1)
                                             Join Filter: (it.id = pi.info_type_id)
                                             Buffers: shared read=50819
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=27.511..27.529 rows=1 loops=1)
                                                   Filter: ((info)::text = 'mini biography'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                                             ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=48.696..2699.917 rows=64 loops=1)
                                                   Filter: (note = 'Volker Boehm'::text)
                                                   Rows Removed by Filter: 2963600
                                                   Buffers: shared read=50818
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..6.13 rows=1 width=19) (actual time=12.106..12.106 rows=0 loops=64)
                                             Index Cond: (id = pi.person_id)
                                             Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=100 read=156
                                 ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.10 rows=1 width=4) (actual time=15.406..17.545 rows=1 loops=17)
                                       Index Cond: (person_id = n.id)
                                       Filter: (name ~~ '%a%'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=31 read=39
                           ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..1.63 rows=31 width=8) (actual time=21.207..33.579 rows=168 loops=20)
                                 Index Cond: (person_id = an.person_id)
                                 Buffers: shared hit=102 read=103
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.008..2.111 rows=29997 loops=3354)
                           Buffers: shared hit=546539 read=163
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.004 rows=1 loops=510)
                     Filter: ((link)::text = 'features'::text)
                     Rows Removed by Filter: 14
                     Buffers: shared hit=509 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=21) (actual time=8.996..8.996 rows=0 loops=151)
               Index Cond: (id = ci.movie_id)
               Filter: ((production_year >= 1980) AND (production_year <= 1995))
               Rows Removed by Filter: 1
               Buffers: shared hit=525 read=79
 Planning Time: 4590.096 ms
 Execution Time: 24339.226 ms
(56 rows)


                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6220.79..6220.79 rows=1 width=64) (actual time=519119.924..519119.925 rows=1 loops=1)
   Buffers: shared hit=486597 read=73088
   ->  Nested Loop  (cost=0.09..6220.79 rows=1 width=32) (actual time=64259.856..519119.756 rows=32 loops=1)
         Buffers: shared hit=486597 read=73088
         ->  Nested Loop  (cost=0.08..6220.50 rows=1 width=36) (actual time=64235.351..519094.930 rows=32 loops=1)
               Join Filter: (an.person_id = n.id)
               Buffers: shared hit=486535 read=73086
               ->  Nested Loop  (cost=0.07..6220.48 rows=1 width=33) (actual time=64216.550..518918.168 rows=57 loops=1)
                     Join Filter: (pi.person_id = an.person_id)
                     Buffers: shared hit=486339 read=73054
                     ->  Nested Loop  (cost=0.06..6220.46 rows=1 width=29) (actual time=64182.025..518328.321 rows=32 loops=1)
                           Buffers: shared hit=486229 read=73014
                           ->  Nested Loop  (cost=0.04..6025.60 rows=9882 width=21) (actual time=113.788..350329.144 rows=105262 loops=1)
                                 Buffers: shared hit=85937 read=43155
                                 ->  Nested Loop  (cost=0.03..5310.98 rows=224 width=25) (actual time=77.919..79395.879 rows=1467 loops=1)
                                       Buffers: shared hit=15594 read=5323
                                       ->  Nested Loop  (cost=0.01..510.46 rows=1666 width=4) (actual time=27.142..117.384 rows=5186 loops=1)
                                             Buffers: shared hit=3 read=147
                                             ->  Index Scan using link_type_link_key on link_type lt  (cost=0.00..6.13 rows=1 width=4) (actual time=0.031..0.035 rows=1 loops=1)
                                                   Index Cond: ((link)::text = 'features'::text)
                                                   Buffers: shared hit=1 read=1
                                             ->  Index Scan using link_type_id_movie_link on movie_link ml  (cost=0.01..504.21 rows=1875 width=8) (actual time=27.085..109.638 rows=5186 loops=1)
                                                   Index Cond: (link_type_id = lt.id)
                                                   Buffers: shared hit=2 read=146
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..2.88 rows=1 width=21) (actual time=15.283..15.283 rows=0 loops=5186)
                                             Index Cond: (id = ml.linked_movie_id)
                                             Filter: ((production_year >= 1980) AND (production_year <= 1995))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=15591 read=5176
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..3.19 rows=23 width=8) (actual time=15.387..184.557 rows=72 loops=1467)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=70343 read=37832
                           ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.02 rows=1 width=8) (actual time=1.593..1.593 rows=0 loops=105262)
                                 Index Cond: (person_id = ci.person_id)
                                 Filter: (note = 'Volker Boehm'::text)
                                 Rows Removed by Filter: 15
                                 Buffers: shared hit=400292 read=29859
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=1 width=4) (actual time=16.572..18.424 rows=2 loops=32)
                           Index Cond: (person_id = ci.person_id)
                           Filter: (name ~~ '%a%'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=110 read=40
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=3.096..3.096 rows=1 loops=57)
                     Index Cond: (id = ci.person_id)
                     Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=196 read=32
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.15 rows=1 width=4) (actual time=0.772..0.772 rows=1 loops=32)
               Index Cond: (id = pi.info_type_id)
               Filter: ((info)::text = 'mini biography'::text)
               Buffers: shared hit=62 read=2
 Planning Time: 5401.919 ms
 Execution Time: 519139.105 ms
(53 rows)


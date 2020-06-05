                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=26216.23..26216.23 rows=1 width=64) (actual time=1562548.431..1562548.432 rows=1 loops=1)
   Buffers: shared hit=6399503 read=245549
   ->  Nested Loop  (cost=0.09..26216.23 rows=2 width=110) (actual time=1171.577..1556984.846 rows=68185 loops=1)
         Join Filter: (n.id = an.person_id)
         Buffers: shared hit=6328113 read=245005
         ->  Nested Loop  (cost=0.08..26216.17 rows=4 width=122) (actual time=1135.918..1540283.382 rows=40157 loops=1)
               Join Filter: (pi.person_id = n.id)
               Buffers: shared hit=6159168 read=242768
               ->  Nested Loop  (cost=0.06..26211.72 rows=222 width=103) (actual time=334.445..1368556.674 rows=204549 loops=1)
                     Join Filter: (pi.info_type_id = it.id)
                     Buffers: shared hit=5364116 read=217329
                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=13.467..13.469 rows=1 loops=1)
                           Index Cond: ((info)::text = 'mini biography'::text)
                           Buffers: shared read=2
                     ->  Nested Loop  (cost=0.06..26201.91 rows=25072 width=107) (actual time=320.969..1368359.327 rows=204549 loops=1)
                           Buffers: shared hit=5364116 read=217327
                           ->  Nested Loop  (cost=0.04..22708.03 rows=180748 width=4) (actual time=104.605..1133542.985 rows=1097209 loops=1)
                                 Buffers: shared hit=1038330 read=163233
                                 ->  Nested Loop  (cost=0.03..19771.86 rows=4101 width=8) (actual time=72.553..180554.697 rows=14194 loops=1)
                                       Buffers: shared hit=72847 read=13841
                                       ->  Nested Loop  (cost=0.01..564.01 rows=6666 width=4) (actual time=20.011..116.155 rows=21505 loops=1)
                                             Buffers: shared hit=390 read=221
                                             ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=4 width=4) (actual time=0.036..0.073 rows=4 loops=1)
                                                   Filter: ((link)::text = ANY ('{references,"referenced in",features,"featured in"}'::text[]))
                                                   Rows Removed by Filter: 14
                                                   Buffers: shared hit=2
                                             ->  Index Scan using link_type_id_movie_link on movie_link ml  (cost=0.01..138.58 rows=1875 width=8) (actual time=5.007..23.807 rows=5376 loops=4)
                                                   Index Cond: (link_type_id = lt.id)
                                                   Buffers: shared hit=388 read=221
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..2.88 rows=1 width=4) (actual time=8.387..8.387 rows=1 loops=21505)
                                             Index Cond: (id = ml.linked_movie_id)
                                             Filter: ((production_year >= 1980) AND (production_year <= 2010))
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=72457 read=13620
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.71 rows=23 width=8) (actual time=8.608..67.075 rows=77 loops=14194)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=965483 read=149392
                           ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.02 rows=1 width=103) (actual time=0.206..0.212 rows=0 loops=1097209)
                                 Index Cond: (person_id = ci.person_id)
                                 Filter: (note IS NOT NULL)
                                 Rows Removed by Filter: 13
                                 Buffers: shared hit=4325786 read=54094
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.838..0.838 rows=0 loops=204549)
                     Index Cond: (id = ci.person_id)
                     Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'A%'::text))))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=795052 read=25439
         ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=1 width=4) (actual time=0.375..0.413 rows=2 loops=40157)
               Index Cond: (person_id = ci.person_id)
               Filter: ((name IS NOT NULL) AND ((name ~~ '%a%'::text) OR (name ~~ 'A%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=168945 read=2237
 Planning Time: 5877.532 ms
 Execution Time: 1562575.418 ms
(54 rows)


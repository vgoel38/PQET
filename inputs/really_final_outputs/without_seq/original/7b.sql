                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=5974.95..5974.95 rows=1 width=64) (actual time=295871.968..295871.968 rows=1 loops=1)
   Buffers: shared hit=159552 read=34204
   ->  Nested Loop  (cost=0.09..5974.95 rows=1 width=32) (actual time=19576.835..295871.873 rows=16 loops=1)
         Buffers: shared hit=159552 read=34204
         ->  Nested Loop  (cost=0.08..5974.66 rows=1 width=36) (actual time=19552.328..295847.215 rows=16 loops=1)
               Join Filter: (an.person_id = n.id)
               Buffers: shared hit=159522 read=34202
               ->  Nested Loop  (cost=0.07..5974.64 rows=1 width=33) (actual time=19533.510..295770.812 rows=27 loops=1)
                     Join Filter: (pi.person_id = an.person_id)
                     Buffers: shared hit=159428 read=34188
                     ->  Nested Loop  (cost=0.06..5974.63 rows=1 width=29) (actual time=19498.966..295512.892 rows=14 loops=1)
                           Buffers: shared hit=159380 read=34169
                           ->  Nested Loop  (cost=0.04..5931.05 rows=2210 width=21) (actual time=111.565..178506.757 rows=33415 loops=1)
                                 Buffers: shared hit=36781 read=18148
                                 ->  Nested Loop  (cost=0.03..5310.98 rows=50 width=25) (actual time=75.686..72212.405 rows=435 loops=1)
                                       Buffers: shared hit=15596 read=5323
                                       ->  Nested Loop  (cost=0.01..510.46 rows=1666 width=4) (actual time=24.925..115.158 rows=5186 loops=1)
                                             Buffers: shared hit=3 read=147
                                             ->  Index Scan using link_type_link_key on link_type lt  (cost=0.00..6.13 rows=1 width=4) (actual time=0.011..0.015 rows=1 loops=1)
                                                   Index Cond: ((link)::text = 'features'::text)
                                                   Buffers: shared hit=1 read=1
                                             ->  Index Scan using link_type_id_movie_link on movie_link ml  (cost=0.01..504.21 rows=1875 width=8) (actual time=24.903..107.310 rows=5186 loops=1)
                                                   Index Cond: (link_type_id = lt.id)
                                                   Buffers: shared hit=2 read=146
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..2.88 rows=1 width=21) (actual time=13.898..13.898 rows=0 loops=5186)
                                             Index Cond: (id = ml.linked_movie_id)
                                             Filter: ((production_year >= 1980) AND (production_year <= 1984))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=15593 read=5176
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..12.40 rows=23 width=8) (actual time=17.597..244.219 rows=77 loops=435)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=21185 read=12825
                           ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.02 rows=1 width=8) (actual time=3.498..3.498 rows=0 loops=33415)
                                 Index Cond: (person_id = ci.person_id)
                                 Filter: (note = 'Volker Boehm'::text)
                                 Rows Removed by Filter: 15
                                 Buffers: shared hit=122599 read=16021
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.01 rows=1 width=4) (actual time=14.882..18.413 rows=2 loops=14)
                           Index Cond: (person_id = ci.person_id)
                           Filter: (name ~~ '%a%'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=48 read=19
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=2.824..2.824 rows=1 loops=27)
                     Index Cond: (id = ci.person_id)
                     Filter: (((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=94 read=14
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.15 rows=1 width=4) (actual time=1.537..1.537 rows=1 loops=16)
               Index Cond: (id = pi.info_type_id)
               Filter: ((info)::text = 'mini biography'::text)
               Buffers: shared hit=30 read=2
 Planning Time: 5322.887 ms
 Execution Time: 295872.446 ms
(53 rows)


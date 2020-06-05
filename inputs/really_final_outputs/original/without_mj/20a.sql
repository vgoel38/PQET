                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1029.74..1029.74 rows=1 width=32) (actual time=1051971.494..1051971.494 rows=1 loops=1)
   Buffers: shared hit=1692344 read=195414
   ->  Nested Loop  (cost=0.10..1029.74 rows=1 width=17) (actual time=33158.625..1051971.341 rows=33 loops=1)
         Buffers: shared hit=1692344 read=195414
         ->  Nested Loop  (cost=0.08..1029.72 rows=1 width=21) (actual time=33093.795..1051860.297 rows=33 loops=1)
               Buffers: shared hit=1692227 read=195399
               ->  Nested Loop  (cost=0.07..1029.61 rows=6 width=25) (actual time=1858.008..835679.027 rows=532809 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=714009 read=151433
                     ->  Nested Loop  (cost=0.05..1029.35 rows=1 width=29) (actual time=1783.211..80363.899 rows=6016 loops=1)
                           Join Filter: (t.kind_id = kt.id)
                           Rows Removed by Join Filter: 1347
                           Buffers: shared hit=297958 read=23659
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=19.576..19.580 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.05..1029.31 rows=5 width=33) (actual time=215.104..80333.350 rows=7363 loops=1)
                                 Buffers: shared hit=297958 read=23658
                                 ->  Nested Loop  (cost=0.04..1029.10 rows=5 width=8) (actual time=178.920..21377.867 rows=8765 loops=1)
                                       Join Filter: (cc.status_id = cct.id)
                                       Rows Removed by Join Filter: 8765
                                       Buffers: shared hit=270574 read=15962
                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.133..0.137 rows=2 loops=1)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Rows Removed by Filter: 2
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..1029.06 rows=20 width=12) (actual time=89.528..10681.927 rows=8765 loops=2)
                                             Join Filter: (cc.subject_id = cct.id)
                                             Rows Removed by Join Filter: 4045
                                             Buffers: shared hit=270574 read=15961
                                             ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.011 rows=1 loops=2)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Nested Loop  (cost=0.04..1029.02 rows=82 width=16) (actual time=89.508..10669.661 rows=12810 loops=2)
                                                   Buffers: shared hit=270572 read=15961
                                                   ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=4) (actual time=33.218..8863.027 rows=35548 loops=2)
                                                         Buffers: shared hit=32376 read=14911
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=13.311..128.459 rows=8 loops=2)
                                                               Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                               Buffers: shared hit=47 read=20
                                                         ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=15.678..1088.653 rows=4444 loops=16)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=32329 read=14891
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.035..0.049 rows=0 loops=71096)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=238196 read=1050
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=6.723..6.723 rows=1 loops=8765)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 1950)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=27384 read=7696
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=10.455..125.401 rows=89 loops=6016)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=416051 read=127774
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.403..0.403 rows=0 loops=532809)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=978218 read=43966
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=3.361..3.361 rows=1 loops=33)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=117 read=15
 Planning Time: 5188.035 ms
 Execution Time: 1051971.948 ms
(66 rows)


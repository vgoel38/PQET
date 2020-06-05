                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=909.51..909.51 rows=1 width=128) (actual time=12392.230..12392.230 rows=1 loops=1)
   Buffers: shared hit=412553 read=5089
   ->  Nested Loop  (cost=0.11..909.51 rows=1 width=80) (actual time=2209.165..12392.013 rows=84 loops=1)
         Buffers: shared hit=412553 read=5089
         ->  Nested Loop  (cost=0.10..909.32 rows=1 width=69) (actual time=2118.138..12172.101 rows=84 loops=1)
               Buffers: shared hit=412236 read=5070
               ->  Nested Loop  (cost=0.08..909.31 rows=1 width=73) (actual time=2029.748..11802.733 rows=2686 loops=1)
                     Join Filter: (mi_idx.info_type_id = it2.id)
                     Rows Removed by Join Filter: 5372
                     Buffers: shared hit=401769 read=4772
                     ->  Nested Loop  (cost=0.08..909.26 rows=1 width=77) (actual time=1813.772..11683.716 rows=8058 loops=1)
                           Join Filter: (mi.info_type_id = it1.id)
                           Buffers: shared hit=393711 read=4772
                           ->  Nested Loop  (cost=0.08..909.21 rows=1 width=81) (actual time=1806.366..11651.289 rows=8058 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=385654 read=4771
                                 ->  Nested Loop  (cost=0.07..909.06 rows=1 width=55) (actual time=1628.707..10708.165 rows=4773 loops=1)
                                       Join Filter: (t.id = ci.movie_id)
                                       Buffers: shared hit=242845 read=4705
                                       ->  Nested Loop  (cost=0.05..908.79 rows=1 width=47) (actual time=1168.054..8507.596 rows=2682 loops=1)
                                             Join Filter: (t.id = mk.movie_id)
                                             Buffers: shared hit=2024 read=4389
                                             ->  Nested Loop  (cost=0.04..908.69 rows=1 width=39) (actual time=1127.689..8423.704 rows=21 loops=1)
                                                   Buffers: shared hit=1931 read=4377
                                                   ->  Nested Loop  (cost=0.03..908.58 rows=1 width=18) (actual time=128.837..5488.786 rows=412 loops=1)
                                                         Buffers: shared hit=514 read=4143
                                                         ->  Nested Loop  (cost=0.01..905.04 rows=1 width=4) (actual time=77.070..2686.943 rows=135 loops=1)
                                                               Buffers: shared hit=183 read=3924
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=18.863..193.482 rows=10 loops=1)
                                                                     Filter: (name ~~ 'Lionsgate%'::text)
                                                                     Rows Removed by Filter: 234987
                                                                     Buffers: shared read=2994
                                                               ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..25.89 rows=1 width=8) (actual time=71.422..249.311 rows=14 loops=10)
                                                                     Index Cond: (company_id = cn.id)
                                                                     Filter: (note ~~ '%(Blu-ray)%'::text)
                                                                     Rows Removed by Filter: 168
                                                                     Buffers: shared hit=183 read=930
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..3.55 rows=3 width=14) (actual time=20.399..20.744 rows=3 loops=135)
                                                               Index Cond: (movie_id = mc.movie_id)
                                                               Buffers: shared hit=331 read=219
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=7.120..7.120 rows=0 loops=412)
                                                         Index Cond: (id = mi_idx.movie_id)
                                                         Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=1417 read=234
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=3.400..3.932 rows=128 loops=21)
                                                   Index Cond: (movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=93 read=12
                                       ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=0.581..0.819 rows=2 loops=2682)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                             Rows Removed by Filter: 86
                                             Buffers: shared hit=240821 read=316
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=0.196..0.197 rows=2 loops=4773)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                       Rows Removed by Filter: 275
                                       Buffers: shared hit=142809 read=66
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=8058)
                                 Filter: ((info)::text = 'genres'::text)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=8057 read=1
                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=8058)
                           Filter: ((info)::text = 'votes'::text)
                           Rows Removed by Filter: 108
                           Buffers: shared hit=8058
               ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.137..0.137 rows=0 loops=2686)
                     Index Cond: (id = mk.keyword_id)
                     Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=10467 read=298
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.616..2.616 rows=1 loops=84)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=317 read=19
 Planning Time: 12111.416 ms
 Execution Time: 12392.834 ms
(77 rows)


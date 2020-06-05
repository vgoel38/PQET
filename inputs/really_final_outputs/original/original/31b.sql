                                                                                                     QUERY PLAN                                                                                                     
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=909.51..909.51 rows=1 width=128) (actual time=12223.798..12223.799 rows=1 loops=1)
   Buffers: shared hit=412570 read=5072
   ->  Nested Loop  (cost=0.11..909.51 rows=1 width=80) (actual time=2107.784..12223.588 rows=84 loops=1)
         Buffers: shared hit=412570 read=5072
         ->  Nested Loop  (cost=0.10..909.32 rows=1 width=69) (actual time=2075.454..12058.232 rows=84 loops=1)
               Buffers: shared hit=412252 read=5054
               ->  Nested Loop  (cost=0.08..909.31 rows=1 width=73) (actual time=1980.353..11673.516 rows=2686 loops=1)
                     Join Filter: (mi_idx.info_type_id = it2.id)
                     Rows Removed by Join Filter: 5372
                     Buffers: shared hit=401780 read=4761
                     ->  Nested Loop  (cost=0.08..909.26 rows=1 width=77) (actual time=1754.958..11549.421 rows=8058 loops=1)
                           Join Filter: (mi.info_type_id = it1.id)
                           Buffers: shared hit=393722 read=4761
                           ->  Nested Loop  (cost=0.08..909.21 rows=1 width=81) (actual time=1754.926..11523.360 rows=8058 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=385664 read=4761
                                 ->  Nested Loop  (cost=0.07..909.06 rows=1 width=55) (actual time=1593.939..10536.910 rows=4773 loops=1)
                                       Join Filter: (t.id = ci.movie_id)
                                       Buffers: shared hit=242854 read=4696
                                       ->  Nested Loop  (cost=0.05..908.79 rows=1 width=47) (actual time=1133.337..8289.719 rows=2682 loops=1)
                                             Join Filter: (t.id = mk.movie_id)
                                             Buffers: shared hit=2031 read=4382
                                             ->  Nested Loop  (cost=0.04..908.69 rows=1 width=39) (actual time=1084.602..8178.792 rows=21 loops=1)
                                                   Buffers: shared hit=1937 read=4371
                                                   ->  Nested Loop  (cost=0.03..908.58 rows=1 width=18) (actual time=110.694..5308.204 rows=412 loops=1)
                                                         Buffers: shared hit=519 read=4138
                                                         ->  Nested Loop  (cost=0.01..905.04 rows=1 width=4) (actual time=75.618..2865.814 rows=135 loops=1)
                                                               Buffers: shared hit=186 read=3921
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=30 width=4) (actual time=17.379..193.110 rows=10 loops=1)
                                                                     Filter: (name ~~ 'Lionsgate%'::text)
                                                                     Rows Removed by Filter: 234987
                                                                     Buffers: shared hit=2 read=2992
                                                               ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..25.89 rows=1 width=8) (actual time=83.793..267.240 rows=14 loops=10)
                                                                     Index Cond: (company_id = cn.id)
                                                                     Filter: (note ~~ '%(Blu-ray)%'::text)
                                                                     Rows Removed by Filter: 168
                                                                     Buffers: shared hit=184 read=929
                                                         ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..3.55 rows=3 width=14) (actual time=17.735..18.080 rows=3 loops=135)
                                                               Index Cond: (movie_id = mc.movie_id)
                                                               Buffers: shared hit=333 read=217
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=6.963..6.963 rows=0 loops=412)
                                                         Index Cond: (id = mi_idx.movie_id)
                                                         Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=1418 read=233
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=4.689..5.220 rows=128 loops=21)
                                                   Index Cond: (movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=94 read=11
                                       ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=0.595..0.837 rows=2 loops=2682)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                             Rows Removed by Filter: 86
                                             Buffers: shared hit=240823 read=314
                                 ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=0.205..0.206 rows=2 loops=4773)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                       Rows Removed by Filter: 275
                                       Buffers: shared hit=142810 read=65
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=8058)
                                 Filter: ((info)::text = 'genres'::text)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=8058
                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=8058)
                           Filter: ((info)::text = 'votes'::text)
                           Rows Removed by Filter: 108
                           Buffers: shared hit=8058
               ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.143..0.143 rows=0 loops=2686)
                     Index Cond: (id = mk.keyword_id)
                     Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=10472 read=293
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=1.967..1.967 rows=1 loops=84)
               Index Cond: (id = ci.person_id)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=318 read=18
 Planning Time: 15153.376 ms
 Execution Time: 12224.410 ms
(77 rows)


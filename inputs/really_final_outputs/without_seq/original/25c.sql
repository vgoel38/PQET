                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=906.72..906.72 rows=1 width=128) (actual time=1499769.873..1499769.874 rows=1 loops=1)
   Buffers: shared hit=6388926 read=385855
   ->  Nested Loop  (cost=0.11..906.72 rows=1 width=80) (actual time=1053.028..1499657.511 rows=26153 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Buffers: shared hit=6388926 read=385855
         ->  Nested Loop  (cost=0.09..906.68 rows=1 width=79) (actual time=1006.998..1457032.937 rows=26153 loops=1)
               Buffers: shared hit=6290903 read=379236
               ->  Nested Loop  (cost=0.08..906.49 rows=1 width=68) (actual time=991.311..1369251.255 rows=42900 loops=1)
                     Buffers: shared hit=6131619 read=366709
                     ->  Nested Loop  (cost=0.08..906.49 rows=1 width=72) (actual time=991.270..1368842.331 rows=46694 loops=1)
                           Join Filter: (mi.movie_id = ci.movie_id)
                           Buffers: shared hit=6038231 read=366709
                           ->  Nested Loop  (cost=0.06..906.22 rows=1 width=64) (actual time=116.272..274628.227 rows=67732 loops=1)
                                 Join Filter: (mi_idx.movie_id = mi.movie_id)
                                 Buffers: shared hit=1645329 read=166811
                                 ->  Nested Loop  (cost=0.04..905.29 rows=6 width=14) (actual time=46.679..36667.038 rows=63701 loops=1)
                                       Buffers: shared hit=701677 read=31124
                                       ->  Nested Loop  (cost=0.04..901.96 rows=710 width=18) (actual time=46.646..35521.948 rows=191689 loops=1)
                                             Buffers: shared hit=318299 read=31124
                                             ->  Nested Loop  (cost=0.03..896.69 rows=236 width=4) (actual time=46.153..18909.055 rows=76714 loops=1)
                                                   Buffers: shared hit=32400 read=21098
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=22.903..234.408 rows=7 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                         Buffers: shared hit=14 read=17
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.96 rows=39 width=8) (actual time=15.662..2658.576 rows=10959 loops=7)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=32386 read=21081
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.208..0.213 rows=2 loops=76714)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=285899 read=10026
                                       ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=191689)
                                             Index Cond: (id = mi_idx.info_type_id)
                                             Filter: ((info)::text = 'votes'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=383378
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=3.648..3.733 rows=1 loops=63701)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 58
                                       Buffers: shared hit=943652 read=135687
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=8) (actual time=14.060..16.152 rows=1 loops=67732)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 65
                                 Buffers: shared hit=4392902 read=199898
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=46694)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=93388
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=2.044..2.044 rows=1 loops=42900)
                     Index Cond: (id = ci.person_id)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=159284 read=12527
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.625..1.625 rows=1 loops=26153)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=98023 read=6619
 Planning Time: 9877.368 ms
 Execution Time: 1499790.724 ms
(60 rows)


 Aggregate  (cost=9630.04..9630.04 rows=1 width=64) (actual time=47255.369..47255.370 rows=1 loops=1)
   Buffers: shared hit=925421 read=165858
   ->  Nested Loop  (cost=0.07..9630.04 rows=5 width=27) (actual time=13621.446..47254.647 rows=628 loops=1)
         Buffers: shared hit=925421 read=165858
         ->  Nested Loop  (cost=0.05..9629.97 rows=5 width=31) (actual time=13582.052..46851.327 rows=628 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=923136 read=165627
               ->  Nested Loop  (cost=0.04..9629.91 rows=1 width=43) (actual time=13543.215..46745.908 rows=7 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 5
                     Buffers: shared hit=923111 read=165616
                     ->  Nested Loop  (cost=0.04..9629.88 rows=1 width=47) (actual time=13523.992..46726.623 rows=7 loops=1)
                           Buffers: shared hit=923105 read=165615
                           ->  Nested Loop  (cost=0.03..9629.86 rows=1 width=51) (actual time=13463.260..46515.913 rows=7 loops=1)
                                 Buffers: shared hit=923089 read=165603
                                 ->  Nested Loop  (cost=0.01..9629.80 rows=1 width=39) (actual time=13413.660..46386.121 rows=6 loops=1)
                                       Join Filter: (cc.status_id = cct1.id)
                                       Rows Removed by Join Filter: 32
                                       Buffers: shared hit=923074 read=165593
                                       ->  Nested Loop  (cost=0.01..9629.77 rows=1 width=43) (actual time=8908.557..46365.817 rows=38 loops=1)
                                             Join Filter: (t.id = cc.movie_id)
                                             Rows Removed by Join Filter: 169938150
                                             Buffers: shared hit=923037 read=165592
                                             ->  Nested Loop  (cost=0.01..9577.67 rows=1 width=35) (actual time=8647.694..16387.663 rows=1258 loops=1)
                                                   Join Filter: (t.kind_id = kt.id)
                                                   Rows Removed by Join Filter: 5870
                                                   Buffers: shared hit=4170 read=164861
                                                   ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=4 width=14) (actual time=11.837..11.847 rows=4 loops=1)
                                                         Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Materialize  (cost=0.01..9577.63 rows=2 width=29) (actual time=393.832..4093.389 rows=1782 loops=4)
                                                         Buffers: shared hit=4170 read=164860
                                                         ->  Nested Loop  (cost=0.01..9577.63 rows=2 width=29) (actual time=1575.313..16369.089 rows=1782 loops=1)
                                                               Buffers: shared hit=4170 read=164860
                                                               ->  Nested Loop  (cost=0.00..9559.46 rows=3 width=4) (actual time=1522.092..9154.509 rows=1783 loops=1)
                                                                     Join Filter: (it1.id = mi.info_type_id)
                                                                     Buffers: shared read=161893
                                                                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=1.571..1.587 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'release dates'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared read=1
                                                                     ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=328 width=8) (actual time=1520.514..9151.559 rows=1783 loops=1)
                                                                           Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                                           Rows Removed by Filter: 14833937
                                                                           Buffers: shared read=161892
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..6.06 rows=1 width=25) (actual time=4.043..4.043 rows=1 loops=1783)
                                                                     Index Cond: (id = mi.movie_id)
                                                                     Filter: (production_year > 1990)
                                                                     Rows Removed by Filter: 0
                                                                     Buffers: shared hit=4170 read=2967
                                             ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=0.022..9.501 rows=135086 loops=1258)
                                                   Buffers: shared hit=918867 read=731
                                       ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.531..0.531 rows=1 loops=38)
                                             Filter: ((kind)::text = 'completeverified'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=37 read=1
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=17.808..21.627 rows=1 loops=6)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=15 read=10
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=30.095..30.095 rows=1 loops=7)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Buffers: shared hit=16 read=12
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=2.747..2.747 rows=2 loops=7)
                           Buffers: shared hit=6 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=14.925..14.998 rows=90 loops=7)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=25 read=11
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.641..0.641 rows=1 loops=628)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=2285 read=231
 Planning Time: 6681.306 ms
 Execution Time: 47270.201 ms

                                                                                                                 QUERY PLAN                                                                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.65..516.65 rows=1 width=96) (actual time=92490.939..92490.939 rows=1 loops=1)
   Buffers: shared hit=622834 read=38030
   ->  Nested Loop  (cost=0.11..516.65 rows=1 width=42) (actual time=2880.602..92469.917 rows=8373 loops=1)
         Join Filter: (it1.id = mi.info_type_id)
         Rows Removed by Join Filter: 1116
         Buffers: shared hit=622834 read=38030
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.022..0.049 rows=1 loops=1)
               Filter: ((info)::text = 'countries'::text)
               Rows Removed by Filter: 112
               Buffers: shared hit=1
         ->  Nested Loop  (cost=0.11..516.60 rows=1 width=46) (actual time=2880.573..92464.133 rows=9489 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=622833 read=38030
               ->  Nested Loop  (cost=0.09..516.44 rows=1 width=62) (actual time=533.111..58335.096 rows=8156 loops=1)
                     Join Filter: (it2.id = mi_idx.info_type_id)
                     Rows Removed by Join Filter: 16118
                     Buffers: shared hit=413033 read=31144
                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.042..0.048 rows=1 loops=1)
                           Filter: ((info)::text = 'rating'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.09..516.39 rows=1 width=66) (actual time=533.055..58323.917 rows=24274 loops=1)
                           Join Filter: (t.id = mi_idx.movie_id)
                           Buffers: shared hit=413032 read=31144
                           ->  Nested Loop  (cost=0.08..516.37 rows=1 width=52) (actual time=506.640..52473.586 rows=8286 loops=1)
                                 Join Filter: (kt.id = t.kind_id)
                                 Rows Removed by Join Filter: 859
                                 Buffers: shared hit=380096 read=30484
                                 ->  Nested Loop  (cost=0.08..516.34 rows=1 width=56) (actual time=506.604..52431.310 rows=8621 loops=1)
                                       Buffers: shared hit=371475 read=30484
                                       ->  Nested Loop  (cost=0.07..516.30 rows=1 width=31) (actual time=171.074..34316.958 rows=22725 loops=1)
                                             Join Filter: (ct.id = mc.company_type_id)
                                             Buffers: shared hit=283600 read=27414
                                             ->  Nested Loop  (cost=0.07..516.26 rows=1 width=35) (actual time=171.056..34217.492 rows=22725 loops=1)
                                                   Buffers: shared hit=260875 read=27414
                                                   ->  Nested Loop  (cost=0.05..516.17 rows=1 width=20) (actual time=127.137..29110.042 rows=24082 loops=1)
                                                         Buffers: shared hit=165407 read=26378
                                                         ->  Nested Loop  (cost=0.04..516.11 rows=2 width=8) (actual time=78.150..10762.212 rows=6704 loops=1)
                                                               Join Filter: (cct2.id = cc.status_id)
                                                               Rows Removed by Join Filter: 7104
                                                               Buffers: shared hit=140548 read=17344
                                                               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.013 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'complete'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                               ->  Nested Loop  (cost=0.04..516.07 rows=10 width=12) (actual time=78.136..10753.759 rows=13808 loops=1)
                                                                     Join Filter: (cct1.id = cc.subject_id)
                                                                     Rows Removed by Join Filter: 6216
                                                                     Buffers: shared hit=140547 read=17344
                                                                     ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.008 rows=1 loops=1)
                                                                           Filter: ((kind)::text = 'cast'::text)
                                                                           Rows Removed by Filter: 3
                                                                           Buffers: shared hit=1
                                                                     ->  Nested Loop  (cost=0.04..516.03 rows=41 width=16) (actual time=78.126..10739.726 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=48.002..9429.692 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=33.051..107.227 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=13.744..3099.701 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.027..0.034 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                         ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=2.395..2.733 rows=4 loops=6704)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                               Rows Removed by Filter: 8
                                                               Buffers: shared hit=24859 read=9034
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.210..0.210 rows=1 loops=24082)
                                                         Index Cond: (id = mc.company_id)
                                                         Filter: ((country_code)::text <> '[us]'::text)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=95468 read=1036
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=22725)
                                                   Buffers: shared hit=22725
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.796..0.796 rows=0 loops=22725)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=87875 read=3070
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.002 rows=1 loops=8621)
                                       Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=8621
                           ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.698..0.703 rows=3 loops=8286)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info < '8.5'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=32936 read=660
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.700..4.183 rows=1 loops=8156)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 206
                     Buffers: shared hit=209800 read=6886
 Planning Time: 14920.127 ms
 Execution Time: 92491.830 ms
(99 rows)


                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=46450.51..46450.51 rows=1 width=32) (actual time=42684.983..42684.984 rows=1 loops=1)
   Buffers: shared hit=2483995 read=60470
   ->  Nested Loop  (cost=11811.00..46448.26 rows=28943 width=17) (actual time=1651.898..42681.782 rows=669 loops=1)
         Buffers: shared hit=2483995 read=60470
         ->  Nested Loop  (cost=11810.99..46314.59 rows=28943 width=21) (actual time=1631.915..42651.092 rows=669 loops=1)
               Buffers: shared hit=2483326 read=60469
               ->  Merge Join  (cost=11810.98..35170.14 rows=29863 width=25) (actual time=1595.228..13001.100 rows=767 loops=1)
                     Merge Cond: (mc.movie_id = t.id)
                     Buffers: shared hit=2481139 read=54104
                     ->  Sort  (cost=11810.95..11814.31 rows=43168 width=4) (actual time=890.794..891.612 rows=798 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 62kB
                           Buffers: shared hit=6 read=11264
                           ->  Nested Loop  (cost=0.02..11707.74 rows=43168 width=4) (actual time=82.875..885.232 rows=798 loops=1)
                                 Buffers: shared hit=2 read=11264
                                 ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.041..0.042 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'production companies'::text)
                                       Buffers: shared hit=1 read=1
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..11695.65 rows=86337 width=8) (actual time=82.826..884.941 rows=798 loops=1)
                                       Index Cond: (company_type_id = ct.id)
                                       Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                       Rows Removed by Filter: 1334085
                                       Buffers: shared hit=1 read=11263
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.027..11749.226 rows=1744819 loops=1)
                           Filter: (production_year > 1990)
                           Rows Removed by Filter: 773754
                           Buffers: shared hit=2481133 read=42840
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=8) (actual time=35.713..38.652 rows=1 loops=767)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 10
                     Buffers: shared hit=2187 read=6365
         ->  Index Only Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=669)
               Index Cond: (id = mi.info_type_id)
               Heap Fetches: 0
               Buffers: shared hit=669 read=1
 Planning Time: 2007.256 ms
 Execution Time: 42707.181 ms
(38 rows)


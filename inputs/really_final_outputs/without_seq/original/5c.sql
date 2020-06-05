                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=46325.38..46325.38 rows=1 width=32) (actual time=41605.108..41605.108 rows=1 loops=1)
   Buffers: shared hit=2483330 read=60470
   ->  Hash Join  (cost=11817.15..46323.13 rows=28943 width=17) (actual time=1668.693..41602.048 rows=669 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=2483330 read=60470
         ->  Nested Loop  (cost=11810.99..46314.59 rows=28943 width=21) (actual time=1638.100..41568.101 rows=669 loops=1)
               Buffers: shared hit=2483326 read=60469
               ->  Merge Join  (cost=11810.98..35170.14 rows=29863 width=25) (actual time=1601.279..12866.775 rows=767 loops=1)
                     Merge Cond: (mc.movie_id = t.id)
                     Buffers: shared hit=2481139 read=54104
                     ->  Sort  (cost=11810.95..11814.31 rows=43168 width=4) (actual time=916.296..917.128 rows=798 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 62kB
                           Buffers: shared hit=6 read=11264
                           ->  Nested Loop  (cost=0.02..11707.74 rows=43168 width=4) (actual time=79.141..904.510 rows=798 loops=1)
                                 Buffers: shared hit=2 read=11264
                                 ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.045..0.046 rows=1 loops=1)
                                       Index Cond: ((kind)::text = 'production companies'::text)
                                       Buffers: shared hit=1 read=1
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..11695.65 rows=86337 width=8) (actual time=79.088..904.227 rows=798 loops=1)
                                       Index Cond: (company_type_id = ct.id)
                                       Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                       Rows Removed by Filter: 1334085
                                       Buffers: shared hit=1 read=11263
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.028..11590.013 rows=1744819 loops=1)
                           Filter: (production_year > 1990)
                           Rows Removed by Filter: 773754
                           Buffers: shared hit=2481133 read=42840
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=8) (actual time=34.612..37.415 rows=1 loops=767)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 10
                     Buffers: shared hit=2187 read=6365
         ->  Hash  (cost=6.14..6.14 rows=113 width=4) (actual time=30.545..30.545 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared hit=1 read=1
               ->  Index Only Scan using info_type_pkey on info_type it  (cost=0.00..6.14 rows=113 width=4) (actual time=30.393..30.440 rows=113 loops=1)
                     Heap Fetches: 0
                     Buffers: shared hit=1 read=1
 Planning Time: 1875.444 ms
 Execution Time: 41605.694 ms
(41 rows)


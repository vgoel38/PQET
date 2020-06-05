 Aggregate  (cost=45914.99..45914.99 rows=1 width=32) (actual time=40789.186..40789.186 rows=1 loops=1)
   Buffers: shared hit=5335 read=26537
   ->  Nested Loop  (cost=0.03..45912.74 rows=28943 width=17) (actual time=738.699..40786.137 rows=669 loops=1)
         Buffers: shared hit=5335 read=26537
         ->  Nested Loop  (cost=0.03..45778.95 rows=28943 width=21) (actual time=715.339..40750.826 rows=669 loops=1)
               Buffers: shared hit=3999 read=26535
               ->  Nested Loop  (cost=0.01..34634.50 rows=29863 width=25) (actual time=660.503..11323.924 rows=767 loops=1)
                     Buffers: shared hit=1814 read=20168
                     ->  Nested Loop  (cost=0.00..1200.28 rows=43168 width=4) (actual time=613.544..1584.685 rows=798 loops=1)
                           Join Filter: (ct.id = mc.company_type_id)
                           Rows Removed by Join Filter: 294830
                           Buffers: shared read=18790
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=19.297..19.299 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=172674 width=8) (actual time=26.394..1534.040 rows=295628 loops=1)
                                 Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                 Rows Removed by Filter: 2313501
                                 Buffers: shared read=18789
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.77 rows=1 width=21) (actual time=12.199..12.199 rows=1 loops=798)
                           Index Cond: (id = mc.movie_id)
                           Filter: (production_year > 1990)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=1814 read=1378
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=8) (actual time=35.130..38.359 rows=1 loops=767)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 10
                     Buffers: shared hit=2185 read=6367
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.046..0.046 rows=1 loops=669)
               Index Cond: (id = mi.info_type_id)
               Buffers: shared hit=1336 read=2
 Planning Time: 1690.001 ms
 Execution Time: 40810.386 ms

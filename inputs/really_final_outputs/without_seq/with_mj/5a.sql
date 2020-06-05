                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=665690.75..665690.75 rows=1 width=32) (actual time=22434.451..22434.451 rows=1 loops=1)
   Buffers: shared hit=87627 read=228763
   ->  Merge Join  (cost=642381.66..665690.74 rows=89 width=17) (actual time=22434.424..22434.424 rows=0 loops=1)
         Merge Cond: (t.id = mc.movie_id)
         Buffers: shared hit=87627 read=228763
         ->  Merge Join  (cost=619187.85..642515.73 rows=61864 width=25) (actual time=20307.959..20307.959 rows=1 loops=1)
               Merge Cond: (mi.movie_id = t.id)
               Buffers: shared hit=87623 read=202845
               ->  Sort  (cost=619187.84..619199.83 rows=154416 width=4) (actual time=19916.305..19916.305 rows=1 loops=1)
                     Sort Key: mi.movie_id
                     Sort Method: quicksort  Memory: 13358kB
                     Buffers: shared hit=87590 read=202427
                     ->  Merge Join  (cost=0.02..618774.55 rows=154416 width=4) (actual time=3155.851..19850.687 rows=153897 loops=1)
                           Merge Cond: (it.id = mi.info_type_id)
                           Buffers: shared hit=87586 read=202427
                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.20 rows=113 width=4) (actual time=0.012..0.054 rows=78 loops=1)
                                 Buffers: shared hit=2
                           ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..618742.92 rows=154416 width=8) (actual time=3155.818..19815.476 rows=153897 loops=1)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                                 Rows Removed by Filter: 14681823
                                 Buffers: shared hit=87584 read=202427
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=20.314..391.451 rows=193 loops=1)
                     Filter: (production_year > 2005)
                     Rows Removed by Filter: 254
                     Buffers: shared hit=33 read=418
         ->  Sort  (cost=23193.80..23193.89 rows=1047 width=4) (actual time=2126.461..2126.461 rows=0 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=4 read=25918
               ->  Merge Join  (cost=0.02..23192.17 rows=1047 width=4) (actual time=2126.447..2126.447 rows=0 loops=1)
                     Merge Cond: (ct.id = mc.company_type_id)
                     Buffers: shared hit=4 read=25918
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=2
                     ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=4187 width=8) (actual time=121.410..2121.908 rows=24025 loops=1)
                           Filter: ((note ~~ '%(theatrical)%'::text) AND (note ~~ '%(France)%'::text))
                           Rows Removed by Filter: 2585104
                           Buffers: shared hit=2 read=25918
 Planning Time: 1934.161 ms
 Execution Time: 22455.714 ms
(42 rows)


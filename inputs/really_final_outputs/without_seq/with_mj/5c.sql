                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=668903.97..668903.97 rows=1 width=32) (actual time=30633.416..30633.417 rows=1 loops=1)
   Buffers: shared hit=2568727 read=271185
   ->  Merge Join  (cost=645447.31..668901.72 rows=28943 width=17) (actual time=21633.892..30632.793 rows=669 loops=1)
         Merge Cond: (t.id = mi.movie_id)
         Buffers: shared hit=2568727 read=271185
         ->  Merge Join  (cost=23311.41..46670.57 rows=29863 width=25) (actual time=2679.887..11554.074 rows=767 loops=1)
               Merge Cond: (mc.movie_id = t.id)
               Buffers: shared hit=2481141 read=68758
               ->  Sort  (cost=23311.38..23314.73 rows=43168 width=4) (actual time=1962.751..1962.923 rows=798 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 62kB
                     Buffers: shared hit=8 read=25918
                     ->  Merge Join  (cost=0.02..23208.17 rows=43168 width=4) (actual time=1122.673..1957.173 rows=798 loops=1)
                           Merge Cond: (ct.id = mc.company_type_id)
                           Buffers: shared hit=4 read=25918
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.016..0.020 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=2
                           ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=172674 width=8) (actual time=8.732..1916.730 rows=295628 loops=1)
                                 Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                 Rows Removed by Filter: 2313501
                                 Buffers: shared hit=2 read=25918
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.020..9389.662 rows=1744819 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 773754
                     Buffers: shared hit=2481133 read=42840
         ->  Sort  (cost=622135.91..622190.69 rows=705579 width=4) (actual time=18952.747..18995.978 rows=704128 loops=1)
               Sort Key: mi.movie_id
               Sort Method: quicksort  Memory: 57702kB
               Buffers: shared hit=87586 read=202427
               ->  Merge Join  (cost=0.02..620007.29 rows=705579 width=4) (actual time=3056.632..18690.435 rows=706674 loops=1)
                     Merge Cond: (it.id = mi.info_type_id)
                     Buffers: shared hit=87586 read=202427
                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.20 rows=113 width=4) (actual time=0.010..0.049 rows=78 loops=1)
                           Buffers: shared hit=2
                     ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..619894.76 rows=705579 width=8) (actual time=3056.606..18561.641 rows=706674 loops=1)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 14129046
                           Buffers: shared hit=87584 read=202427
 Planning Time: 1685.080 ms
 Execution Time: 30699.001 ms
(42 rows)


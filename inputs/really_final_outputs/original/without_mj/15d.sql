                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=7467.60..7467.60 rows=1 width=64) (actual time=39994.511..39994.511 rows=1 loops=1)
   Buffers: shared hit=91083 read=167091
   ->  Nested Loop  (cost=0.08..7467.54 rows=414 width=38) (actual time=1872.668..39960.386 rows=11347 loops=1)
         Buffers: shared hit=91083 read=167091
         ->  Nested Loop  (cost=0.07..7461.66 rows=414 width=42) (actual time=1836.124..36859.903 rows=11347 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=46420 read=166344
               ->  Nested Loop  (cost=0.05..7459.85 rows=30 width=54) (actual time=1799.954..33312.784 rows=875 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 382
                     Buffers: shared hit=43487 read=165909
                     ->  Nested Loop  (cost=0.05..7459.79 rows=30 width=58) (actual time=1775.988..33285.753 rows=875 loops=1)
                           Join Filter: (at.movie_id = t.id)
                           Buffers: shared hit=43487 read=165908
                           ->  Nested Loop  (cost=0.04..7456.97 rows=44 width=37) (actual time=1724.326..27875.786 rows=896 loops=1)
                                 Buffers: shared hit=40387 read=165422
                                 ->  Nested Loop  (cost=0.03..7454.80 rows=122 width=41) (actual time=1669.492..18738.263 rows=2130 loops=1)
                                       Buffers: shared hit=32893 read=164384
                                       ->  Nested Loop  (cost=0.01..7445.69 rows=39 width=29) (actual time=1616.959..13553.443 rows=591 loops=1)
                                             Buffers: shared hit=31167 read=163377
                                             ->  Nested Loop  (cost=0.00..7257.36 rows=98 width=4) (actual time=1582.190..10281.124 rows=10679 loops=1)
                                                   Join Filter: (it1.id = mi.info_type_id)
                                                   Rows Removed by Join Filter: 131
                                                   Buffers: shared read=161893
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=2.848..2.866 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=11124 width=8) (actual time=125.408..10270.997 rows=10810 loops=1)
                                                         Filter: (note ~~ '%internet%'::text)
                                                         Rows Removed by Filter: 14824910
                                                         Buffers: shared read=161892
                                             ->  Index Scan using movie_id_aka_title on aka_title at  (cost=0.01..1.92 rows=2 width=25) (actual time=0.245..0.305 rows=0 loops=10679)
                                                   Index Cond: (movie_id = mi.movie_id)
                                                   Buffers: shared hit=31167 read=1484
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.23 rows=2 width=12) (actual time=7.163..8.763 rows=4 loops=591)
                                             Index Cond: (movie_id = at.movie_id)
                                             Buffers: shared hit=1726 read=1007
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=4.287..4.287 rows=0 loops=2130)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=7494 read=1038
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=6.033..6.033 rows=1 loops=896)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: (production_year > 1990)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=3100 read=486
                     ->  Materialize  (cost=0.00..0.03 rows=4 width=4) (actual time=0.028..0.028 rows=1 loops=875)
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=23.936..23.938 rows=2 loops=1)
                                 Buffers: shared read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=4.029..4.040 rows=13 loops=875)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=2933 read=435
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.272..0.272 rows=1 loops=11347)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=44663 read=747
 Planning Time: 8355.081 ms
 Execution Time: 40012.748 ms
(60 rows)

